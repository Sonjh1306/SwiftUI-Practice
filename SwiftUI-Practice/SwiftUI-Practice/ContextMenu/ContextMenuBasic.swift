//
//  ContextMenuBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 4/30/24.
//

import SwiftUI

struct ContextMenuBasic: View {
    
    // Property
    @State var statusText: String = ""
    @State var backgroundColor: Color = .cyan
    
    var body: some View {
        VStack (spacing: 30, content: {
            Text(statusText)
            
            VStack(alignment: .leading, spacing: 10, content: {
                Text("Context Menu Test")
                    .font(.headline)
                Text("이 버튼을 길게 누르면 메뉴가 나타납니다.")
                    .font(.subheadline)
            })
            .foregroundColor(.white)
            .padding(30)
            .background(backgroundColor)
            .cornerRadius(20)
            .contextMenu {
                Button(action: {
                    statusText = "공유가 되었습니다."
                    backgroundColor = .yellow
                }, label: {
                    Label(
                        title: { Text("Share post") },
                        icon: { Image(systemName: "square.and.arrow.up") }
                    )
                })
                
                Button(action: {
                    statusText = "신고가 되었습니다."
                    backgroundColor = .red
                }, label: {
                    Label(
                        title: { Text("Report post") },
                        icon: { Image(systemName: "exclamationmark.bubble") }
                    )
                })
                
                Button(action: {
                    statusText = "좋아요 추가!"
                    backgroundColor = .green
                }, label: {
                    Label(
                        title: { Text("Like post") },
                        icon: { Image(systemName: "hand.thumbsup") }
                    )
                })
            }
        })
        
        
    }
}

#Preview {
    ContextMenuBasic()
}
