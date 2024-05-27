//
//  AppStorageBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 5/27/24.
//

import SwiftUI

struct AppStorageBasic: View {
    
    // Property
    @State var generalName: String?

    @AppStorage("name") var appStorageName: String?
    
    var body: some View {
        VStack(spacing:20, content: {
            VStack(spacing: 10, content: {
                Text("@State로 저장")
                    .font(.headline)
                
                Text(generalName ?? "당신의 이름은 무엇인가요?")
                
                Button(action: {
                    generalName = "jacob"
                }, label: {
                    Text("이름 불러오기")
                })
            })
            .padding()
            .border(.green)
            
            VStack(spacing: 10, content: {
                Text("@AppStorage로 저장")
                    .font(.headline)
                
                Text(appStorageName ?? "당신의 이름은 무엇인가요?")
                
                Button(action: {
                    appStorageName = "jacob"
                }, label: {
                    Text("이름 불러오기")
                })
            })
            .padding()
            .border(.red)
        })
    }
}

#Preview {
    AppStorageBasic()
}
