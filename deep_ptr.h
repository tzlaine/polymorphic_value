#include <type_traits>
#include <cassert>

template <typename T> struct control_block {
  virtual ~control_block() = default;
  virtual std::unique_ptr<control_block> clone() const = 0;
  virtual T* release() = 0;
  virtual T *ptr() = 0;
};

template <typename T, typename U>
class control_block_impl : public control_block<T> {
  U *p_ = nullptr;

public:
  explicit control_block_impl(U *p) : p_(p) {}

  ~control_block_impl() { delete p_; }

  std::unique_ptr<control_block<T>> clone() const override {
    return std::make_unique<control_block_impl>(new U(*p_));
  }

  T *release() override {
    T *p = p_;
    p_ = nullptr;
    return p;
  }

  T *ptr() override { return p_; }
};

template <typename T, typename U>
class delegating_control_block : public control_block<T> {

  std::unique_ptr<control_block<U>> delegate_;

public:
  explicit delegating_control_block(std::unique_ptr<control_block<U>> b)
      : delegate_(std::move(b)) {}

  std::unique_ptr<control_block<T>> clone() const override {
    return std::make_unique<delegating_control_block>(delegate_->clone());
  }

  T* release() override { return delegate_->release(); }

  T *ptr() override { return delegate_->ptr(); }
};

template <typename T, typename U>
class downcasting_delegating_control_block : public control_block<T> {

  std::unique_ptr<control_block<U>> delegate_;

public:
  explicit downcasting_delegating_control_block(std::unique_ptr<control_block<U>> b)
      : delegate_(std::move(b)) {}

  std::unique_ptr<control_block<T>> clone() const override {
    return std::make_unique<delegating_control_block>(delegate_->clone());
  }

  T* release() override { return delegate_->release(); }

  T *ptr() override { return static_cast<T>(delegate_->ptr()); }
};

template <typename T, typename U>
class const_casting_delegating_control_block : public control_block<T> {

  std::unique_ptr<control_block<U>> delegate_;

public:
  explicit const_casting_delegating_control_block(std::unique_ptr<control_block<U>> b)
      : delegate_(std::move(b)) {}

  std::unique_ptr<control_block<T>> clone() const override {
    return std::make_unique<delegating_control_block>(delegate_->clone());
  }

  T* release() override { return delegate_->release(); }

  T *ptr() override { return const_cast<T>(delegate_->ptr()); }
};

