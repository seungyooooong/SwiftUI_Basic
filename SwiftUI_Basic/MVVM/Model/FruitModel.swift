//
//  FruitModel.swift
//  SwiftUI_Basic
//
//  Created by 최승용 on 2023/12/14.
//

import Foundation

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
