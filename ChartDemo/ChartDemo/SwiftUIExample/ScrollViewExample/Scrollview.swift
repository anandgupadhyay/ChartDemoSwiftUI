import SwiftUI
import Combine

struct ScrollViewTest: View {
    
    @StateObject var scrollViewHelper = ScrollViewHelper()
    
    var body: some View {
        
        ScrollView {
            ZStack {
                
                VStack(spacing: 20) {
                    ForEach(0...100, id: \.self) { i in
                        Rectangle()
                            .frame(width: 200, height: 100)
                            .foregroundColor(.green)
                            .overlay(Text("\(i)"))
                    }
                }
                .frame(maxWidth: .infinity)
                
                GeometryReader {
                    let offset = -$0.frame(in: .named("scroll")).minY
                    Color.clear.preference(key: ViewOffsetKey.self, value: offset)
                }
                
            }
            
        }.coordinateSpace(name: "scroll")
        .onPreferenceChange(ViewOffsetKey.self) {
            scrollViewHelper.currentOffset = $0
        }.onReceive(scrollViewHelper.$offsetAtScrollEnd) {
            print($0)
        }
        
    }
    
}

class ScrollViewHelper: ObservableObject {
    
    @Published var currentOffset: CGFloat = 0
    @Published var offsetAtScrollEnd: CGFloat = 0
    
    private var cancellable: AnyCancellable?
    
    init() {
        cancellable = AnyCancellable($currentOffset
                                        .debounce(for: 0.2, scheduler: DispatchQueue.main)
                                        .dropFirst()
                                        .assign(to: \.offsetAtScrollEnd, on: self))
    }
    
}

struct ViewOffsetKey: PreferenceKey {
    static var defaultValue = CGFloat.zero
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value += nextValue()
    }
}
