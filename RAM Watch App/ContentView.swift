//
//  ContentView.swift
//  RAM Watch App
//
//  Created by Amil on 04/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            if ProcessInfo.processInfo.isLowPowerModeEnabled {
                Image(systemName: "checkmark.seal")
                    .foregroundStyle(.green, .yellow)
                    .font(.system(size: 40))
                Text("Low Power Mode")
                    .foregroundColor(Color.yellow)
                    .font(.system(size: 11))
            } else {
                Image(systemName: "checkmark.seal")
                    .foregroundStyle(.green, .mint)
                    .font(.system(size: 30))
                    .padding()
            }
            VStack {
                Text(String(ProcessInfo.processInfo.processorCount) + " CPUs")
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(String(ProcessInfo.processInfo.physicalMemory / 1073741824) + " GB RAM")
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(String(ProcessInfo.processInfo.activeProcessorCount) + " CPUs Active")
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(String(ProcessInfo.processInfo.operatingSystemVersionString))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 11))
            }.padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
