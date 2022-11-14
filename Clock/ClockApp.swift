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
            
            ContentView(viewModel: ClockViewModel(offsets: [1,2,3,4,5]))
        }
    }
}
