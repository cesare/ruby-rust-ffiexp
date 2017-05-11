require 'ffi'

module  Ffiexp
  extend FFI::Library
  ffi_lib "target/release/libffiexp.dylib"

  class Foo < FFI::Struct
    layout :value, :int
  end

  attach_function :create_foo, [], Foo.by_ref
  attach_function :foo_value, [Foo.by_ref], :int
end

foo = Ffiexp.create_foo
puts Ffiexp.foo_value(foo)
