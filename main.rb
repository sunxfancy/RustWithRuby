require 'ffi'

module Hello
    extend FFI::Library
    ffi_lib 'thread-rlib/target/release/libthread_rlib.so'
    attach_function :process, [], :void
end

Hello.process

puts "done!"
