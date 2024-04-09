//
//  SheetBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 4/9/24.
//

import SwiftUI

// .sheet: 현재 View에서 약 90% 부분 정도 overlay 되는 View
// .fullScreenCover: 현재 View에서 전체 부분 overlay 되는 View

struct SheetBasic: View {
    
    // property
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
            })
//            .sheet(isPresented: $showSheet, content: {
//                SheetBasic2()
//            })
            .fullScreenCover(isPresented: $showSheet, content: {
                SheetBasic2()
            })
        }
    }
}

#Preview {
    SheetBasic()
}
