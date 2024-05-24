//
//  OnTabGestureBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 5/24/24.
//

import SwiftUI

struct OnTabGestureBasic: View {
    
    // Property
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40, content: {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? .green : .red)
            
            
            // 1. 일반적인 Button
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("1. 일반적인 Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(25.0)
            })
            
            // 2. onTabGesture 한번 클릭시 실행
            Text("2. onTabGesture 한번 클릭 실행")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25.0)
                .onTapGesture {
                    isSelected.toggle()
                }
            
            // 3. onTabGesture 두번 클릭시 실행
            Text("2. onTabGesture 두번 클릭 실행")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25.0)
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })
            
            Spacer()
        })
        .padding(40)
    }
}

#Preview {
    OnTabGestureBasic()
}
