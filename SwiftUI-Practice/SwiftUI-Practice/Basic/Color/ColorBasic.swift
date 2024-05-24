//
//  ColorBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 3/11/24.
//

import SwiftUI

struct ColorBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            
            // Basic Color
            Text("Basic Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(.purple)
                .frame(width: 200, height: 100, alignment: .center)
            
            // Primary Color
            // 자동으로 다크모드 지원
            Text("Primary Color")
                .font(.title)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(.primary)
                .frame(width: 200, height: 100, alignment: .center)
            
            // UIColor
            // UIKit에서 사용되는 color 값을 사용할 수 있다.
            Text("UIColor")
                .font(.title)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(UIColor.secondarySystemBackground))
                .frame(width: 200, height: 100, alignment: .center)
            
            // Custom Color
            Text("Custom Color")
                .font(.title)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(UIColor.custom)) // Assets에 추가한 Custom Color 사용
//                .fill(Color("CustomColor"))  Assets에 추가한 Custom Color 사용
                .frame(width: 200, height: 100, alignment: .center)
        }
    }
}

#Preview {
    ColorBasic()
//        .preferredColorScheme(.dark)  // 다크모드 변경
}
