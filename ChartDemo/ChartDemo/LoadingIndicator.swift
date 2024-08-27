@State
var CurrentIndex = 0
let colors:
[Color] = [.blue, -green, yellow, yellow, red]
HStack(spacing: 6) {
ForEach(0..<5) { index in
RoundedRectangle(cornerRadius: 20)
• fill(colors [index])
•frame (width: 4, height: CurrentIndex == index ? 80 : 5)
•animation(-spring (duration: 0.9), value: CurrentIndex)
}
}
• onAppear {
startAnimation()
}
func startAnimation() {
Timer.scheduledTimer(withTimeInterval:0.25, repeats: true) { timer in
CurrentIndex = (CurrentIndex + 1) $ 5
}
}
