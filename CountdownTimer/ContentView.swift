//
//  ContentView.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 24/09/23.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        VStack {
            
            NavigationLink {
                
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
