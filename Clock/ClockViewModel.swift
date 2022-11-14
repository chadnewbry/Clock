//
//  ClockViewModel.swift
//  Clock
//
//  Created by Chad Newbry on 11/14/22.
//

import Foundation

class ClockViewModel: ObservableObject, Hashable {

    @Published private(set) var time: String
    
    init(date: Date) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .none
        dateFormatter.timeStyle = .medium
        
        time = dateFormatter.string(from: date)
        
//        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
//            
//           
//            
//           
//                
//      
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
        return lhs.time == rhs.time
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(time)
    }
}
