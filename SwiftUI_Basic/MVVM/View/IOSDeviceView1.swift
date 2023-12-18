//
//  IOSDeviceView1.swift
//  SwiftUI_Basic
//
//  Created by 최승용 on 2023/12/18.
//

import SwiftUI

struct IOSDeviceView1: View {
    @StateObject var viewModel: IOSDeviceViewModel = IOSDeviceViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.iOSDeviceArray) { item in
                    NavigationLink {
                        IOSDeviceView2(selectedItem: item.name)
                    } label: {
                        Text(item.name)
                    }

                }
            }
        }
        .environmentObject(IOSDeviceViewModel())
    }
}

struct IOSDeviceView1_Previews: PreviewProvider {
    static var previews: some View {
        IOSDeviceView1()
    }
}
