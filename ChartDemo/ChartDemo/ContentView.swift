//
//  ContentView.swift
//  ChartDemo
//
//  Created by Anand Upadhyay on 08/01/24.
//

import SwiftUI
import Charts
struct BarChartDemo: View {
    let weekDays = Calendar.current.shortWeekdaySymbols
    let temprature = [32.5,30,29.4,28.8,27,25.4,25.2]
    
    var body: some View {
        NavigationView { // <1>
            VStack {
                Image(systemName: "star")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Amazing Bar Chart Example for Weekly Weather Forceast!").multilineTextAlignment(.center)
                Chart{
                    ForEach(weekDays.indices,id: \.self){
                        index in
                        BarMark(
                            x: .value("Day", weekDays[index]),
                            y: .value("Temprature",temprature[index])
                        ).foregroundStyle(by: .value("Day", weekDays[index]))
                            .annotation{
                                Text("\(temprature[index])")
                            }
                    }
                }
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
