//
//  FrameBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 3/12/24.
//

import SwiftUI

struct FrameBasic: View {
    var body: some View {
        // 1
        VStack(spacing: 20, content: {
            Text("Hello, world!")
                .font(.title)
                .background(Color.green)
                .frame(width: 200, height: 200, alignment: .center) // alignment는 기본이 center
                .background(Color.red)
            
            Divider()
            // 2
            Text("Hello, world!")
                .font(.title)
                .background(Color.green)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center) // maxWidth 는 최댓치의 넓이, maxHeight는 최댓치의 높이
                .background(Color.red)
        })
        
        VStack(spacing: 20, content: {
            Text("Hello, world!")
                .font(.title)
                .background(Color.red)
                .frame(height: 100, alignment: .top)
                .background(Color.orange)
                .frame(width: 200)
                .background(Color.purple)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.pink)
                .frame(height: 400)
                .background(Color.green)
                .frame(maxHeight: .infinity, alignment: .top)
                .background(Color.yellow)
        })
    }
}

#Preview {
    FrameBasic()
}
