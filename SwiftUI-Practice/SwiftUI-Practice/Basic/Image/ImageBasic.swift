//
//  ImageBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 3/12/24.
//

import SwiftUI

struct ImageBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("img_fire")
                .resizable() // 이미지를 크기를 조정할 수 있게 설정
                .scaledToFill()
                .frame(width: 300, height: 300, alignment: .center)
                .cornerRadius(150)
            
            Divider() // 구분선
            
            Image("img_fire")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .clipShape(Circle()) // 잘라서 모양을 만듬
        }
    }
}

#Preview {
    ImageBasic()
}
