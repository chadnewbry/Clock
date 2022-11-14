//
//  ClockViewModel.swift
//  Clock
//
//  Created by Chad Newbry on 11/14/22.
//

import Foundation


class ClockViewModel: ObservableObject, Hashable {
    
    /// Time to be displayed
    @Published private(set) var time: String = ""
    
    private var date: Date
    
    
    /// ViewModel for a ClockView.
    ///
    /// Starts a timer that updates the clock view every second
    ///
    /// - Parameter date: start time for the clock
    init(date: Date) {
        
        self.date = date
        formatTime()
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.date = self.date.addingTimeInterval(1)
            self.formatTime()
        }
    }
    
    private func formatTime() {
        time = Utils.format(date: self.date)
    }
    
    static func == (lhs: ClockViewModel, rhs: ClockViewModel) -> Bool {
        return lhs.time == rhs.time
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(time)
    }
}
