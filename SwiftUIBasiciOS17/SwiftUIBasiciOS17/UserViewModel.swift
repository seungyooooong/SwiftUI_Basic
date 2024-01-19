//
//  UserViewModel.swift
//  SwiftUIBasiciOS17
//
//  Created by 최승용 on 1/19/24.
//

import Foundation
import Observation

// MARK: - original method
class UserObservableObject: ObservableObject {
    let name: String = "vm1"
    @Published var number: Int = 0
    @Published var isClick: Bool = false
}


// MARK: - new method (iOS17)
@Observable
class UserObservableMacro {
    let name: String = "vm2"
    var number: Int = 0
    var isClick: Bool = false
}
