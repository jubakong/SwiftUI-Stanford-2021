# Lecture 5: Properties Layout @ViewBuilder

@State
- private  
- rebuild its body when your model is changed
- stored in the `heap`

Access Control
- private

Computed Property
- Calculation

Property Observer
- `didSet` `willSet`

Layout
- Spaces on sccreen? 
```
1. Container Views "offer" space to the Views inside them
2. Views then choose what size they wanna be
3. Container Views then position the Views inside of them
4. (and based on that, Container Views choose their own size as per #2 above)
```

HStack and VStack
- The stack moves on next to  `least flexible`
- `Spacer(minLength: CGFloat)`
- `Divider()` - draws a vertical line
