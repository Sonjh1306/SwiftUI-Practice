//
//  TapViewBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 5/7/24.
//

import SwiftUI

struct TabViewBasic: View {
    
    // Property
    @State var initPageNumber: Int = 0
    
    
    var body: some View {
        // selection: TabView가 어디 페이지를 가리키는지 설정 하는 것
        TabView(selection: $initPageNumber, content:  {
            HomeView(selectedTab: $initPageNumber)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            Text("둘러보기 화면")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            
            Text("프로필 화면")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        })
    }
}

#Preview {
    TabViewBasic()
}

// HomeView
struct HomeView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.top)
            
            VStack(spacing: 20, content: {
                Text("홈화면")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("프로필 화면으로 이동")
                        .font(.headline)
                        .padding(20)
                        .padding(.horizontal)
                        .background(.white)
                        .foregroundColor(.red)
                        .cornerRadius(10)
                })
            })
        }
    }
}
