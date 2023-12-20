//
//  IOSDeviceView2.swift
//  SwiftUI_Basic
//
//  Created by 최승용 on 2023/12/18.
//

import SwiftUI

struct IOSDeviceView2: View {
    let selectedItem: String
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack (spacing: 20) {
                Text("selectedItem is")
                    .font(.title)
                
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(20)
                            
                NavigationLink {
                    IOSDeviceView3()
                } label: {
                    Text("next page ->")
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(20)
                }
            }
        }
    }
}

struct IOSDeviceView2_Previews: PreviewProvider {
    static var previews: some View {
        IOSDeviceView2(selectedItem: "iPhone")
    }
}
