//
//  SecondNatigationView.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 4/29/24.
//

import SwiftUI

struct SecondNatigationView: View {
    
    // Property
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(content: {
            Color.green.ignoresSafeArea()
            
            
            VStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("이전 페이지로 이동")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                })
                
                NavigationLink {
                    ZStack {
                        Color.red.ignoresSafeArea()
                        Text("3번째 페이지 입니다.")
                            .font(.largeTitle)
                    }
                } label: {
                    Text("3번째 페이지로 이동")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }

            }
        })
    }
}

#Preview {
    SecondNatigationView()
}
