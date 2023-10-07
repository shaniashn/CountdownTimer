//
//  CountDownModel.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 26/09/23.
//

import Foundation

struct TheEvents: Identifiable {
    var id: UUID = UUID()
    var title: String
    var date: Date
//    var remaining: Date
//    var remaining: DateComponents
//    var remaining: TimesRemaining
    var remaining: String
}

struct TimesRemaining {
    var day: Int
    var month: Int
}
