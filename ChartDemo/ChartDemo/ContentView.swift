//
//  ContentView.swift
//  ChartDemo
//
//  Created by Anand Upadhyay on 08/01/24.
//

import SwiftUI

struct BarChartDemo: View {
    let weekDays = Calendar.current.shortWeekdaySymbols
    let temprature = [32.5,30,29.4,28.8,27,25.4,25.2]
    
    var body: some View {
        NavigationView { // <1>
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()               .navigationBarTitleDisplayMode(.inline)
                .toolbar { // <2>
                    ToolbarItem(placement: .principal) { // <3>
                        VStack {
                            Text("Chart Demo").font(.headline)
                            Text("Bar").font(.subheadline)
                        }
                    }
                }
        }
        
        
    }
}

#Preview {
    BarChartDemo()
}
