#pragma once

#include <cassert>
#include <memory>


////////////////////////////////////////////////////////////////////////////////
// `indirect_value` class definition
////////////////////////////////////////////////////////////////////////////////

template <class T>
class indirect_value
{
  std::unique_ptr<T> ptr_;
  T* p_ = nullptr;

public:
  //
  // Destructor
  //

  ~indirect_value() = default;


  //
  // Constructors
  //

  indirect_value()
  {
  }

  //
  // Copy-constructors
  //

  indirect_value(const indirect_value& p)
  {
    if (!p)
    {
      return;
    }
    ptr_ = std::make_unique<T>(*p.ptr_);
    p_ = ptr_.get();
  }

  indirect_value(const T& t) : ptr_(std::make_unique<T>(t))
  {
    p_ = ptr_.get();
  }


  //
  // Move-constructors
  //

  indirect_value(indirect_value&& p) noexcept
  {
    ptr_ = std::move(p.ptr_);
    p_ = ptr_.get();
  }

  indirect_value(T&& t) : ptr_(std::make_unique<T>(std::move(t)))
  {
    p_ = ptr_.get();
  }


  //
  // Assignment
  //

  indirect_value& operator=(const indirect_value& p)
  {
    if (!p)
    {
      ptr_ = nullptr;
    }
    else
    {
      ptr_ = std::make_unique<T>(*p.ptr_);
    }
    p_ = ptr_.get();
    return *this;
  }

  indirect_value& operator=(const T& t)
  {
    ptr_ = std::make_unique<T>(t);
    p_ = ptr_.get();
    return *this;
  }


  //
  // Move-assignment
  //

  indirect_value& operator=(indirect_value&& p)
  {
    if (!p)
    {
      ptr_ = nullptr;
    }
    else
    {
      ptr_ = std::make_unique<T>(std::move(*p.ptr_));
    }
    p_ = ptr_.get();
    return *this;
  }

  indirect_value& operator=(T&& t)
  {
    ptr_ = std::make_unique<T>(std::move(t));
    p_ = ptr_.get();
    return *this;
  }

  //
  // Modifiers
  //

  void swap(indirect_value& p) noexcept
  {
    using std::swap;
    swap(ptr_, p.ptr_);
    swap(p_, p.p_);
  }


  //
  // Observers
  //

  explicit operator bool() const
  {
    return bool(ptr_);
  }

  const T* operator->() const
  {
    assert(ptr_);
    return ptr_.get();
  }

  const T& value() const
  {
    assert(ptr_);
    return *ptr_;
  }

  const T& operator*() const
  {
    assert(ptr_);
    return *ptr_;
  }

  T* operator->()
  {
    assert(ptr_);
    return ptr_.get();
  }

  T& value()
  {
    assert(ptr_);
    return *ptr_;
  }

  T& operator*()
  {
    assert(ptr_);
    return *ptr_;
  }
};

//
// indirect_value creation
//
template <class T, class... Ts>
indirect_value<T> make_indirect_value(Ts&&... ts)
{
  indirect_value<T> p;
  p.ptr_ = std::make_unique<T>(std::forward<Ts>(ts)...);
  return p;
}

//
// non-member swap
//
template <class T>
void swap(indirect_value<T>& t, indirect_value<T>& u) noexcept
{
  t.swap(u);
}

