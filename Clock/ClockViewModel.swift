//
//  ClockViewModel.swift
//  Clock
//
//  Created by Chad Newbry on 11/14/22.
//

import Foundation

class ClockViewModel: ObservableObject, Hashable {

    
    
    @Published private(set) var times: [String] = [""]
    
    init(date: Date) {
        
        
//        self.offsets = offsets
//        
//        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
//            
//           
//            
//            for i in 0..<offsets.count {
//                
//                let offset = offsets[i]
//                
//                var date = Date()
//                let calendar = Calendar.current
//                let hour = calendar.component(.hour, from: date)
//                
//                let hourString = String(hour) + String(offset)
//                
//                let minutes = calendar.component(.minute, from: date)
//                let seconds = calendar.component(.second, from: date)
//                
//                self.times[i] = String(hourString) + ":" + String(minutes) + ":" + String(seconds)
//                
//            }
//        }
    }
    
    static func == (lhs: ClockViewModel, rhs: ClockViewModel) -> Bool {
        return lhs.times == rhs.times
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(times)
    }
}
