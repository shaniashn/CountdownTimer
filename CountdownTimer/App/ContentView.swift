//
//  ContentView.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 24/09/23.
//  non native version

import SwiftUI

struct ContentView: View {
    @FocusState var focusedText: Bool
    @EnvironmentObject var vm: CountDownViewModel
    
    @StateObject var viewModel = CountDownViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    NavigationLink {
//                        NewCountdownView(viewModel: viewModel, focusedText: _focusedText)
                        NewCountdownView()
                    } label: {
                        Text("+ Add new Event")
                            .padding(20)
                            .foregroundColor(.white)
                            
                    }
                    .frame(maxWidth: .infinity)
                    .background(.primary)
                    .cornerRadius(10)
                }
                .padding()
                
                Divider()
                        List {
                            ForEach(vm.event) { event in
//                                CountdownRow(titleEvent: ev.title, dateEvent: ev.remaining!)
                                CountdownRow(event: event)
                            }
//                            .onDelete(perform: viewModel.deleteEvents)
                        }
                        .listStyle(.inset)
                Spacer()
            }
            .navigationTitle("Active Countdown")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CountDownViewModel())
    }
}
