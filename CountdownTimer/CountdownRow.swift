//
//  CountdownRow.swift
//  CountdownTimer
//
//  Created by Sha Nia Siahaan on 28/09/23.
//

import SwiftUI

struct CountdownRow: View {
    @ObservedObject var viewModel: CountDownViewModel
    
    @State var titleEvent: String
    @State var dateEvent: Date
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2){
                Text(titleEvent)
                    .font(.system(size: 20, weight: .medium))
                    .fontWeight(.semibold)
//                Text(viewModel.getDate(date: dateEvent))
//                    .foregroundColor(.secondary)
            }
//            Spacer()
            Image(systemName: "chevron.forward")
                .foregroundColor(.black)
            Button {
                viewModel.getDate(date: dateEvent)
            } label: {
                Text("press date")
            }

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
