//
//  CanvasDrawing.swift
//  ChartDemo
//
//  Created by Anand Upadhyay on 04/03/24.
//

import Foundation
import SwiftUI
import PencilKit

struct DrawingView: View {
    private var canvasView = PKCanvasView()

    var body: some View {
        MyCanvas(canvasView: canvasView)
    }
}

struct MyCanvas: UIViewRepresentable {
    var canvasView: PKCanvasView
    let picker = PKToolPicker.init()

    func makeUIView(context: Context) -> PKCanvasView {
        self.canvasView.tool = PKInkingTool(.pen, color: .black, width: 15)
        self.canvasView.becomeFirstResponder()
        self.canvasView.backgroundColor = .clear
        return canvasView
    }

    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        picker.addObserver(canvasView)
        picker.setVisible(true, forFirstResponder: uiView)
        DispatchQueue.main.async {
            uiView.becomeFirstResponder()
        }
    }
}

struct WonderFile001: View {
    @State var animate: Bool = false

     func earShape() -> some View {
        return ZStack {
            GeometryReader { r in
                Image("bunny", bundle: Bundle.main)
                .resizable()
                .frame(width: r.size.width, height: r.size.height)
                .scaledToFit()
                DrawingView()
                    .frame(width: r.size.width, height: r.size.height)
            }
        }.offset(y:-40)
    }

    var body: some View {

              VStack {
                ZStack {
                    earShape().ignoresSafeArea()
                }
             }
            //.background(Config().background)
            .background(Rectangle())

    }
}

//struct WonderFile001Preview: PreviewProvider {
#Preview {
//    static var previews: some View {
    WonderFile001()
//    }
}
