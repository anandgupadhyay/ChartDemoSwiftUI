//
//  SensitivityAnalysisDemo.swift
//  ChartDemo
//
//  Created by Anand Upadhyay on 12/01/24.
//https://www.hackingwithswift.com/quick-start/swiftui/how-to-run-an-asynchronous-task-when-a-view-is-shown
//


extension UIDevice {
    static var isSimulator: Bool {
            return TARGET_OS_SIMULATOR != 0
        }

//    var isSimulator: Bool {
//        #if IOS_SIMULATOR
//            return true
//        #else
//            return false
//        #endif
//    }
}

import Foundation
import SwiftUI
import SensitiveContentAnalysis

struct SensitiveAnalysisView: View {
    @State var message: String = "Welcome to Sensitivity Test"
    @State var blueRadius = UIDevice.isSimulator ? 100 : 0
    @State var imageName = "ranveer"
    var body: some View{
        NavigationView {
        List{
            Image(imageName, label: Text("Ranveer")).blur(radius: CGFloat(blueRadius))
                .frame(width: 200.0, height: 200.0)
            VStack{
                HStack(spacing: 100) {
                    
                    Button {
                        
                    } label: {
                        Text("Puppy")
                            .font(.largeTitle)
                    }.onTapGesture {
                        Task {
                            imageName = "puppy"
                            await checkSensitivity(imageName: imageName)
                        }
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Ranveer")
                            .font(.largeTitle)
                    }.onTapGesture {
                        Task {
                            imageName = "ranveer"
                            await checkSensitivity(imageName: imageName)
                        }
                    }
                }
                //            Text(message).foregroundStyle(.orange)
                //            Image(imageName, label: Text("Ranveer")).blur(radius: CGFloat(blueRadius))
                //            }
                Text(message).foregroundStyle(.red).font(.title2)
                    .padding(.bottom, 50)
                
            }.padding(10)
        }.onAppear(perform: {
            Task{
                await checkSensitivity(imageName: imageName)
            }
        })
        .toolbar{
            Button("Deails"){
                //                    NavigationLink {
//                DetailView()
                //            } label: {
                //                    Text("Hello World")
                //            }
                
            }
            
        }
        //                Button ("Ranveer"){
        //                    Task{
        //                        imageName = "ranveer"
        //                        await analyse(imageName:imageName)
        //                    }
        //                }
        //            }
        //            .onAppear{
        //                await analyse(imageName: imageName)
        //            }
    }
}
    
    func checkSensitivity(imageName: String)async{
        let analyser = SCSensitivityAnalyzer()
        let policy = analyser.analysisPolicy
        if policy == .disabled{
            print("Disabled")
            return
        }
        
        //For video
//        let handler = analyser.videoAnalysis(forFileAt: localvideoFileUrl)
//        let response = try await hanlder.hasSensitiveContent()
        
        //For Image
        do {
            guard let sensitiveContentImage = UIImage(named: imageName) else{
                print("No Image")
                return
            }
            
            let response = try await analyser.analyzeImage(sensitiveContentImage.cgImage!)
            if response.isSensitive{
                blueRadius = 100
                message = "Sensitive Content \(imageName)"
                print(message)
            }else{
                blueRadius = 0
                message = "Safe for Work \(imageName)"
                print(message)
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

