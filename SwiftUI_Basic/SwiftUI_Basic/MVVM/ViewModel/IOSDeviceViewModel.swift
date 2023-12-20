//
//  IOSDeviceViewModel.swift
//  SwiftUI_Basic
//
//  Created by 최승용 on 2023/12/18.
//

import Foundation

class IOSDeviceViewModel: ObservableObject {
    
    @Published var iOSDeviceArray: [IOSDeviceModel] = []
    
    init () {
        getData()
    }
    
    
    func getData() {
        let iPhone = IOSDeviceModel(name: "iPhone")
        let iPad = IOSDeviceModel(name: "iPad")
        let iMac = IOSDeviceModel(name: "iMac")
        let appleWatch = IOSDeviceModel(name: "appleWatch")
        
        
        self.iOSDeviceArray.append(iPhone)
        self.iOSDeviceArray.append(iPad)
        self.iOSDeviceArray.append(iMac)
        self.iOSDeviceArray.append(appleWatch)
    }
}
