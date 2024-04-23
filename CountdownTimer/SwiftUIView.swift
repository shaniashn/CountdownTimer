//
//  SwiftUIView.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 07/10/23.
//

import SwiftUI

struct SwiftUIView: View {
    @State var selectedDate: Date
    
    
    
    var body: some View {
        NavigationStack {
            VStack {
                DatePicker("Select Date", selection: $selectedDate)
                Button("press here") {
//                    print(viewModel.getRemainings(date: selectedDate))
                    print(selectedDate)
                }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(selectedDate: Date())
    }
}
