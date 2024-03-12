//
//  StackBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 3/12/24.
//

import SwiftUI

struct StackBasic: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5, content: {
            Rectangle()
                .fill(.red)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(.green)
                .frame(width: 150, height: 150)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
        })
        
        Divider()
            .padding()
        
        HStack(spacing: 20, content: {
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
            
        })
        
        Divider()
            .padding()
        
        ZStack(alignment: .topLeading, content: {
            Rectangle()
                .fill(.red)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(.green)
                .frame(width: 150, height: 150)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
        })
        
        Divider()
            .padding()
        
        ZStack(alignment: .topLeading, content: {
            Rectangle()
                .fill(.red)
                .frame(width: 150, height: 150)
            
            Rectangle()
                .fill(.green)
                .frame(width: 130, height: 130)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
        })
        
        Divider()
            .padding()
        
        ZStack(alignment: .top, content: {
            Rectangle()
                .fill(.yellow)
                .frame(width: 350, height: 500)
            
            VStack(alignment: .leading, spacing: 30, content: {
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom, content: {
                    Rectangle()
                        .fill(.purple)
                        .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(.pink)
                        .frame(width: 75, height: 75)
                    
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 25, height: 25)
                })
                .background(.white)
            })
            .background(.black)
        })
        
        
        // ZStack vs Background
        VStack(spacing: 50, content: {
            // ZStack을 사용해서 원에 1을 표현 - layer가 복잡할 때 ZStack 사용하면 좋음
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            // Background를 사용해서 원에 1을 동일하게 표현 - layer가 단순할 경우 추천
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                    
                )
        })
    }
}

// #Preview는 하나의 화면에 다 닮기는 반면, PreviewProvider는 따로 화면을 구성해서 보여준다.
//#Preview {
//    StackBasic()
//}

struct StackBasic_Previews: PreviewProvider {
    static var previews: some View {
        StackBasic()
    }
}
