#if defined(POLYMORPHIC_VALUE)
#include "polymorphic_value.h"
template <class T>
using member = polymorphic_value<T>;
#else
#include "indirect_value.h"
template <class T>
using member = indirect_value<T>;
#endif

class int_wrapper
{
private:
  member<class impl_t> impl_;

public:
  int_wrapper();

  int_wrapper(int x);

  ~int_wrapper();

  operator int() const;

  int_wrapper& operator++();
};
