const std = @import("std");

const windows = @import("./Windows.zig");

pub fn getCurrentEditor() {
    const processes = windows.getProcesses();
    std.debug.print(processes, args: anytype);
}
