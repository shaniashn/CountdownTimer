//
//  CountDownViewModel.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 26/09/23.
//

import SwiftUI

class CountDownViewModel: ObservableObject {
    @Published var event: [Event] = [
        Event(id: 1, title: "ultah", date: gregorianCalendar.date(from: eventDate1)!, remaining: [23]),
        Event(id: 2, title: "lahiran kongkong", date: gregorianCalendar.date(from: eventDate2)!, remaining: [24]),
        Event(id: 3, title: "kongkong ultah", date: gregorianCalendar.date(from: eventDate3)!, remaining: [25]),
    ]
    
    @Published var eventqq: [Event] = [] //tambah array untuk collecting data
    @Published var timesRemain: [TimesRemaining] = []
    
    func addEvent(title: String, date: Date){
        print(date.description(with: .autoupdatingCurrent))
        let newEvent = Event(id: 5, title: title, date: date, remaining: [20])
        event.append(newEvent)
    }
    
//    func changeFormat(date: Date) -> String {
//        var format: DateFormatter {
//            var formatter = DateFormatter()
//            formatter.timeZone = .none
//            formatter.dateStyle = .medium
//            formatter.timeStyle = .short
//            return formatter
//        }
//        
//        var changedDate = format.string(from: date)
////        var changeFormat = format.date(from: localDate)
////        print(changedDate)
//        
//        return changedDate
//    }
    
    func addEventss(title: String, date: Date) { //tujuannya adalah memasukkan 1 TheEvents (object) -> [TheEvents(), TheEvents()]
//        let remainings = getDate(date: date) //remainings akan menerima getDate dalam bentuk komponen date
//        let remainings: TimesRemaining = TimesRemaining(day: <#T##Int#>, month: <#T##Int#>)
        
//        let remainingss = test(date: date)
//        let remainingss = formatDate(date: date)
        
        let remainings = getDatePerComponents(date: date)
        
        // MARK: -
//       mungkin kepake let newEvent: Event = Event(id: , title: title, date: date, remaining: remainings)
//        mungkin kepake event.append(newEvent)
    }
    
    func deleteEvents(index: IndexSet) {
        eventqq.remove(atOffsets: index)
    }
    
    func getDate(date: Date) -> String {
        let date = Calendar.current.dateComponents([ .year, .month, .day, .hour], from: Date(), to: date)
//        let year = date.year ?? 0
//        var month = date.month ?? 0
//        var weekOfMonth = date.weekOfMonth ?? 0
//        var weekOfYear = date.weekOfYear ?? 0
        let day = date.day ?? 0
        let month = date.month ?? 0
//        let year = date.year ?? 0
        let hour = date.hour ?? 0

        let finalDate: String = "\(month) month \(day) day \(hour) hour"
        
        return finalDate
    }

    func getDatePerComponents(date: Date) -> [Int] {
        let date = Calendar.current.dateComponents([ .year, .month, .day, .hour, .second], from: Date(), to: date)
        var finalDate: [Int] = []
        
        let second = date.second ?? 0
        let hour = date.hour ?? 0
        let day = date.day ?? 0
        let month = date.month ?? 0
        let year = date.year ?? 0
        
        if second != 0 {
            finalDate.append(second)
        }
        
        if hour != 0 {
            finalDate.append(hour)
        }
        
        if day != 0 {
            finalDate.append(day)
        }
        return finalDate
    }

    
}
