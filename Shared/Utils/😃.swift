//
//  😃.swift
//  When2Run
//
//  Created by W-Mai on 2023/6/23.
//

import Foundation

struct 🔠🔠🔠 {
    static let 📅😎: DateFormatter = {
        let 🔠 = DateFormatter()
        🔠.timeZone = .gmt
        🔠.dateFormat = "HH:mm:ss.SSS"
        return 🔠
    }()
    
    static let 📅: DateFormatter = {
        let 🔠 = DateFormatter()
        🔠.timeZone = .gmt
        🔠.dateFormat = "HH:mm:ss"
        return 🔠
    }()
    
    static let 💲: NumberFormatter = {
        let 🔠 = NumberFormatter()
        🔠.numberStyle = .currency
        return 🔠
    }()
}

func 👈🕐📅(_ 🕐: Int, _ 🕜: Int) -> Date {
    let calendar = Calendar.current
    
    var components = calendar.dateComponents([.year, .month, .day], from: Date())
    components.hour = 🕐
    components.minute = 🕜
    
    return calendar.date(from: components)!
}

extension Date {
    
    static func fromHourMinute(_ hour: Int, _ minute: Int) -> Date {
        let calendar = Calendar.current

        var dateComponents = DateComponents()
        dateComponents.hour = hour
        dateComponents.minute = minute

        let date = calendar.date(from: dateComponents)!

        return date
    }
    
    static func fromHourMinute(_ interval: TimeInterval) -> Date {
        let hour = Int(interval / 3600)
        let minute = Int((interval.truncatingRemainder(dividingBy: 3600)) / 60)

        return Date.fromHourMinute(hour, minute)
    }

    func toHourMinute() -> TimeInterval {
        let calendar = Calendar.current

        let components = calendar.dateComponents([.hour, .minute], from: self)
        let seconds = TimeInterval(components.hour! * 3600 + components.minute! * 60)

        return seconds
    }

}
