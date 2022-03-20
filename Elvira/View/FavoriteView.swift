//
//  FavoriteView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 19..
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        VStack{
            Text("Kedvencek")
                .font(.system(size: 20, weight: .bold))
                //.font(.system(size: 15, weight: .bold))
                .frame(width: UIScreen.main.bounds.size.width * 0.9,
                        height: UIScreen.main.bounds.size.height * 0.1)
                .background(Color("MAV-Yellow"))
                .foregroundColor(Color.black)
                .offset(y: -70)
                
            Text("Vonat1 ")
                .frame(width: UIScreen.main.bounds.size.width * 0.8,
                        height: UIScreen.main.bounds.size.height * 0.2)
        }
        .frame(width: UIScreen.main.bounds.size.width * 0.9,
                height: UIScreen.main.bounds.size.height * 0.5)
        .background(Color("MAV-White") )
        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
        .shadow(radius: 10)
        .padding(.bottom, 100)
    }
}

//struct FavoriteView_Previews: PreviewProvider {
//    static var previews: some View {
//        FavoriteView()
//    }
//}
