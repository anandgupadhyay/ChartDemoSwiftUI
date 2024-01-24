//
//  FidgetSpiner.swift
//  ChartDemo
//
//  Created by Anand Upadhyay on 23/01/24.
//

import Foundation
import SwiftUI

struct FidgetSpinnerView: View {
    @State private var angle: Double = 0
    @State private var acceleration: Double = 0

    private let timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()

    var body: some View {
        
        ZStack {
            Color.black.ignoresSafeArea()
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [ .orange,.green]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .mask(
                    Image(systemName: "snowflake")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 400)
                        .rotationEffect(.degrees(angle))
                )
                .frame(width: 400, height: 400)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            if (acceleration>50){
                                acceleration -= value.translation.height / 100
                            }else{
                                acceleration += value.translation.height / 10
                            }
                        }
                )
                .foregroundColor(.red)
                .onReceive(timer) { _ in
//                    acceleration += (acceleration * 0.01)
                    angle += acceleration/1000
                    print(angle)
                    

//                    if angle < 50 {
//                        angle += acceleration
//                    }
//                    else if angle > 50{
//                        angle -= acceleration
//                    }else
//                    {
//                        angle = angle
//                    }
                }
            }
        }
    }
}


struct FidgetSpinnerView_Previews: PreviewProvider {
    static var previews: some View {
        FidgetSpinnerView()
    }
}
