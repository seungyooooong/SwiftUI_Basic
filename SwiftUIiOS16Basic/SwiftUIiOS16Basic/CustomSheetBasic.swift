//
//  CustomSheetBasic.swift
//  SwiftUIiOS16Basic
//
//  Created by 최승용 on 1/6/24.
//

import SwiftUI

struct CustomSheetBasic: View {
    @State var showSheet: Bool = false
    
    var body: some View {
        Button {
            showSheet.toggle()
        } label: {
            Text("Show Sheet")
                .font(.title)
        }
        .sheet(isPresented: $showSheet) {
            Text("Custome Size Sheet")
                .presentationDetents([.small, .medium, .large])
                .presentationDragIndicator(.visible)
        }
    }
}

extension PresentationDetent {
    static let small = Self.height(100)
}

#Preview {
    CustomSheetBasic()
}
