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
