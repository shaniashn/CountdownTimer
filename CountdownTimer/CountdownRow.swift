//
//  CountdownRow.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 28/09/23.
//  non native version

import SwiftUI

struct CountdownRow: View {
    @ObservedObject var viewModel: CountDownViewModel
    
    @State var titleEvent: String
//    @State var dateEvent: Date
//    @State var dateEvent: DateComponents
//    @State var dateEvent: Int
    @State var dateEvent: [Int]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2){
                Text(titleEvent)
                    .font(.system(size: 20, weight: .medium))
                    .fontWeight(.semibold)
//                Text(dateEvent, style: .offset)
                
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
            }
            Spacer()
            Image(systemName: "chevron.forward")
                .foregroundColor(.black)
            
//            Button {
//
//            } label: {
//                Text("press date")
//            }

        }
        .padding(15)
        .frame(maxWidth: .infinity)
        .background {
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 2)
        }
    }
    
    
}



//
//struct CountdownRow_Previews: PreviewProvider {
//    static var previews: some View {
//        CountdownRow
//    }
//}
