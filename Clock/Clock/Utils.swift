//
//  Utils.swift
//  Clock
//
//  Created by Chad Newbry on 11/14/22.
//

import Foundation

/// Helper utilties used throughout the application
class Utils {
    /// Given a date returns a string representation of the date as a time
    /// - Parameter date: date to convert
    /// - Returns: Converted string
    static func format(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .none
        dateFormatter.timeStyle = .medium
        return dateFormatter.string(from: date)
    }
}
