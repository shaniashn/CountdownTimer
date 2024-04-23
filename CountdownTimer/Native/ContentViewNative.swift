//
//  ContentViewNative.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 07/10/23.
//

import SwiftUI

struct ContentViewNative: View {
    @FocusState var focusedText: Bool
    
    @StateObject var viewModel = CountDownViewModel()
    
    
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
//                    VStack {
                        NavigationLink {
//                            NewCountdownView(viewModel: viewModel, focusedText: _focusedText)
                        } label: {
                            Text("+ Add new Event")
                                .padding(20)
                                .foregroundColor(.white)
                                
                        }
                        .frame(maxWidth: .infinity)
                        .background(.primary)
                        .cornerRadius(10)
//                    }
//                    .padding()
                
//                    Divider()
                    ForEach(viewModel.event) { ev in
                        CountDownRowNative(viewModel: viewModel, titleEvent: ev.title, dateEvent: ev.remaining!)
                    }
                    .onDelete(perform: viewModel.deleteEvents)
                }
                
            }
            .navigationTitle("Active Countdown")
        }
    }
}

struct ContentViewNative_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewNative()
    }
}

