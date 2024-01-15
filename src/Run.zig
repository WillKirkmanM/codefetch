const std = @import("std");
const ChildProcess = std.ChildProcess;

pub fn run() anyerror!void {
  const result = try ChildProcess.exec(.{
    .allocator = std.heap.page_allocator,
    .argv = &[_][]const u8{ "cmd", "/c", "echo", "hello world" }
  });

  std.debug.print("{s}\n", .{result.stdout});
}