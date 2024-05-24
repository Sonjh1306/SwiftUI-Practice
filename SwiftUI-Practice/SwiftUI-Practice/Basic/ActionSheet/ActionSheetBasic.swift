//
//  ActionSheet.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 4/30/24.
//

import SwiftUI

struct ActionSheetBasic: View {
    
    // Property
    @State var showActionSheet: Bool = false
    @State var resultActionSheet: String = ""
    
    
    
    var body: some View {
        VStack {
            Text(resultActionSheet)
                .font(.largeTitle)
            
            Spacer()
            
            // Content
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                
                Text("Jacob Ko")
                
                Spacer()
                
                Button(action: {
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
            
            Spacer()
        }
        .actionSheet(isPresented: $showActionSheet, content: {
            getActionSheet()
        })
    }
    
    func getActionSheet() -> ActionSheet {
        let shareButton: ActionSheet.Button = .default(Text("공유하기")) {
            resultActionSheet = "공유 되었습니다."
        }
        let reportButton: ActionSheet.Button = .default(Text("신고하기")) {
            resultActionSheet = "신고 되었습니다."
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("삭제하기")) {
            resultActionSheet = "삭제 되었습니다."
        }
        let cancelButton: ActionSheet.Button = .cancel()
        
        return ActionSheet(
            title: Text("ActionSheet 제목"),
            message: Text("ActionSheet 내용"),
            buttons: [shareButton, reportButton, deleteButton, cancelButton]
        )
    }
}

#Preview {
    ActionSheetBasic()
}
