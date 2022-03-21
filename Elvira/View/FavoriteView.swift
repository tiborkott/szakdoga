//
//  FavoriteView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 21..
//

import SwiftUI

struct FavoriteView: View {
    @State private var when = Date.now
    
    var body: some View {
        VStack{
            HStack {
                Text("A vonat neve")
                    .padding(10)
                Spacer()
                Text("A vonat típusa")
                    .padding(10)
            }
            HStack {
                Text("Honnan")
                    .padding(10)
                Spacer()
                Text("Hova")
                    .padding(10)
            }
            HStack{
                Text("18:00")
                    .padding(10)
                Spacer()
                Text("20:00")
                    .padding(10)
            }
            DatePicker("Értesítés ennyivel korábban:", selection: $when, displayedComponents: .hourAndMinute)
                .padding(10)
        }
        .frame(width: UIScreen.main.bounds.size.width * 0.85,
                height: UIScreen.main.bounds.size.height * 0.35)
        .background(Color("MAV-White"))
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        .shadow(radius: 5)
        .padding(10)
    }
}

//struct FavoriteView_Previews: PreviewProvider {
//    static var previews: some View {
//        FavoriteView()
//    }
//}
