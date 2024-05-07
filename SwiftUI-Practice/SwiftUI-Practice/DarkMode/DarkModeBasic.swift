//
//  DarkModeBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 5/7/24.
//

import SwiftUI

struct DarkModeBasic: View {
    
    // Property
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView(content: {
            ScrollView {
                VStack(spacing: 20, content: {
                    // primary and secondary color는 자동으로 다크 모드일 때 색 변환 됨
                    Text("Primary 색상")
                        .foregroundColor(.primary)
                    Text("Secondary 색상")
                        .foregroundColor(.secondary)
                    // 일반적인 black, white는 고정 값임
                    Text("Black Color")
                        .foregroundColor(.black)
                    Text("White Color")
                        .foregroundColor(.white)
                    Text("Red Color")
                        .foregroundColor(.red)
                    // Asset 에서 adaptive 라는 이름의 color set을 만든 후 light, dark mode 에서 색을 설정해줄 수 있음
                    Text("Asset 에서 Adaptive 색 설정")
                        .foregroundStyle(Color("AdaptiveColor"))
                    // @Enviroment 사용해서 color scheme 사용하기
                    Text("@Enviroment 사용해서 Adaptive 색 설정")
                        .foregroundStyle(colorScheme == .light ? .green : .blue)
                })
            }
        })
    }
}

#Preview {
    DarkModeBasic()
}
