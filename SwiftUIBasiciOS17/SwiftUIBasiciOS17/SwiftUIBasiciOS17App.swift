//
//  SwiftUIBasiciOS17App.swift
//  SwiftUIBasiciOS17
//
//  Created by 최승용 on 1/16/24.
//

import SwiftUI

@main
struct SwiftUIBasiciOS17App: App {
    
    
    // original method
    @StateObject private var vm1 = UserObservableObject()
    
    // new method (iOS17)
    @State private var vm2 = UserObservableMacro()
    
    
    var body: some Scene {
        WindowGroup {
            ObservationBasic()
                .environmentObject(vm1) // original method
                .environment(vm2) // new method (iOS17)
        }
    }
}
