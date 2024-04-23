//
//  CountdownTimerApp.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 24/09/23.
//

import SwiftUI

@main
struct CountdownTimerApp: App {
    @StateObject var vm: CountDownViewModel = CountDownViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
                .fontDesign(.rounded)
        }
    }
}
