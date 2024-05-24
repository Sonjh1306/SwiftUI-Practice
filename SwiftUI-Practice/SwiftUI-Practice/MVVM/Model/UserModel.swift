//
//  UserModel.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 5/24/24.
//

import Foundation

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isChecked: Bool
}
