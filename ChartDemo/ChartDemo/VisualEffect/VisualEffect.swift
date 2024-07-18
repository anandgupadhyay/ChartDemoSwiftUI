struct DynamicHueListView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                ForEach(0..<20, id: \.self) { _ in
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(.tint)
                        .frame(height: 100)
                        .visualEffect { content, proxy in
                            content
                                .rotationEffect(.degrees(proxy.frame(in: .global).origin.y / 45))
                                .hueRotation(.degrees(proxy.frame(in: .global).origin.y / 10))
                        }
                }
            }
            .padding()
        }
    }
}
