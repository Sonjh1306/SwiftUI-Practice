//
//  ExtractViewBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 4/1/24.
//

import SwiftUI

struct ExtractViewBasic: View {
    
    // property
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()

            // Content
            contentLayer
        }
    }
    
    // Content
    var contentLayer: some View {
        VStack {
            Text("Extract View 연습")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("바탕색 변경")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            })
            
        }
    }
    
    // Function
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractViewBasic()
}
