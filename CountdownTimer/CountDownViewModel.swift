//
//  CountDownViewModel.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 26/09/23.
//

import SwiftUI

class CountDownViewModel: ObservableObject {
    @Published var event: [TheEvents] = [] //tambah array untuk collecting data
    @Published var timesRemain: [TimesRemaining] = []
    
    func addEvents(title: String, date: Date) { //tujuannya adalah memasukkan 1 TheEvents (object) -> [TheEvents(), TheEvents()]
        let remainings = getDate(date: date) //remainings akan menerima getDate dalam bentuk komponen date
//        let remainings: TimesRemaining = TimesRemaining(day: <#T##Int#>, month: <#T##Int#>)
        
//        let remainingss = test(date: date)
//        let remainingss = formatDate(date: date)
        
        
        let newEvent: TheEvents = TheEvents(title: title, date: date, remaining: remainings)
        event.append(newEvent)
    }
    
    func deleteEvents(index: IndexSet) {
        event.remove(atOffsets: index)
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

    func getDatePerComponents(date: Date) -> DateComponents {
        let date = Calendar.current.dateComponents([ .year, .month, .day], from: Date(), to: date)
        
//        if date.month != 0 {
//            return date
//        }
        
        return date
    }
    
    func getDay(date: Date) -> Int {
        let date = Calendar.current.dateComponents([ .year, .month, .day], from: Date(), to: date)
        let day = date.day ?? 0
        
        return day
    }
    
    func getMonth(date: Date) -> Int {
        let date = Calendar.current.dateComponents([ .year, .month, .day], from: Date(), to: date)
        let month = date.month ?? 0
        
        return month
    }
    
    func test(date: Date) -> DateComponents {
        let theDate = Calendar.current.dateComponents([ .year, .month, .day], from: Date(), to: date)
        let iniDay = theDate.day ?? 0
        let iniMonth = theDate.month ?? 0
        let iniYear = theDate.year ?? 0
        var s = DateComponents()
        
        if iniDay != 0 {
            s.day = iniDay
        }
        
        if iniMonth != 0 {
            s.month = iniMonth
        }
        
        if iniYear != 0 {
            s.year = iniYear
        }
        print("s is ", s)
        
        return s
    }
    
    func formatDate(date: Date) -> Date{
        let tm = test(date: date)
        let formatter = DateFormatter()
        let finDate = Calendar.current.date(from: tm) //keluarannya date
        
    
        print(finDate ?? "x")
        
        return finDate!
    }
    
}
