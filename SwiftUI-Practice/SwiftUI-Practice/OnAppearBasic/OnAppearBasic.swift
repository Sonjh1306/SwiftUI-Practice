//
//  OnAppearBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 5/7/24.
//

import SwiftUI

struct OnAppearBasic: View {
    
    // Property
    @State var noticeText: String = "onAppear 시작 전"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView(content: {
            ScrollView {
                Text(noticeText)
                
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                        // onAppear: 새로 화면이 생길때 마다 count 1씩 증가 시키기
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            // .onAppear: 여기서 onAppearBasic View 가 화면에 나타날 때 시작되는 logic 넣기
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    noticeText = "onAppear 시작 완료 했습니다."
                }
            })
            .navigationTitle("생성된 박스 : \(count)")
        })
    }
}

#Preview {
    OnAppearBasic()
}
