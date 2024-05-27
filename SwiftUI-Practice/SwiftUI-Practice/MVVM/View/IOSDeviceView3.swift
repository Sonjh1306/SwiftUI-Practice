//
//  IOSDeviceView3.swift
//  SwiftUI-Practice
//
//  Created by sonjuhyeong on 5/27/24.
//

import SwiftUI

struct IOSDeviceView3: View {
    
    @EnvironmentObject var viewModel: IOSDeviceViewModel
    
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.iOSDeviceArray) { (device) in
                        Text(device.name)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    IOSDeviceView3()
        .environmentObject(IOSDeviceViewModel())
}
