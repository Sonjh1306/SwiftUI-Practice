//
//  AnimationBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 4/4/24.
//

import SwiftUI

struct AnimationBasic: View {
    
    // property
    @State var isAnimated: Bool = false
    let timing: Double = 5.0
    
    
    var body: some View {
        
        VStack {
            Button(action: {
                withAnimation(.default) {
                    isAnimated.toggle()
                }
            }, label: {
                Text("Button")
            })
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 0)
                .fill(isAnimated ? .red : .green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100: 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            
            Spacer()
            
        }
        
        VStack {
            Button(action: {
                isAnimated.toggle()
            }, label: {
                Text("Button")
            })
            
            RoundedRectangle(cornerRadius: 20.0)
                .frame(
                    width: isAnimated ? 350: 50,
                    height: 100
                )
                .animation(.linear(duration: timing), value: isAnimated)
            
            RoundedRectangle(cornerRadius: 20.0)
                .frame(
                    width: isAnimated ? 350: 50,
                    height: 100
                )
                .animation(.easeIn(duration: timing), value: isAnimated)
            
            RoundedRectangle(cornerRadius: 20.0)
                .frame(
                    width: isAnimated ? 350: 50,
                    height: 100
                )
                .animation(.easeOut(duration: timing), value: isAnimated)
            
            RoundedRectangle(cornerRadius: 20.0)
                .frame(
                    width: isAnimated ? 350: 50,
                    height: 100
                )
                .animation(.easeInOut(duration: timing), value: isAnimated)
        }
        
        VStack {
            Button(action: {
                // response: 단일 진동을 완료하는데 걸리는 시간
                // damping: 얼마나 빠르게 스프링이 정지하는 속도제어 만약 0일 때 영원히 멈추지 않음 (0~ 1.0)
                // blendDuration: 다른 에니메이션 간의 전환 길이 제어
                withAnimation(.spring(
                    response: 0.5,
                    dampingFraction: 0.8,
                    blendDuration: 0
                )) {
                    isAnimated.toggle()
                }
            }, label: {
                Text("Button")
            })
            RoundedRectangle(cornerRadius: 20.0)
                .frame(
                    width: isAnimated ? 350: 50,
                    height: 100
                )
        }
    }
}

struct AnimationBasic_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBasic()
    }
}
