//
//  SensitivityAnalysisDemo.swift
//  ChartDemo
//
//  Created by Anand Upadhyay on 12/01/24.
//https://www.hackingwithswift.com/quick-start/swiftui/how-to-run-an-asynchronous-task-when-a-view-is-shown
//


import Foundation
import SwiftUI
import SensitiveContentAnalysis

struct SensitiveAnalysisView: View {
    @State var message: String = "Welcome to Sensitivity Test"
    @State var blueRadius = 20
    @State var imageName = "ranveer"
    var body: some View{
        VStack{
            Text(message).foregroundStyle(.orange)
            Image(imageName, label: Text("Ranveer")).blur(radius: CGFloat(blueRadius))
                .frame(width: 300, height:300, alignment: .center)
                .task {
//                    do {
                         await analyse(imageName: imageName)
//                    }
//                    catch{
//                        message = "Some Error"
//                    }
                }
            
        }.padding(10)
            
            .toolbar{
                Button("Reload"){
                    Task{
                        imageName = "puppy"
                        await analyse(imageName:imageName)
                    }
                }
            }
//            .onAppear{
//                await analyse(imageName: imageName)
//            }
    }
    
    func analyse(imageName: String)async{
        let analyser = SCSensitivityAnalyzer()
        let policy = analyser.analysisPolicy
        if policy == .disabled{
            return
        }
        
        //For video
//        let handler = analyser.videoAnalysis(forFileAt: localvideoFileUrl)
//        let response = try await hanlder.hasSensitiveContent()
        
        //For Image
        do {
            guard let sensitiveContentImage = UIImage(named: "ranveer") else{
                return
            }
            
            let response = try await analyser.analyzeImage(sensitiveContentImage.cgImage!)
            if response.isSensitive{
                blueRadius = 100
                message = "Sensitive Content \(imageName)"
            }else{
                blueRadius = 0
                message = "Safe for Work \(imageName)"
            }
            
        }catch{
            print(error.localizedDescription)
        }
    }
}

#Preview {
    NavigationStack{
//        NavigationLink {
//                DetailView()
//        } label: {
//            Text("Hello World")
//        }
        SensitiveAnalysisView()
    }.navigationTitle("Sensitivity Test")
}


struct DetailView: View {
    var body: some View {
        VStack {
            Text("Second View")
        }
        .onAppear {
            print("DetailView appeared!")
        }
        .onDisappear {
            print("DetailView disappeared!")
        }
    }
}

