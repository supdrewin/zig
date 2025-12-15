const print = @import("std").debug.print;

pub fn main() void {
    // Comments in Zig start with "//" and end at the next LF byte (end of line).
    // The line below is a comment and won't be exeuted.

    // print("hello?", .{});

    print("Hello, World!\n", .{}); // another comment
}
