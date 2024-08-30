import SwiftUI

/// Represents Apple's "Hello" greeting.
/// Requires .frame(width: 1212, height: 401) canvas to display correctly
struct HelloShape: Shape {
  func path(in rect: CGRect) -> Path {

    var shape = Path()
    shape.move(to: CGPoint(x: 18, y: 362.78))
    shape.addCurve(to: CGPoint(x: 255.5, y: 72.78), control1: CGPoint(x: 123.36, y: 301.04), control2: CGPoint(x: 240.76, y: 204.38))
    shape.addCurve(to: CGPoint(x: 179, y: 54.78), control1: CGPoint(x: 262.5, y: 10.28), control2: CGPoint(x: 199.46, y: -0.39))
    shape.addCurve(to: CGPoint(x: 141.07, y: 305.25), control1: CGPoint(x: 162.5, y: 99.28), control2: CGPoint(x: 150.57, y: 238.42))
    shape.addCurve(to: CGPoint(x: 129.5, y: 381.28), control1: CGPoint(x: 131.57, y: 372.09), control2: CGPoint(x: 129.5, y: 381.28))
    shape.addCurve(to: CGPoint(x: 178.5, y: 232.28), control1: CGPoint(x: 135.33, y: 342.45), control2: CGPoint(x: 151.5, y: 264.28))
    shape.addCurve(to: CGPoint(x: 273, y: 246.78), control1: CGPoint(x: 208.17, y: 197.11), control2: CGPoint(x: 265.98, y: 188.51))
    shape.addCurve(to: CGPoint(x: 277.5, y: 371.28), control1: CGPoint(x: 278, y: 288.28), control2: CGPoint(x: 250, y: 350.28))
    shape.addCurve(to: CGPoint(x: 403, y: 354.78), control1: CGPoint(x: 305, y: 392.28), control2: CGPoint(x: 374, y: 374.28))
    shape.addCurve(to: CGPoint(x: 421.87, y: 342.93), control1: CGPoint(x: 412.67, y: 348.93), control2: CGPoint(x: 421.87, y: 342.93))

    shape.move(to: CGPoint(x: 409, y: 351.82))
    shape.addCurve(to: CGPoint(x: 403, y: 220.78), control1: CGPoint(x: 369, y: 321.59), control2: CGPoint(x: 374.5, y: 253.5))
    shape.addCurve(to: CGPoint(x: 488.5, y: 262), control1: CGPoint(x: 440.44, y: 177.79), control2: CGPoint(x: 505.19, y: 203.31))
    shape.addCurve(to: CGPoint(x: 421.84, y: 342.95), control1: CGPoint(x: 477.63, y: 300.24), control2: CGPoint(x: 447.95, y: 327.28))

    shape.move(to: CGPoint(x: 398.5, y: 341.78))
    shape.addCurve(to: CGPoint(x: 594, y: 325.28), control1: CGPoint(x: 425, y: 377.28), control2: CGPoint(x: 514.8, y: 408.48))
    shape.addCurve(to: CGPoint(x: 608, y: 310.28), control1: CGPoint(x: 602.55, y: 316.3), control2: CGPoint(x: 608, y: 310.28))

    shape.move(to: CGPoint(x: 608, y: 310.28))
    shape.addCurve(to: CGPoint(x: 694.5, y: 159.78), control1: CGPoint(x: 630.33, y: 282.11), control2: CGPoint(x: 678.5, y: 216.98))
    shape.addCurve(to: CGPoint(x: 691.5, y: 24.78), control1: CGPoint(x: 714.5, y: 88.28), control2: CGPoint(x: 718.5, y: 37.78))
    shape.addCurve(to: CGPoint(x: 608, y: 133), control1: CGPoint(x: 661.5, y: 10.33), control2: CGPoint(x: 624.5, y: 50.5))
    shape.addCurve(to: CGPoint(x: 594, y: 265.78), control1: CGPoint(x: 596.38, y: 191.12), control2: CGPoint(x: 594, y: 221.78))

    shape.move(to: CGPoint(x: 594, y: 267.78))
    shape.addCurve(to: CGPoint(x: 668, y: 382.78), control1: CGPoint(x: 593.17, y: 304.78), control2: CGPoint(x: 604, y: 381.18))
    shape.addCurve(to: CGPoint(x: 818, y: 280.78), control1: CGPoint(x: 742.5, y: 384.64), control2: CGPoint(x: 794.83, y: 315.28))

    shape.move(to: CGPoint(x: 819.5, y: 278.28))
    shape.addCurve(to: CGPoint(x: 888, y: 121.78), control1: CGPoint(x: 839.5, y: 247.28), control2: CGPoint(x: 873.66, y: 178.95))
    shape.addCurve(to: CGPoint(x: 873, y: 25.28), control1: CGPoint(x: 904.5, y: 56), control2: CGPoint(x: 895.71, y: 33.07))
    shape.addCurve(to: CGPoint(x: 797, y: 121.78), control1: CGPoint(x: 844.5, y: 15.5), control2: CGPoint(x: 812.5, y: 54.28))
    shape.addCurve(to: CGPoint(x: 786, y: 316.78), control1: CGPoint(x: 782.85, y: 183.39), control2: CGPoint(x: 768, y: 264.78))

    shape.move(to: CGPoint(x: 779.5, y: 287))
    shape.addCurve(to: CGPoint(x: 856, y: 382.28), control1: CGPoint(x: 783, y: 329), control2: CGPoint(x: 815.44, y: 380.6))
    shape.addCurve(to: CGPoint(x: 972, y: 268.28), control1: CGPoint(x: 909.5, y: 384.5), control2: CGPoint(x: 947.5, y: 343.78))

    shape.move(to: CGPoint(x: 972.5, y: 268.28))
    shape.addCurve(to: CGPoint(x: 1034.5, y: 381.78), control1: CGPoint(x: 960, y: 321.78), control2: CGPoint(x: 971.7, y: 384.58))
    shape.addCurve(to: CGPoint(x: 1115, y: 285.78), control1: CGPoint(x: 1097.3, y: 378.98), control2: CGPoint(x: 1114.33, y: 316.61))
    shape.addCurve(to: CGPoint(x: 1048, y: 199.78), control1: CGPoint(x: 1117.83, y: 256.28), control2: CGPoint(x: 1107.6, y: 199.78))

    shape.move(to: CGPoint(x: 973.5, y: 262.78))
    shape.addCurve(to: CGPoint(x: 1044.5, y: 199.78), control1: CGPoint(x: 979.5, y: 241.78), control2: CGPoint(x: 1002.1, y: 199.78))
    shape.addCurve(to: CGPoint(x: 1131.5, y: 224.28), control1: CGPoint(x: 1097.5, y: 199.78), control2: CGPoint(x: 1093.5, y: 225.28))
    shape.addCurve(to: CGPoint(x: 1194, y: 192.28), control1: CGPoint(x: 1161.9, y: 223.48), control2: CGPoint(x: 1185.83, y: 202.61))

    return shape
  }
}

