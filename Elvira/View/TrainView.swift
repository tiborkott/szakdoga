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
                HStack {
                    VStack(alignment: .leading) {
                        Label(from, systemImage: "").foregroundColor(Color.black)
                        Label(fromtime, systemImage: "").foregroundColor(Color.black)
                    }
                    .padding()
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Label(to, systemImage: "").foregroundColor(Color.black)
                        Label(totime, systemImage: "").foregroundColor(Color.black)
                    }
                    
                    NavigationLink(destination: DetailView(details: details)){
                        Image(systemName: "chevron.right").foregroundColor(Color("MAV-Blue"))
                    }
                    .padding()
                    
                }
            }
            .frame(width: UIScreen.main.bounds.size.width * 0.95,
                    height: UIScreen.main.bounds.size.height * 0.14)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .shadow(radius: 5)
        }
    
}

// TrainView_Previews: PreviewProvider {
//    static var previews: some View {
//        //TrainView()
//    }
//}
