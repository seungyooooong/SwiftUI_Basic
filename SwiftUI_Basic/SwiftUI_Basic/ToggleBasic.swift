//
//  ToggleBasic.swift
//  SwiftUI_Basic
//
//  Created by 최승용 on 2023/12/07.
//

import SwiftUI

struct ToggleBasic: View {
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("로그인 상태")
                Text(toggleIsOn ? "온라인" : "오프라인")
            }   // HStack
            Toggle(isOn: $toggleIsOn) {
                Text("로그인 상태 선택")
            }   // Toggle
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            Spacer()
        }   // VStack
        .padding(.horizontal, 100)
    }
}

struct ToggleBasic_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBasic()
    }
}
