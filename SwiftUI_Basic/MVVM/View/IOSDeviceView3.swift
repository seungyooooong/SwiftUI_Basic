//
//  IOSDeviceView3.swift
//  SwiftUI_Basic
//
//  Created by 최승용 on 2023/12/18.
//

import SwiftUI

struct IOSDeviceView3: View {
    
    // @StateObject 에서 선언한 viewModel을 EnvironmentObject를 통해 가져오기
    @EnvironmentObject var viewModel: IOSDeviceViewModel
    
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            
            ScrollView {
                VStack (spacing: 20) {
                    ForEach (viewModel.iOSDeviceArray) { item in
                        Text(item.name)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct IOSDeviceView3_Previews: PreviewProvider {
    static var previews: some View {
        IOSDeviceView3()
            .environmentObject(IOSDeviceViewModel())
    }
}
