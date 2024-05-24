//
//  TextFieldBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 5/2/24.
//

import SwiftUI

struct TextFieldBasic: View {
    
    // Property
    @State var inputText: String = ""
    @State var userNameData: [String] = []
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 20, content: {
//                TextField("최소 2글자 이상 입력", text: $inputText)
//                //                    .textFieldStyle(.roundedBorder)
//                    .padding()
//                    .background(.gray.opacity(0.3))
//                    .cornerRadius(10)
//                    .font(.headline)
                
                TextEditor(text: $inputText)
                    .frame(height: 250)
                    .colorMultiply(.gray.opacity(0.5))
                    .cornerRadius(10)
                
                Button(action: {
                    if isTextEnough() {
                        saveText()
                    }
                }, label: {
                    Text("save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(isTextEnough() ? .blue : .gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                .disabled(!isTextEnough())
                
                ForEach(userNameData, id: \.self) { item in
                   Text(item)
                }
                
                Spacer()
            })
            .padding()
            .navigationTitle("당신의 이름은?")
            
        }
        
    }
    
    func isTextEnough() -> Bool {
        return inputText.count >= 2 ? true : false
    }
    
    func saveText() {
        userNameData.append(inputText)
        inputText = ""
    }
    
}

#Preview {
    TextFieldBasic()
}
