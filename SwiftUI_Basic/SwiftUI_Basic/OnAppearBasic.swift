//
//  OnAppearBasic.swift
//  SwiftUI_Basic
//
//  Created by 최승용 on 2023/12/13.
//

import SwiftUI

struct OnAppearBasic: View {
    @State var noticeText: String = "before onAppear"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(noticeText)
                
                // 화면이 보이고 나서 load가 되는 LazyStack
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear {
                // dispatchQueue
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    noticeText = "after onAppear"
                }
            }
            .navigationTitle("생성된 박스 \(count)")
        }
    }
}

struct OnAppearBasic_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBasic()
    }
}
