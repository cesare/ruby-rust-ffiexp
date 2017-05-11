#[repr(C)]
pub struct Foo {
    value: i32
}

#[no_mangle]
pub extern fn create_foo() -> Foo {
    Foo {
        value: 42
    }
}

#[no_mangle]
pub extern fn foo_value(foo: Foo) -> i32 {
    foo.value
}
