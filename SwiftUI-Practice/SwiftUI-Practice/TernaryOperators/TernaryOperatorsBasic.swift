//
//  TernaryOperatorsBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 4/4/24.
//

import SwiftUI

struct TernaryOperatorsBasic: View {
    
    // property
    @State var isStartingState: Bool = false
    
    var body: some View {
        Button(action: {
            isStartingState.toggle()
        }, label: {
            Text("if else 버튼: \(isStartingState.description)")
        })
        
        if isStartingState {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.red)
                .frame(width: 200, height: 100)
        } else {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.blue)
                .frame(width: 200, height: 100)
        }
        
        Button(action: {
            isStartingState.toggle()
        }, label: {
            Text("삼항연산자 버튼: \(isStartingState.description)")
        })
        
        Text(isStartingState ? "빨강" : "파랑")
        
        RoundedRectangle(cornerRadius: isStartingState ? 25.0 : 0)
            .fill(isStartingState ? .red : .blue)
            .frame(
                width: isStartingState ? 200 : 50,
                height: isStartingState ? 400 : 100
            )
        
        Spacer()
    }
}

#Preview {
    TernaryOperatorsBasic()
}
