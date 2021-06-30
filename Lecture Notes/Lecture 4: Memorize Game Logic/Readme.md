# Lecture 4: Memorize Game Logic

Identifable
- `ForEach`구문에서의 Hashable을 위한 id값을 위해 셋팅

@ObservableObject, @Published, @ObservedObject
- `ViewModel` `class` 를 `ObservableObject`를 `conform` 시킨다.
- `model`의 값이 바뀔때마다 `@Published` 시킨다.
- `View`단에서 `viewModel`앞에 `@ObservedObject`키워드를 추가 시킨다.
