#include "pimply.h"

class impl_t final
{
public:
  int x_ = 0;
};

int_wrapper::int_wrapper() : impl_(impl_t())
{
}

int_wrapper::int_wrapper(int x) : impl_(impl_t())
{
  impl_->x_ = x;
}

int_wrapper::~int_wrapper() = default;

int_wrapper::operator int() const
{
  return impl_->x_;
}

int_wrapper& int_wrapper::operator++()
{
  ++impl_->x_;
  return *this;
}

