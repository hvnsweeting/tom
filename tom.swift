#!/usr/bin/env swift
import Cocoa

let arguments = CommandLine.arguments
print("Hello, World!")
print(arguments)

var direction = 0
var current = NSEvent.mouseLocation
while 1 < 1000 {
  current = NSEvent.mouseLocation
  if direction == 0 {
    print(current)
    CGDisplayMoveCursorToPoint(CGMainDisplayID(), CGPoint(x: current.x, y: (current.y + 10)))
    print(NSEvent.mouseLocation)
    direction = 1
  } else {
    print(current)
    CGDisplayMoveCursorToPoint(CGMainDisplayID(), CGPoint(x: current.x, y: (current.y - 10)))
    print(NSEvent.mouseLocation)
    direction = 0
  }
  print("moved")
  sleep(10)
}
