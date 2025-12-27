const Treshold = struct {
    minimum: f32 = 0.25,
    maximum: f32 = 0.75,

    const Category = enum { low, medium, high };

    fn categorize(t: Treshold, value: f32) Category {
        assert(t.maximum >= t.minimum);
        if (value < t.minimum) return .low;
        if (value > t.maximum) return .high;
        return .medium;
    }
};

pub fn main() !void {
    var threshold: Treshold = .{
        .maximum = 0.20,
    };
    const category = threshold.categorize(0.90);
    try std.fs.File.stdout().writeAll(@tagName(category));
}

const std = @import("std");
const assert = std.debug.assert;
