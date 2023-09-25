//
//  CountDownViewModel.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 26/09/23.
//

import SwiftUI

class CountDownViewModel: ObservableObject {
    @Published var event: [TheEvents] = [] //tambah array untuk collecting data
    
    func addEvents(title: String, date: Date) { //tujuannya adalah memasukkan 1 TheEvents (object) -> [TheEvents(), TheEvents()]
        var newEvent: TheEvents = TheEvents(title: title, date: date)
        event.append(newEvent)
    }
}
