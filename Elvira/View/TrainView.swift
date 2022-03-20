//
//  TrainView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 02. 23..
//

import SwiftUI

struct TrainView: View {
    var from: String
    var fromtime: String
    var to: String
    var totime: String
    var details: [Detail]

    var body: some View {
            VStack {
                //Text(details[0].trainInfo?.info.components(separatedBy:" ")[0] ?? " ")

                HStack {
                    Image(systemName: "train.side.front.car").foregroundColor(.blue)
                        .padding(.leading, 10)
                        .padding(.bottom, 32)
                    VStack(alignment: .leading) {
                        Text(from)
                            .padding(.bottom, 4)
                        Text(fromtime)
                    }
                    .padding()
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text(to)
                            .padding(.bottom, 4)
                        Text(totime)
                    }
                    
                    NavigationLink(destination: DetailView(details: details)){
                        Image(systemName: "chevron.right").foregroundColor(Color("MAV-Blue"))
                    }
                    .padding()
                    
                }
            }
            .frame(width: UIScreen.main.bounds.size.width * 0.95,
                    height: UIScreen.main.bounds.size.height * 0.13)
            .background(Color("MAV-White"))
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .shadow(radius: 5)
        }
    
}

// TrainView_Previews: PreviewProvider {
//    static var previews: some View {
//        //TrainView()
//    }
//}
