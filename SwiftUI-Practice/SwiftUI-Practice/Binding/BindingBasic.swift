//
//  BindingBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 4/2/24.
//

import SwiftUI

struct BindingBasic: View {
    // property
    @State var backgroundColor: Color = .green
    @State var title: String = "Binding Basic View"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack {
                Text(title)
                
                // button
                // parameter로 @State 의 값에 $ 붙임
                BindingChild(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

#Preview {
    BindingBasic()
}
