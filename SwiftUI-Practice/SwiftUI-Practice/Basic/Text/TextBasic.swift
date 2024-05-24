//
//  TextBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 3/11/24.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        VStack(spacing: 20) { // 세로로 텍스트를 출력하는 형태, spacing으로 간격 설정
            // Font 사이즈를 title, body, footnote 등으로 설정하면 해상도에 따라 responsive
            Text("Hello, World!")
                .font(.title) // Font 종류 설정
                .fontWeight(.semibold) // Font Weight 설정
                .bold() // .fontWeight(.bold)
                .underline(true, color: Color.red) // True, False로 밑줄 유무 설정 및 컬러 설정 가능
                .italic() // Text 기울이기
                .strikethrough(true, color: Color.red) // True, False로 텍스트 가운데 라인 유무 설정 및 컬러 설정 가능
            
            // 이 방법으로 하게 되면 텍스트 크기를 지정할 수 있다. (고정값으로 설정하게 되면 해상도와 상관없이 고정 값으로 출력)
            Text("Hello, World2".uppercased())
                .font(.system(size: 25,
                              weight: .semibold,
                              design: .serif // Font 디자인 설정
                             ))
            
            // Multiline Text Alignment
            Text("멀티 라인 텍스트 정렬입니다. 멀티 라인 텍스트 정렬입니다. 멀티 라인 텍스트 정렬입니다. 멀티 라인 텍스트 정렬입니다. 멀티 라인 텍스트 정렬입니다. 멀티 라인 텍스트 정렬입니다. 멀티 라인 텍스트 정렬입니다. 멀티 라인 텍스트 정렬입니다.")
                .multilineTextAlignment(.leading) // 정렬 기준
                .foregroundStyle(.red) // 텍스트 색상 설정
        }
    }
}

#Preview {
    TextBasic()
}
