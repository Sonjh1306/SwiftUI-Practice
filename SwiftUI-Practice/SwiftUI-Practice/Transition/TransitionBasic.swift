//
//  TransitionBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 4/4/24.
//

import SwiftUI

struct TransitionBasic: View {
    
    // property
    @State var showTransition: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom, content: {
            VStack {
                Button(action: {
                    withAnimation(.easeInOut) {
                        showTransition.toggle()
                    }
                }, label: {
                    Text("Button")
                })
                
                Spacer()
            }
            
            if showTransition {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .opacity(showTransition ? 1.0 : 0)
                
                // Move Transition
//                    .transition(.move(edge: .bottom))
                
                // Opacity Transition
//                    .transition(.opacity)
                
                // Scale Transition
//                    .transition(.scale)
                
                // Asymmetric Transition
                    .transition(.asymmetric(
                        insertion: .move(edge: .top),
                        removal: .move(edge: .trailing)
                    ))
            }
        })
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionBasic()
}