extension ShapeStyle where Self == AngularGradient {
  static var hello: some ShapeStyle {
    LinearGradient(
      stops: [
        .init(color: .blue, location: 0.0),
        .init(color: .purple, location: 0.2),
        .init(color: .red, location: 0.4),
        .init(color: .mint, location: 0.5),
        .init(color: .indigo, location: 0.7),
        .init(color: .pink, location: 0.9),
        .init(color: .blue, location: 1.0)
      ],
      startPoint: .leading,
      endPoint: .trailing
    )
  }
}

struct GlowingSnake<
  Content: Shape,
  Fill: ShapeStyle
>: View, Animatable {

  var progress: Double
  var delay: Double = 1.0
  var fill: Fill
  var lineWidth = 4.0
  var blurRadius = 8.0

  @ViewBuilder var shape: Content
  
  var animatableData: Double {
    get { progress }
    set { progress = newValue }
  }
  
  var body: some View {
    shape
      .trim(
        from: {
          if progress > 1 - delay {
            2 * progress - 1.0
          } else if progress > delay {
            progress - delay
          } else {
            .zero
          }
        }(),
        to: progress
      )
      .glow(
        fill: fill,
        lineWidth: lineWidth,
        blurRadius: blurRadius
      )
  }
}

private struct Hello_Example: View {
  @State private var progress: Double = 0.0

  var body: some View {
    GlowingSnake(
      progress: progress,
      fill: .hello,
      lineWidth: 16.0,
      blurRadius: 8.0,
      shape: { HelloShape() }
    )
    .onAppear {
      withAnimation(
        .easeInOut(duration: 4.0)
      ) {
        progress = 1.0
      }
    }
  }
}

#Preview {
  Hello_Example()
    .frame(width: 1212.0, height: 401.0)
}
