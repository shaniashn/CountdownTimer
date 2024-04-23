//
//  ContentView.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 24/09/23.
//  non native version

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var vm: CountDownViewModel
    
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    NavigationLink {
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
                                CountdownRow(event: event)
                            }
                            .onDelete(perform: vm.deleteEvents)
                            .onMove(perform: vm.moveEvents)
                        }
                        .listStyle(.inset)
                Spacer()
            }
            .navigationTitle("Active Countdown")
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CountDownViewModel())
    }
}
