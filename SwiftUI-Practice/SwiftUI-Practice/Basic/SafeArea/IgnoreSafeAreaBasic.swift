//
//  IgnoreSafeAreaBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 3/26/24.
//

import SwiftUI

struct IgnoreSafeAreaBasic: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea() // default: all
            
            // content
            VStack {
                Text("Hello, World!")
                    .font(.largeTitle)
            }
        }
        
        ScrollView {
            VStack {
                Text("박스형 리스트")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                
                ForEach(1..<11) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                        .overlay(
                            Text("\(index) 번 리스트")
                        )
                }
            }
        }
        .background(
            Color.blue
                .ignoresSafeArea()
        )
    }
}

//#Preview {
//    IgnoreSafeAreaBasic()
//}

struct IgnoreSafeAreaBasic_Preview: PreviewProvider {
    static var previews: some View {
        IgnoreSafeAreaBasic()
    }
}
