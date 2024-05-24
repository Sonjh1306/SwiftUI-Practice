//
//  LazyGridBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 3/19/24.
//

import SwiftUI

struct LazyGridBasic: View {
    
    // LazyGrid
    // columns의 갯수를 3개로 설정
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    // LazyHGrid
    // title을 1000개 변수를 생성
    // ["목록 1", "목록 2", ... "목록 1000"] [String]
    let title: [String] = Array(1...1000).map {"목록 \($0)"}
    
    // 화면 그리드형식으로 채워줌
    let layout: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80))
    ]
    
    
    var body: some View {
        // 1. LazyGrid
        ScrollView {
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]) {
                    Section(header: Text("Section1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.blue)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(.gray)
                                .frame(height: 150)
                                .overlay {
                                    Text("\(index) 번")
                                }
                            
                        }
                    } //: Section1
                    
                    // Section2
                    Section(header: Text("Section2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.red)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(.green)
                                .frame(height: 150)
                                .overlay {
                                    Text("\(index) 번")
                                }
                            
                        }
                    } //: Section2
                }
        } //: 1번
        
        // LazyHGrid
        // ScrollView horizontal
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout, spacing: 20) {
                ForEach(title, id: \.self) { item in
                    VStack {
                        Capsule()
                            .fill(.yellow)
                            .frame(height: 30)
                        Text(item)
                            .foregroundColor(.blue)
                    }
                }
            }
        }
    }
}

struct LazyGridBasic_Preview: PreviewProvider {
    static var previews: some View {
        LazyGridBasic()
    }
}
