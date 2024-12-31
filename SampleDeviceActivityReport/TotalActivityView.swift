//
//  TotalActivityView.swift
//  SampleDeviceActivityReport
//
//  Created by Jacob Zinn on 12/30/24.
//

import SwiftUI

struct TotalActivityView: View {
    let totalActivity: String
    
    var body: some View {
        VStack {
            Text("This is the DeviceActivityReport view.")
            Text("Total Activity: \(totalActivity)")
        }
        .padding()
        .background(Color.yellow)
    }
}

// In order to support previews for your extension's custom views, make sure its source files are
// members of your app's Xcode target as well as members of your extension's target. You can use
// Xcode's File Inspector to modify a file's Target Membership.
#Preview {
    TotalActivityView(totalActivity: "1h 23m")
}
