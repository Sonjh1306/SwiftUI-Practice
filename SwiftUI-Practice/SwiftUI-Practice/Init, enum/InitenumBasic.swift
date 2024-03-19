//
//  InitenumBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 3/19/24.
//

import SwiftUI

struct InitenumBasic: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    enum Fruit {
        case apple
        case orange
    }
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "사과"
            self.backgroundColor = .red
        } else {
            self.title = "오렌지"
            self.backgroundColor = .orange
        }
    }
    
    var body: some View {
        VStack(spacing: 20, content: {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
        })
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitenumBasic_Previews: PreviewProvider {
    static var previews: some View {
        HStack(content: {
            InitenumBasic(count: 100, fruit: .apple)
            InitenumBasic(count: 46, fruit: .orange)
        })
    }
}

//#Preview {
//    InitenumBasic(count: <#Int#>, fruit: <#InitenumBasic.Fruit#>)
//}
