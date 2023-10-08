//
//  CountDownRowNative.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 08/10/23.
//  native version

import SwiftUI

struct CountDownRowNative: View {
    @ObservedObject var viewModel: CountDownViewModel
    
    @State var titleEvent: String
    @State var dateEvent: [Int]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2){
            Text(titleEvent)
                .font(.system(size: 18, weight: .medium))
                .fontWeight(.semibold)
            HStack {
                if dateEvent.count == 1 {
                    Text("\(dateEvent[0]) hour")
                        .font(.system(size: 14, weight: .regular))
                } else if dateEvent.count == 2 {
                    Text("\(dateEvent[0]) hour \(dateEvent[1]) day")
                        .font(.system(size: 14, weight: .regular))
                } else if dateEvent.count == 3 {
                    Text("\(dateEvent[0]) hour \(dateEvent[1]) day \(dateEvent[2]) month")
                        .font(.system(size: 14, weight: .regular))
                }
            }
        }
    }
}

//struct CountDownRowNative_Previews: PreviewProvider {
//    static var previews: some View {
//        CountDownRowNative()
//    }
//}
