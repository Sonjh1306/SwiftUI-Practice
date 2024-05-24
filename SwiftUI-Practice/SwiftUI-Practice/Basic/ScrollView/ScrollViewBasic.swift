//
//  ScrollViewBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 3/18/24.
//

import SwiftUI

struct ScrollViewBasic: View {
    var body: some View {
        
        // 1. 세로 스크롤
        ScrollView(
            .vertical,
            showsIndicators: false
        ) { // 오른쪽 스크롤 바 유무
            VStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(.blue)
                        .frame(height: 300)
                        .overlay {
                            Text("\(index) 번")
                                .font(.largeTitle)
                        }
                }
            }
        }
        
        // 2. 가로 스크롤
        ScrollView(
            .horizontal,
            showsIndicators: false
        ) {
            HStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 300, height: 300)
                        .overlay {
                            Text("\(index) 번")
                                .font(.largeTitle)
                        }
                }
            }
        }
        
        // 3. 혼합
        ScrollView(.vertical, showsIndicators: true) {
            LazyVStack {
                ForEach(0..<10) { _ in
                    ScrollView(.horizontal, showsIndicators: true) {
                        LazyHStack {
                            ForEach(0..<20) { _ in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

//#Preview {
//    ScrollViewBasic()
//}

struct ScrollViewBasic_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBasic()
    }
}
