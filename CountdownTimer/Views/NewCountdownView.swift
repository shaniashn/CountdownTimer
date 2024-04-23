//
//  NewCountdownView.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 25/09/23.
//

import SwiftUI

//var globalDate: Date = Date()

struct NewCountdownView: View {
    @EnvironmentObject var vm: CountDownViewModel
    @State var isPresented: Bool = false
    @State var selectedDate: Date = Date()
    @State var eventTitle: String = ""
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
                    Button(action: saveEvent, label: {
                        Text("Save")
                    })
                }
            }
            .alert("Event must be more than 3 character.", isPresented: $isPresented) {
                Text("OK")
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
//        var componentDate = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: selectedDate)
//        
//        var dateComp = DateComponents(calendar: calenComp.calendar, timeZone: TimeZone(identifier: "Asia/Jakarta"), year: calenComp.year, month: calenComp.month, day: calenComp.day, hour: calenComp.hour, minute: calenComp.minute, second: calenComp.second)
//        
//        var compToCalend = Calendar(identifier: .gregorian).date(from: selectedDateComp) ?? Date()
//        var woIdent = Calendar.current.date(from: selectedDateComp) ?? Date()
//
//        var selectedDateComp0 = Calendar.current.date(byAdding: componentDate, to: selectedDate) ?? Date()
//        
//        
////        print("component -> ", compToCalend)
////        print("current component -> ", woIdent)
////        print("selectedDate -> ", selectedDate)
////        print("selectedDate desc -> ", selectedDate.description(with: .autoupdatingCurrent))
////        print("compToCalend desc -> ", compToCalend.description(with: .autoupdatingCurrent))
////        print("woIdent desc -> ", woIdent.description(with: .autoupdatingCurrent))
//        
//        print("componentDate -> ", componentDate)
//        
//        
////        return changedDate // string
//        return compToCalend
//    }
    
//    func remainingTime(date: Date) -> String {
//        let dateRemaining = Calendar.current.dateComponents([.day,.month,.year,.hour], from: Date(), to: date)
//        
//        var year = dateRemaining.year ?? 0
//        var month = dateRemaining.month ?? 0
//        var day = dateRemaining.day ?? 0
//        var hour = dateRemaining.hour ?? 0
//        
//        var remaining: [Int] = [year, month, day, hour]
////        var remaining: [Int] = [hour, day, month, year]
//        
//        func notZeroChecker(remain: [Int]) -> [Int]{
//            print(remaining)
//            for rem in 0..<remaining.count {
//                if remaining[0] == 0 {
//                    remaining.remove(at: 0)
//                    print("remaining ", remaining)
//                }
//            }
//            
//            return remaining
//        }
//        
//        var timeCount = notZeroChecker(remain: remaining)
//        print("timeCount ", timeCount)
//        
//        var texts = ["\(hour) hour ", "\(day) day ", "\(month) month ", "\(year) year "]
////        var texts = ["\(year) year ", "\(month) month ", "\(day) day ", "\(month) month ", "\(hour) hour "]
//        
//        
//        var textRemaining: String = ""
//        
//        for i in 0..<timeCount.count {
//            print("timeCount count ", timeCount.count)
//            textRemaining += texts[i]
//        }
//        
////        switch(timeCount.count){
////        case 1:
////            textRemaining = "\(hour) hour"
////        case 2:
////            textRemaining = "\(day) day \(hour) hour"
////        default:
////            textRemaining = ""
////        }
//        print(textRemaining)
//        return textRemaining
//    }
    
    func saveEvent(){
        if checkAppropriate() {
            vm.addEvent(title: eventTitle, date: selectedDate)
        }
    }
    
    func checkAppropriate() -> Bool{
        if eventTitle.count < 3 {
            isPresented = true
            return false
        }
        
        return true
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
