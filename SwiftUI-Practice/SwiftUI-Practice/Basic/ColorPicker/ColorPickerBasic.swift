//
//  ColorPickerBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 5/3/24.
//

import SwiftUI

struct ColorPickerBasic: View {
    
    // Property
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            ColorPicker(selection: $backgroundColor, supportsOpacity: true, label: {
                Text("원하는 색을 고르세요.")
            })
            .padding()
            .background(.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

#Preview {
    ColorPickerBasic()
}
