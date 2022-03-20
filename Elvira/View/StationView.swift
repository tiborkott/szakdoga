//
//  StationView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 20..
//

import SwiftUI

struct StationView: View {
    @State var detail : Detail
    
    var body: some View {
        VStack{
            HStack{
                Text(detail.from)
                    .padding(.leading, 10)
                Spacer()
                Text(detail.dep)
                    .padding(.trailing, 10)
            }
        }
        .frame(width: UIScreen.main.bounds.size.width * 0.8,
                height: UIScreen.main.bounds.size.height * 0.13)
        .background(Color("MAV-White"))
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        .shadow(radius: 5)
    }
}

//struct StationView_Previews: PreviewProvider {
//    static var previews: some View {
//        StationView()
//    }
//}
