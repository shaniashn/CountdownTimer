//
//  CountdownRow.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 28/09/23.
//  non native version

import SwiftUI

struct CountdownRow: View {
//    @ObservedObject var viewModel: CountDownViewModel
    
//    @State var titleEvent: String
//    @State var dateEvent: Date
//    @State var dateEvent: DateComponents
//    @State var dateEvent: Int
//    @State var dateEvent: [Int]
    
    var event: Event 
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2){
                Text(event.title)
                    .font(.system(size: 20, weight: .medium))
                    .fontWeight(.semibold)
                
                HStack {
//                    if dateEvent.count == 1 {
//                        Text("\(dateEvent[0]) second")
//                            .font(.system(size: 14, weight: .regular))
//                    } else if dateEvent.count == 2 {
//                        Text("\(dateEvent[0]) second \(dateEvent[1]) hour")
//                            .font(.system(size: 14, weight: .regular))
//                    } else if dateEvent.count == 3 {
//                        Text("\(dateEvent[0]) second \(dateEvent[1]) hour \(dateEvent[2]) day")
//                            .font(.system(size: 14, weight: .regular))
//                    }
            
                    
//                    ForEach(dateEvent, id: \.self) { components in
//                        Text("\(components)")
                        /*
                         jika komponennya 1 berarti hour
                         jika komponennya 2 berarti hour day
                         jika komponennya 3 berarti hour day month
                         dst.
                         */
//                    }
                }
//                .onReceive(timer) { _ in
//                }
            }
            Spacer()
            Image(systemName: "chevron.forward")
                .foregroundColor(.black)

        }
        .padding(15)
        .frame(maxWidth: .infinity)
        .background {
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 2)
        }
    }
    
    
}




struct CountdownRow_Previews: PreviewProvider {
    static var previews: some View {
        CountdownRow(event: singleEvent)
    }
}
