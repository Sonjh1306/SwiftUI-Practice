//
//  StepperBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 5/3/24.
//

import SwiftUI

struct StepperBasic: View {
    
    // Property
    @State var stepperValue: Int = 0
    @State var widthChange: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("기본 Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            Divider()
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthChange, height: 100)
            
            Stepper("직사각형 너비 변화") {
                differentWidth(amount: 20)
            } onDecrement: {
                differentWidth(amount: -20)
            }

        }
    }
    
    func differentWidth(amount: CGFloat) {
        withAnimation {
            widthChange += amount
        }
    }
}

#Preview {
    StepperBasic()
}
