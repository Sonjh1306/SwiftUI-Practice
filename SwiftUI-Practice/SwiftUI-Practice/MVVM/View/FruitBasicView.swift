//
//  FruitBasicView.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 5/24/24.
//

import SwiftUI

struct FruitBasicView: View {
    
    // Property
    
    // Subview에서 사용
//    @ObservedObject var fruitViewModel = FruitViewModel()
    
    // 부모View에서 주로 사용
    @StateObject var fruitViewModel = FruitViewModel()
    var body: some View {
        NavigationView(content: {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { (fruit) in
                        HStack(spacing: 20) {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                }
            }
            .navigationBarItems(
                trailing: NavigationLink(
                    destination: {
                        SecondScreen(fruitViewModel: fruitViewModel)
                    }, label: {
                        Image(systemName: "arrow.right")
                            .font(.title)
                    }))
            .navigationTitle("과일 리스트")
        })
    }
}

struct SecondScreen: View {
    
    // Property
    @ObservedObject var fruitViewModel = FruitViewModel()
    @Environment(\.presentationMode) var presentaionMode
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack(spacing: 20) {
                ForEach(fruitViewModel.fruitArray) { (fruit) in
                    Text(fruit.name)
                        .font(.headline)
                        .foregroundColor(.white)
                }
                
                Button(action: {
                    presentaionMode.wrappedValue.dismiss()
                }, label: {
                    Text("뒤로 가기")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                })
            }
        }
    }
}

#Preview {
    FruitBasicView()
}
