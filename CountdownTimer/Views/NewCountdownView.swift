//
//  NewCountdownView.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 25/09/23.
//

import SwiftUI

//var globalDate: Date = Date()

struct NewCountdownView: View {
//    @ObservedObject var viewModel: CountDownViewModel
    @EnvironmentObject var vm: CountDownViewModel
    
    @Environment(\.dismiss) var isPresented
    
    @State var selectedDate: Date = Date()
    
    @State var eventTitle: String = ""
//    var calend = Calendar.current.

    
    @FocusState var focusedText: Bool
    
    
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20){
                TextField("Enter title", text: $eventTitle)
                    .focused($focusedText)
                    .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 0))
                    .background(RoundedRectangle(cornerRadius: 10) .stroke(lineWidth: 2))
                DatePicker(selection: $selectedDate) {
                    Image(systemName: "calendar.badge.plus")
                        .font(.system(size: 30))
                }
                Spacer()
            }
            .navigationTitle("New Countdown")
            .navigationBarTitleDisplayMode(.inline)
            .padding()
            .toolbar {
                ToolbarItem(placement: .confirmationAction){
                    Button("Save"){
                            //                        viewModel.addEventss(title: eventTitle, date: selectedDate)
                            //                        globalDate = selectedDate
                            //                        isPresented.callAsFunction()
                            //                        vm.
                        
                            //                        selectedDate.description(with: .autoupdatingCurrent)
                            //                        print(format.string(from: selectedDate))
                        
//                        vm.addEvent(title: eventTitle, date: selectedDate)
                        remainingTime(date: selectedDate)
                    }
                }
            }
        }
        
    }
    
//    func changeFormat(date: Date) -> Date {
//        
//        var format: DateFormatter {
//            var formatter = DateFormatter()
//            formatter.timeZone = .none
//            formatter.dateStyle = .full
//            formatter.timeStyle = .full
//            return formatter
//        }
//        
//        var selectedDateComp = Calendar(identifier: .gregorian).dateComponents([
//            .calendar,
//            .timeZone,
//            .year,
//            .month,
//            .day,
//            .hour,
//            .minute,
//        ], from: selectedDate)
//        
////        var changedDate = format.string(from: selectedDate) //string
//        
//        var calend = Calendar.current.component(.minute, from: selectedDate)
//        var calenComp = Calendar.current.dateComponents(in: .autoupdatingCurrent, from: selectedDate)
//        var cskd = Calendar.current.dateComponents([.hour, .minute], from: selectedDate)
//        
//        var dateComp = DateComponents(calendar: calenComp.calendar, timeZone: TimeZone(identifier: "Asia/Jakarta"), year: calenComp.year, month: calenComp.month, day: calenComp.day, hour: calenComp.hour, minute: calenComp.minute, second: calenComp.second)
//        
//        var compToCalend = Calendar(identifier: .gregorian).date(from: selectedDateComp) ?? Date()
//        var woIdent = Calendar.current.date(from: selectedDateComp) ?? Date()
//
//        var selectedDateComp0 = Calendar.current.date(byAdding: /*selectedDateComp*/ cskd, to: selectedDate) ?? Date()
//        
//        print("selectedDate -> ", selectedDate)
//        print("component -> ", compToCalend)
//        print("current component -> ", woIdent)
//        print("selectedDate desc -> ", selectedDate.description(with: .autoupdatingCurrent))
//        print("compToCalend desc -> ", compToCalend.description(with: .autoupdatingCurrent))
//        print("woIdent desc -> ", woIdent.description(with: .autoupdatingCurrent))
//        
//        
////        return changedDate // string
//        return compToCalend
//    }
    
    func remainingTime(date: Date) -> String {
        let dateRemaining = Calendar.current.dateComponents([.day,.month,.year,.hour], from: Date(), to: date)
        
        var year = dateRemaining.year ?? 0
        var month = dateRemaining.month ?? 0
        var day = dateRemaining.day ?? 0
        var hour = dateRemaining.hour ?? 0
        
        var remaining: [Int] = [year, month, day, hour]
//        var remain: [String : Int] = [:]
//        if notZeroChecker(component: year) {
//            
//        }
        
        func notZeroChecker(remain: [Int]) -> [Int]{
            print(remaining)
            for rem in remaining {
                if remaining[rem] == 0 {
                    remaining.remove(at: rem)
                    print(remaining)
                }
            }
            
            return remain
        }
        
        var timeCount = notZeroChecker(remain: remaining)
        
        var texts = ["\(day) day", "\(hour) hour"]
        
        for i in 0..<timeCount.count {
            
        }
        
        var textRemaining: String = ""
        
        switch(timeCount.count){
        case 1:
            textRemaining = "\(hour) hour"
        case 2:
            textRemaining = "\(day) day \(hour) hour"
        default:
            textRemaining = ""
        }
        
        return textRemaining
    }
    
//    func notZeroChecker(component: Int) -> Bool {
//        if component > 0 {
//            return true
//        }
//        return false
//    }
    
    
}

struct NewCountdownView_Previews: PreviewProvider {
    static var previews: some View {
        NewCountdownView()
    }
}
