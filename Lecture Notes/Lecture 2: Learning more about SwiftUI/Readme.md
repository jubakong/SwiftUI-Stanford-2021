# Lecture 2: Learning more about SwiftUI

HStack
- `ZStack`과 새로운 `struct`를 만들면 Viewtiful한 코드를 만들 수 있음

ContentView_Previews
- 2개의 `ContentView`를 가지고 `다크모드` 와 `화이트` 두개 모두를 비교할 수 있음

Type
- You don't have to explictly infer the type 
e.g., `let shape: RoundedRectangle = RoundedRectangle(cornerRadius: 20)` -> don't need a type tbh

property is immutable
- When changing a variable, it will rebuild and change the whole preview
- Add `@State` as pointer (somewhere in the memory)

Live Preview
- If you need to check if there's something changed such as `onTapGesture`, you can just you `Live Preview` which is located at top left of `preview`

Using `ForEach` loop and see error of ```Referencing initializer 'init(_:content:)' on 'ForEach' requires that 'String' conform to 'Identifiable```
- Array<String> should act like `Identifiable`
- Make it as `View` and reactively let them know which one is changed
- Need `id` arugment like `id: \self`
  
Spacer
  - Giving space as much as possible
  - Can be used with `Padding`

ViewBuilder
  
LazyVGrid (like `TableView`)
- Wait until the content is created (wait until accessing `body`)
  
ScrollView
  
Stroke vs StrokeBorder
