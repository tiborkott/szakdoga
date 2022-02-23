//
//  TrainView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 02. 23..
//

import SwiftUI

struct TrainView: View {
    var body: some View {
        VStack {
            
            HStack {
                VStack {
                    Text("Honnan")
                    Text("07:26")
                }
                .padding()
                Spacer()
                VStack {
                    Text("Hova")
                    Text("08:30")
                }
                .padding()
            }
        }
        .frame(width: UIScreen.main.bounds.size.width * 0.9,
                height: UIScreen.main.bounds.size.height * 0.12)
        .background(Color("MAV-LightGray"))
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        .shadow(radius: 5)
    }
    
}

struct TrainView_Previews: PreviewProvider {
    static var previews: some View {
        TrainView()
    }
}
