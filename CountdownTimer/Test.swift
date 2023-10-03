//
//  Test.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 01/10/23.
//

import SwiftUI

struct Test: View {
    @State var showTxt: Bool = false
    
    var body: some View {
        Button("tap to show") {
            showTxt.toggle()
        }
        
        Text("Hello World")        
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
