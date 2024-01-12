//
//  LabeledContentBasic.swift
//  SwiftUIiOS16Basic
//
//  Created by 최승용 on 1/12/24.
//

import SwiftUI

struct LabeledContentBasic: View {
    
    @State var isAlert: Bool = false
    @State var isMute: Bool = false
    
    var body: some View {
        VStack (spacing: 10) {
            Text("Labeled Content")
                .font(.largeTitle.bold())
                .foregroundStyle(.blue)
            
            LabeledContent("Title", value: "Value")
            LabeledContent("Title") {
                Label("Camera", systemImage: "camera")
            }
            LabeledContent("Percentage", value: 50, format: .percent)
            LabeledContent("Won", value: 40000, format: .currency(code: "krw"))
            LabeledContent {
                Text("Custom Value")
                    .font(.title.bold())
                    .foregroundStyle(.red)
            } label: {
                Text("Custom TItle")
                    .fontWeight(.bold)
            }
            List {
                LabeledContent("Percentage", value: 50, format: .percent)
                LabeledContent("Dollar", value: 400, format: .currency(code: "usd"))
                LabeledContent("Settings") {
                    GroupBox {
                        Toggle("Alert", isOn: $isAlert)
                        Toggle("Mute", isOn: $isMute)
                    }
                    .padding(.leading)
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    LabeledContentBasic()
}
