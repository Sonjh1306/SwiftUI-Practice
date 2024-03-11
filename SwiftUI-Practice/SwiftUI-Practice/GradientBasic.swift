//
//  GradientBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 3/11/24.
//

import SwiftUI

struct GradientBasic: View {
    var body: some View {
        VStack(spacing: 20) {
             // Linear Gradient
            Text("Linear Gradient")
                .font(.title2)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.red, .blue]),
                        startPoint: .topLeading, // 시작점
                        endPoint: .bottom // 끝점
                    )
                )
                .frame(width: 300, height: 100, alignment: .center)
            
            // Radial Gradient
            Text("Radial Gradient")
                .font(.title2)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [.yellow, .purple]),
                        center: .leading, // 중심점
                        startRadius: 5, // 시작 Radial 크기
                        endRadius: 300 // 끝 Radial
                    )
                )
                .frame(width: 300, height: 100, alignment: .center)
            
            // Angular Gradient
            Text("Angular Gradient")
                .font(.title2)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    AngularGradient(
                        gradient: Gradient.init(colors: [.blue, .green]),
                        center: .topLeading,
                        angle: .degrees(180 + 45)
                    )
                )
                .frame(width: 300, height: 100, alignment: .center)
        }
    }
}

#Preview {
    GradientBasic()
}
