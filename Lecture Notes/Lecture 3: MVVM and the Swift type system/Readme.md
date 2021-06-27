
MVVM
- `Model - View - ViewModel`
- A `code organizing`  architectural design paradigm
- Must be adhered to for SwiftUI to work
- it is different from MVC (Model View Controller) that UIKit (old-style iOS) uses


Model
- UI Independent
- Data + Logic
- "The Truth"

ViewModel
- Binds View to Model
- Interpreter
- GateKeeper
- @ObservableObject
- @Published
- objectWillChange.send()

View
- Reflects the Model
- Stateless
- Declared
- Reactive
- @observedObject
- @Binding
- .onReceive
- @EnvironmentObject
- .environmentObject()

<img width="1786" alt="스크린샷 2021-06-28 오전 12 35 21" src="https://user-images.githubusercontent.com/52398126/123550501-bb319b00-d7a8-11eb-8b30-1850f2c5757c.png">

