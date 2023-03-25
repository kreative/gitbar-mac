//
//  TimelineType.swift
//  GitBar
//
//  Created by Armaan Gupta on 3/25/23.
//

import Foundation

enum TimelineType: String, Codable, CaseIterable {
    case today = "Today",
    thisWeek = "This Week",
    thisMonth = "This Month",
    thisYear = "This Year",
    allTime = "All Time"

    var type: String {
        switch self {
            case .today:
                return "today"
            case .thisWeek:
                return "week"
            case .thisMonth:
                return "month"
            case .thisYear:
                return "year"
            case .allTime:
                return "all"
        }
    }
}
