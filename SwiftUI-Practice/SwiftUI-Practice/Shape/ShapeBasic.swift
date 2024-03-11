//
//  ShapeBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 3/11/24.
//

import SwiftUI

struct ShapeBasic: View {
    
    var body: some View {
        VStack(spacing: 20, content: {
            Text("원형")
                .font(.title)
            Circle() // 원형
//                .fill(Color.blue) // 도형 내부 색상 변경, fill이 foreground 보다 최상단에서 변경 따라서 둘 다 적용할 시 fill 색상 적용
//                .foregroundColor(Color.red) // 도형 내부 색상 변경
//                .stroke(Color.red, lineWidth: 10) // 외곽선만 그릴 경우(색상 및 라인 두께 적용 가능)
//                .stroke(.purple, style: StrokeStyle( // StrokeStyle 적용 가능(라인 두께, 끊어진 라인 모양, 끊김 사이 간격)
//                    lineWidth: 30,
//                    lineCap: .round,
//                    dash: [30] // 픽셀
//                ))
                .trim(from: 0.5, to: 1.0) // 도형 잘라내기(범위 설정 해줘야함)
                .stroke(Color.purple, lineWidth: 50)
                .frame(
                    width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,
                    height: 50,
                    alignment: .center
                ) // 도형이나 사진의 크기를 정함
                .padding()
            
            // Ellipse(타원형)
            Text("타원형")
                .font(.title)
            Ellipse()
                .fill(.green)
                .frame(
                    width: 200,
                    height: 100,
                    alignment: .center
                )
            
            // 캡슐형
            Text("캡슐형")
                .font(.title)
            Capsule(style: .continuous)
                .stroke(.blue, lineWidth: 30)
                .frame(width: 200, height: 100, alignment: .center)
            
        })
        
        VStack(spacing: 20) {
            // 직사각형
            Text("직사각형")
                .font(.title)
            Rectangle()
                .fill(.red)
                .frame(width: 200, height: 100, alignment: .center)
            
            // 둥근 직사각형
            Text("둥근 직사각형")
                .font(.title)
            RoundedRectangle(cornerRadius: 20)
                .trim(from: 0.4, to: 1.0)
                .frame(width: 200, height: 100, alignment: .center)
                
        }
    }
}

#Preview {
    ShapeBasic()
}
