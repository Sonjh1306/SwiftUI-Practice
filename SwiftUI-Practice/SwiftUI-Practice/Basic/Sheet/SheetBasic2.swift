//
//  SheetBasic2.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 4/9/24.
//

import SwiftUI

struct SheetBasic2: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading, content: {
            Color.red
                .ignoresSafeArea()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            })
        })
    }
}

#Preview {
    SheetBasic2()
}
