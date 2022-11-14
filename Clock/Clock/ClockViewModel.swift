//
//  ClockViewModel.swift
//  Clock
//
//  Created by Chad Newbry on 11/14/22.
//

import Foundation

class ClockViewModel: ObservableObject, Hashable {
    
    // todo: move date format to util function and use for this initilizer
    @Published private(set) var time: String = ""
    
    private var date: Date
    
    init(date: Date) {
        
        self.date = date
        formatTime()
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.date = self.date.addingTimeInterval(1)
            self.formatTime()
        }
    }
    
    private func formatTime() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .none
        dateFormatter.timeStyle = .medium
        
        time = dateFormatter.string(from: date)
    }
    
    static func == (lhs: ClockViewModel, rhs: ClockViewModel) -> Bool {
        return lhs.time == rhs.time
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(time)
    }
    
    

}
