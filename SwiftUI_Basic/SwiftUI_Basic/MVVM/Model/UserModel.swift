//
//  UserModel.swift
//  SwiftUI_Basic
//
//  Created by 최승용 on 2023/12/14.
//

import Foundation

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isChecked: Bool
}
