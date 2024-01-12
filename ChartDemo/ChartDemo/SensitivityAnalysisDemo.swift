//
//  SensitivityAnalysisDemo.swift
//  ChartDemo
//
//  Created by Anand Upadhyay on 12/01/24.
//

import Foundation
import SwiftUI
import SensitiveContentAnalysis

struct SensitiveAnalysisView: View {
    var body: some View{
        VStack{
            Text("Sensiive Content Analysis Demo").foregroundStyle(.orange)
//            Image("ranveer", label: Text("Ranveer"))
                
        }.padding(10)
            
    }
    
    func analyse(imageName: String){
        let analyser = SCSensitivityAnalyzer()
        let policy = analyser.analysisPolicy
        if policy == .disabled{
            return
        }
        
        //For video
//        let handler = analyser.videoAnalysis(forFileAt: localvideoFileUrl)
//        let response = try await hanlder.hasSensitiveContent()
        
        //For Image
        
        guard let sensitiveContentImage = UIImage(named: "ranveer")
//                let response = try await analyser.analyzeImage(sensitiveContentImage.cgImage)
        
    }
}

#Preview {
    SensitiveAnalysisView()
}
