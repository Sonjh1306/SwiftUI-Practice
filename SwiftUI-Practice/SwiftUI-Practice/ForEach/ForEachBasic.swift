//
//  ForEachBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 3/19/24.
//

import SwiftUI

struct ForEachBasic: View {
    
    var data: [String] = ["Hi", "Hello", "Hey everyone"]
    
    var body: some View {
        
        VStack(spacing: 10, content: {
            ForEach(0..<10) { (index) in
                HStack(content: {
                    Circle()
                        .frame(width: 20, height: 20)
                    
                    Text("인덱스 번호 : \(index)번")
                        .font(.headline)
                })
            }
            
            Divider()
            
            ForEach(self.data, id: \.self) { (item) in
                Text(item)
            }
        })
    }
}

#Preview {
    ForEachBasic()
}
