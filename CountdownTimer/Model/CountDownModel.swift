//
//  CountDownModel.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 26/09/23.
//

import Foundation

struct Event: Identifiable {
//    var id: UUID = UUID()
    var id: Int
    var title: String
    var date: Date = Date()
    var remaining: [Int]?
    var timeLeft: String
    
    init(id: Int, title: String, date: Date, remaining: [Int], timeLeft: String = "Finish!") {
        self.id = id
        self.title = title
        self.date = date
        self.remaining = remaining
        self.timeLeft = timeLeft
    }
}

struct TimesRemaining {
    var day: Int
    var month: Int
}

let eventDate1 = DateComponents(
  year: 2007,
  month: 1,
  day: 9,
  hour: 10,
  minute: 00
)

var eventDate2 = DateComponents(year: 2024, month: 8, day: 29, hour: 2, minute: 34)

let eventDate3 = DateComponents(year: 2018, month: 3, day: 12, hour: 1, minute: 23)

var dummyEvent: [Event] = [
    Event(id: 1, title: "ultah", date: gregorianCalendar.date(from: eventDate1)!, remaining: [23]),
    Event(id: 2, title: "lahiran kongkong", date: gregorianCalendar.date(from: eventDate2)!, remaining: [24]),
    Event(id: 3, title: "kongkong ultah", date: gregorianCalendar.date(from: eventDate3)!, remaining: [25]),
]

var singleEvent: Event = Event(id: 4, title: "kongkong ultah", date: gregorianCalendar.date(from: eventDate1)!, remaining: [25])
