//
//  IOSDeviceViewModel1.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 5/27/24.
//

import Foundation

class IOSDeviceViewModel: ObservableObject {
    
    
    // Property
    @Published var iOSDeviceArray: [IOSDeviceModel] = []
    
    init() {
        self.getDeviceArray()
    }
    
    func getDeviceArray() {
        let iphone = IOSDeviceModel(name: "아이폰")
        let ipad = IOSDeviceModel(name: "아이패드")
        let iMac = IOSDeviceModel(name: "아이맥")
        let appleWatch = IOSDeviceModel(name: "애플워치")
        
        self.iOSDeviceArray.append(iphone)
        self.iOSDeviceArray.append(ipad)
        self.iOSDeviceArray.append(iMac)
        self.iOSDeviceArray.append(appleWatch)
    }
}
