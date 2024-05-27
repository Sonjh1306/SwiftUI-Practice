//
//  iOSDeviceView1.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 5/27/24.
//

import SwiftUI

struct IOSDeviceView1: View {
    
    @StateObject var viewModel: IOSDeviceViewModel = IOSDeviceViewModel()
    
    var body: some View {
        NavigationView(content: {
            List {
                ForEach(viewModel.iOSDeviceArray) { (device) in
                    NavigationLink {
                        IOSDeviceView2(selectedItem: device.name)
                    } label: {
                        Text(device.name)
                    }
                }
            }
        })
        .environmentObject(viewModel)
    }
}

#Preview {
    IOSDeviceView1()
}
