//
//  ListBasic.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 4/29/24.
//

import SwiftUI

struct ListBasic: View {
    
    // Property
    @State var fruits: [String] = [
        "사과", "오렌지", "바나나", "수박"
    ]
    
    @State var meats: [String] = [
        "소고기", "돼지고기", "닭고기"
    ]
    
    var body: some View {
        NavigationView(content: {
            List {
                Section {
                    // content
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                } header: {
                    Text("과일종류")
                        .font(.headline)
                        .foregroundColor(.brown)
                } // : Section
                
                Section {
                    // content
                    ForEach(meats, id: \.self) { meat in
                        Text(meat)
                    }
                } header: {
                    Text("고기종류")
                        .font(.headline)
                        .foregroundColor(.red)
                }
            } // : List
            .navigationTitle("우리 동네 마트")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }) // : Navigation
    } // : Body
    
    // Function
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    var addButton: some View {
        Button(action: {
            fruits.append("딸기")
        }, label: {
            Text("Add")
        })
    }
}

#Preview {
    ListBasic()
}
