//
//  ContentView.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 24/09/23.
//

import SwiftUI

struct ContentView: View {
    @FocusState var focusedText: Bool
    
    @StateObject var viewModel = CountDownViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    NavigationLink {
                        NewCountdownView(viewModel: viewModel, focusedText: _focusedText)
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
                
                ScrollView {
                    VStack(spacing: 15){
                        ForEach(viewModel.event) { ev in
//                            CountdownRow(viewModel: viewModel, titleEvent: ev.title, dateEvent: ev.date)
                            CountdownRow(viewModel: viewModel, titleEvent: ev.title, dateEvent: ev.remaining)
                        }
                        .onDelete(perform: viewModel.deleteEvents)
                    }
                    
                    .padding()
                }
                Spacer()
            }
            .navigationTitle("Active Countdown")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