template <typename T> class deep_ptr {

  template <typename U> friend class deep_ptr;
  template <typename T_, typename U> friend deep_ptr<U> std::const_pointer_cast(const deep_ptr<T_>& p);
  template <typename T_, typename U> friend deep_ptr<U> std::static_pointer_cast(const deep_ptr<T_>& p);

  T *ptr_ = nullptr;
  std::unique_ptr<control_block<T>> cb_;

public:
  ~deep_ptr() = default;

  //
  // Constructors
  //

  deep_ptr() {}

  deep_ptr(std::nullptr_t) : deep_ptr() {}

  template <typename U,
            typename V = std::enable_if_t<std::is_base_of<T, U>::value>>
  explicit deep_ptr(U *u) {
    if (!u) {
      return;
    }

    cb_ = std::make_unique<control_block_impl<T, U>>(u);
    ptr_ = u;
  }

  //
  // Copy-constructors
  //

  deep_ptr(const deep_ptr &p) {
    if (!p) {
      return;
    }
    auto tmp_cb = p.cb_->clone();
    ptr_ = tmp_cb->ptr();
    cb_ = std::move(tmp_cb);
  }

  template <typename U,
            typename V = std::enable_if_t<!std::is_same<T, U>::value &&
                                          std::is_base_of<T, U>::value>>
  deep_ptr(const deep_ptr<U> &p) {
    deep_ptr<U> tmp(p);
    ptr_ = tmp.ptr_;
    cb_ = std::make_unique<delegating_control_block<T, U>>(std::move(tmp.cb_));
  }

  //
  // Move-constructors
  //

  deep_ptr(deep_ptr &&p) {
    ptr_ = p.ptr_;
    cb_ = std::move(p.cb_);
    p.ptr_ = nullptr;
  }

  template <typename U,
            typename V = std::enable_if_t<!std::is_same<T, U>::value &&
                                          std::is_base_of<T, U>::value>>
  deep_ptr(deep_ptr<U> &&p) {
    ptr_ = p.ptr_;
    cb_ = std::make_unique<delegating_control_block<T, U>>(std::move(p.cb_));
    p.ptr_ = nullptr;
  }

  //
  // Assignment
  //

  deep_ptr &operator=(const deep_ptr &p) {
    if (&p == this) {
      return *this;
    }

    if (!p) {
      cb_.reset();
      ptr_ = nullptr;
      return *this;
    }

    auto tmp_cb = p.cb_->clone();
    ptr_ = tmp_cb->ptr();
    cb_ = std::move(tmp_cb);
    return *this;
  }

  template <typename U,
            typename V = std::enable_if_t<!std::is_same<T, U>::value &&
                                          std::is_base_of<T, U>::value>>
  deep_ptr &operator=(const deep_ptr<U> &p) {
    deep_ptr<U> tmp(p);
    *this = std::move(tmp);
    return *this;
  }

  //
  // Move-assignment
  //

  deep_ptr &operator=(deep_ptr &&p) {
    if (&p == this) {
      return *this;
    }

    cb_ = std::move(p.cb_);
    ptr_ = p.ptr_;
    p.ptr_ = nullptr;
    return *this;
  }

  template <typename U,
            typename V = std::enable_if_t<!std::is_same<T, U>::value &&
                                          std::is_base_of<T, U>::value>>
  deep_ptr &operator=(deep_ptr<U> &&p) {
    cb_ = std::make_unique<delegating_control_block<T, U>>(std::move(p.cb_));
    ptr_ = p.ptr_;
    p.ptr_ = nullptr;
    return *this;
  }

  //
  // Modifiers
  //

  T *release() {
    if (!ptr_) {
      return nullptr;
    }
    ptr_ = nullptr;
    return cb_->release();
  }

  template <typename U = T,
            typename V = std::enable_if_t<std::is_base_of<T, U>::value>>
  void reset(U *u = nullptr) {
    if (static_cast<T *>(u) == ptr_) {
      return;
    }
    deep_ptr<U> tmp(u);
    *this = std::move(tmp);
  }

  void swap(deep_ptr &p) {
    std::swap(ptr_, p.ptr_);
    std::swap(cb_, p.cb_);
  }

  //
  // Accessors
  //

  operator bool() const { return ptr_; }

  T *operator->() const { return get(); }

  T *get() const { return ptr_; }

  T &operator*() const {
    assert(ptr_);
    return *get();
  }
};

template <typename T, typename... Ts> deep_ptr<T> make_deep_ptr(Ts &&... ts) {
  return deep_ptr<T>(new T(std::forward<Ts>(ts)...));
}

//
// Casts
//
//
namespace std {

template <typename T, typename U> deep_ptr<U> static_pointer_cast(const deep_ptr<T>& p)
{
  deep_ptr<T> tmp(p);
  deep_ptr<U> u;

  u.ptr_ = static_cast<U*>(tmp.ptr_);
  u.cb_ = std::make_unique<downcasting_delegating_control_block<U,T>>(std::move(tmp.cb_));

  return u;
}

template <typename T, typename U> deep_ptr<U> dynamic_pointer_cast(const deep_ptr<T>& p)
{
  auto pu = dynamic_cast<U*>(p.get());
  if (!pu) {
    return nullptr;
  }

  return static_pointer_cast<U>(p);
}

template <typename T, typename U> deep_ptr<U> const_pointer_cast(const deep_ptr<T>& p)
{
  deep_ptr<T> tmp(p);
  deep_ptr<U> u;

  u.ptr_ = static_cast<U*>(tmp.ptr_);
  u.cb_ = std::make_unique<const_casting_delegating_control_block<U,T>>(std::move(tmp.cb_));

  return u;
}

} // end namespace std
