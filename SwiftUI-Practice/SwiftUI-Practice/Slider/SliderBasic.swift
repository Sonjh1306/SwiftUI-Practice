//
//  SliderBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 5/3/24.
//

import SwiftUI

struct SliderBasic: View {
    
    // Property
    @State var sliderValue: Double = 3.0
    @State var color: Color = .blue
    
    var body: some View {
        VStack(spacing: 20) {
            
            HStack {
                Text("레벨:")
                Text("\(sliderValue)")
                Text(String.init(format: "%.0f", sliderValue))
            }
            .foregroundColor(color)
            
            
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { _ in
                    color = .red
                }, 
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("라벨")
                })
            .accentColor(.red)
            .padding()
        }
    }
}

#Preview {
    SliderBasic()
}
