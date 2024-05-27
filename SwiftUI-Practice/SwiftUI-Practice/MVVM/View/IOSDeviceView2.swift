//
//  IOSDeviceView2.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 5/27/24.
//

import SwiftUI

struct IOSDeviceView2: View {
    
    let selectedItem: String
    
    var body: some View {
        ZStack(content: {
            Color.orange.ignoresSafeArea()
            
            VStack(spacing: 20, content: {
                Text("당신이 선택한 기기는?")
                    .font(.title)
                
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(20)
                
                NavigationLink {
                    IOSDeviceView3()
                } label: {
                    Text("다음 페이지로 이동 ->")
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(20)
                }

            })
        })
    }
}

#Preview {
    IOSDeviceView2(selectedItem: "아이폰")
}
