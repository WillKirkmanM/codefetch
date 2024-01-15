const std = @import("std");
const editor = @import("Editor.zig");

pub fn main() !void {
  try editor.editor();
}