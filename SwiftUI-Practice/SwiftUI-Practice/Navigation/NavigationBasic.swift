//
//  NavigationBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 4/29/24.
//

import SwiftUI

struct NavigationBasic: View {
    
    // Property
    @State private var showSheet: Bool = false
    
    var body: some View {
        NavigationView(content: {
            VStack(content: {
                NavigationLink {
                    // destination: 목적지 -> 어디로 페이지 이동할꺼냐
                    SecondNatigationView()
                } label: {
                    Text("Second Navigation 이동")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .background(.blue)
                        .cornerRadius(10)
                        
                }

            }) // : VStack
            // navigationTitle - 상단 페이지 제목
            .navigationTitle("페이지 제목")
            
            // navigationBarTitleDisplayMode - 상단 페이지 제목 스타일
            // .automatic: 자동,  inline: 상단에 작게, large: leading 쪽으로 크게
            .navigationBarTitleDisplayMode(.inline)
            
            // navigationBarHidden - 네비게이션 타이틀, 바를 감추는 기능
//            .navigationBarHidden(true)
            
            // navigationBarItems 상단 좌우에 icon, text, button을 사용해서 나타낼 수 있음
            .navigationBarItems(
                leading: Image(systemName: "line.3.horizontal"),
                trailing: Button(action: {
                    showSheet.toggle()
                }, label: {
                    Image(systemName: "gear")
                })
            )
        }) // : NavigationView
        .sheet(isPresented: $showSheet, content: {
            ZStack {
                Color.green.ignoresSafeArea()
                
                Text("설정 페이지 입니다.")
                    .font(.largeTitle)
            }
        })
    }
}

#Preview {
    NavigationBasic()
}
