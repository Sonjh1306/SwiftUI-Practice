//
//  SpacerBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 3/18/24.
//

import SwiftUI

struct SpacerBasic: View {
    var body: some View {
        // 1. Spacer 예시 도형
        HStack(content: {
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .frame(width: 50, height: 50)
                
            Spacer()
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .fill(.red)
                .frame(width: 50, height: 50)

            Spacer()
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .fill(.green)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
        })
        .background(.yellow)
        
        Divider()
        
        // 2. App 상단 설정 닫기 아이콘 만들기
        VStack(content: {
            HStack(spacing: 0, content: {
                Image(systemName: "xmark")
                
                Spacer()
                
                Image(systemName: "gear")
            })
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
        })
    }
}

#Preview {
    SpacerBasic()
}
