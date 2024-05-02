//
//  ToggleBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 5/2/24.
//

import SwiftUI

struct ToggleBasic: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("로그인 상태:")
                Text(toggleIsOn ? "온라인" : "오프라인")
            }
            Toggle(isOn: $toggleIsOn, label: {
                Text("로그인 상태 선택")
            })
            .toggleStyle(SwitchToggleStyle(tint: .red))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBasic()
}
