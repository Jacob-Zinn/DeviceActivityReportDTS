//
//  SampleDeviceActivityReport.swift
//  SampleDeviceActivityReport
//
//  Created by Jacob Zinn on 12/30/24.
//

import DeviceActivity
import SwiftUI

@main
struct SampleDeviceActivityReport: DeviceActivityReportExtension {
    var body: some DeviceActivityReportScene {
        // Create a report for each DeviceActivityReport.Context that your app supports.
        TotalActivityReport { totalActivity in
            TotalActivityView(totalActivity: totalActivity)
        }
        // Add more reports here...
    }
}
