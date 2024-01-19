//
//  ObservationBasic.swift
//  SwiftUIBasiciOS17
//
//  Created by 최승용 on 1/19/24.
//

import SwiftUI

struct ObservationBasic: View {
    
    // original method
    @EnvironmentObject private var vm1: UserObservableObject
    
    // new method (iOS17)
    @Environment(UserObservableMacro.self) private var vm2
    
    var body: some View {
        @Bindable var vm2 = vm2
        
        VStack (spacing: 30) {
            Text("1. VM comparison")
                .font(.title)
            
            // vm 1
            HStack {
                Menu("\(vm1.name): \(vm1.number)") {
                    ForEach(10..<20) { index in
                        Button(String(index)) {
                            vm1.number = index
                        }
                    }
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
                
                Spacer()
                
                Toggle("VM1 toggle", isOn: $vm1.isClick)
            }
            
            // vm 2
            HStack {
                Menu("\(vm2.name): \(vm2.number)") {
                    ForEach(20..<30) { index in
                        Button(String(index)) {
                            vm2.number = index
                        }
                    }
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
                
                Spacer()
                
                Toggle("VM2 toggle", isOn: $vm2.isClick)
            }
            
            Divider()
            
            Text("2. SubView comparison")
                .font(.title)
            
            BindingView1(vm1: vm1)
            BindingView2(vm2: vm2)
        }
        .font(.title2)
        .padding()
    }
}

struct BindingView1: View {
    
    @ObservedObject var vm1: UserObservableObject
    
    var body: some View {
        HStack {
            Menu("\(vm1.name): \(vm1.number)") {
                ForEach(10..<20) { index in
                    Button(String(index)) {
                        vm1.number = index
                    }
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)
            
            Spacer()
            
            Toggle("VM1 toggle", isOn: $vm1.isClick)
        }
    }
}

struct BindingView2: View {
    @Bindable var vm2: UserObservableMacro
    
    var body: some View {
        HStack {
            Menu("\(vm2.name): \(vm2.number)") {
                ForEach(20..<30) { index in
                    Button(String(index)) {
                        vm2.number = index
                    }
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)
            
            Spacer()
            
            Toggle("VM2 toggle", isOn: $vm2.isClick)
        }
    }
}

#Preview {
    ObservationBasic()
        .environmentObject(UserObservableObject())
        .environment(UserObservableMacro())
}
