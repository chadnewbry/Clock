//
//  ClockApp.swift
//  Clock
//
//  Created by Chad Newbry on 11/14/22.
//

import SwiftUI

@main
struct ClockApp: App {
    var body: some Scene {
        WindowGroup {
            
            let viewModels = [
                ClockViewModel(date: Date().addingTimeInterval(-60)),
                ClockViewModel(date: Date()),
                ClockViewModel(date: Date().addingTimeInterval(60)),
                ClockViewModel(date: Date().addingTimeInterval(60*60)),
                ClockViewModel(date: Date().addingTimeInterval(60*60*24)),
            ]
            
            ContentView(viewModels: viewModels)
        }
    }
}
