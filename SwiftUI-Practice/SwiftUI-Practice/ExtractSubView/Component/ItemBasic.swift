//
//  ItemBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 4/2/24.
//

import SwiftUI

struct ItemBasic: View {
    // Property
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

#Preview {
    ItemBasic(title: "사과", count: 1, color: .red)
}
