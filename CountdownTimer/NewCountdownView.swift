//
//  NewCountdownView.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 25/09/23.
//

import SwiftUI

struct NewCountdownView: View {
    @ObservedObject var viewModel: CountDownViewModel
    
    @Environment(\.dismiss) var isPresented
    
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
                    Button("Save"){
                        viewModel.addEvents(title: eventTitle, date: selectedDate)
                        isPresented.callAsFunction()
                    }
                }
            }
        }
        
    }
}

//struct NewCountdownView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewCountdownView()
//    }
//}
