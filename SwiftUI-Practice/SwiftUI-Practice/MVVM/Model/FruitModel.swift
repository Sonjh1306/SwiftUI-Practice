//
//  FruitModel.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 5/24/24.
//

import Foundation

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
