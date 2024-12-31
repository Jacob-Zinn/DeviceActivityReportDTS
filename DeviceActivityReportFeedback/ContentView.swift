//
//  ContentView.swift
//  DeviceActivityReportFeedback
//
//  Created by Jacob Zinn on 12/30/24.
//

import SwiftUI
import DeviceActivity
import FamilyControls

struct ContentView: View {
    @State private var screenTimeReportView: ScreenTimeReportView = ScreenTimeReportView()
    
    var body: some View {
        NavigationView {
            HomeView()
        }
    }
}

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Welcome")
                .font(.headline)
            Text("To reproduce the issue: use the buttons below to grant screen time access, then navigate to the screen time report view.")
            
            Button("Request Screen Time Access") {
                Task {
                    do {
                        try await AuthorizationCenter.shared.requestAuthorization(for: .individual)
                        print("Authorization granted!")
                    } catch {
                        print("Authorization failed: \(error)")
                    }
                }
            }
            .buttonStyle(.borderedProminent)
            
            NavigationLink("Navigate to ScreenTimeReport") {
                ScreenTimeReportView()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("Home View")
    }
}

struct ScreenTimeReportView: View {
    @State private var context: DeviceActivityReport.Context = DeviceActivityReport.Context("Total Activity")
    @State private var filter = DeviceActivityFilter(
        segment: .daily(during: DateInterval(start: Date(timeIntervalSinceNow: -60 * 60 * 24 * 6), end: Date())),
        devices: nil
    )
    
    public var body: some View {
        VStack {
            Text("Below, you should expect to see the total activity for the past week. However, it is note usually rendered the first time you load this view.\n\nIf it is not visible, navigate to the Home View and back to this view a few times until the DeviceActivityReport view appears. Once it appears, you've successfully reproduced the issue: the DeviceActivityReport view does not render, until after it's been added to the view hierarchy repeatedly.")
            
            DeviceActivityReport(
                context,
                filter: filter
            )
        }
        .padding()
        .navigationTitle("Screen Time Report")
    }
}

#Preview {
    ContentView()
}
