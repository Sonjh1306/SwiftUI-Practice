//
//  BindingChild.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 4/2/24.
//

import SwiftUI

struct BindingChild: View {
    
    // property
    @State var buttonColor: Color = .blue
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            backgroundColor = .orange
            buttonColor = .pink
            title = "Binding Child View"
        }, label: {
            Text("Child View 이동")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}

#Preview {
    BindingChild(backgroundColor: .constant(.orange), title: .constant("Binding Child"))
        .previewLayout(.sizeThatFits)
}
