# Lecture 1: Getting started with SwiftUI

Summary

SwiftUI
- OOP
- Functional programming
- SwiftUI is a package which enable you to consturct UI with `View` data structure 
- Every rectangular area is designed as `View`

struct 
- collections of 

`var body: some View`
- consider it as a `Lego` to build tools
- Combiner Views

some View
- return various content type as `View`f

Functional Programming
- Functions are first class citizens
- Functions are everywhere and usually `return` something
- Functions of SwiftUI has argument labels. e.g.,`RoundedRectangle(cornerRadius:20)`

Text
- Another `struct` act like a `View`

Padding
- just a function existed in all struct `View`
- `view modifiers` e.g., `Text("Hello, World!").padding()` -> make `Text` as `View`

RoundedRectangle
- `fill()`
- `Stroke()`

ZStack
- containsf `content`
- listView
- return lines of code as `TupleView`
- stacking them towards users e.g., A image in a rectangle

Trailing Closure
- `Last argument` which contains a function can be `omitted`
- Professor says purely better look :)
