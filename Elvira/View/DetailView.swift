//
//  DetailView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 08..
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var details: [Detail]
    
    var body: some View {
        ZStack{
            Color.clear
            VStack{
                Text("Details")
                //Text(details[0].trainInfo?.info ?? "default")
            }
            .frame(width: UIScreen.main.bounds.size.width * 0.9,
                     height: UIScreen.main.bounds.size.height * 0.6)
            .background(Color("MAV-White") )
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .shadow(radius: 5)
        }
        .offset(y: -100)
        .background(Color("MAV-LightGray"))
        .navigationBarTitle("")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                     Button(action: {
                         self.presentationMode.wrappedValue.dismiss()
                     }) {
                         Image(systemName: "chevron.backward").foregroundColor(Color("MAV-Blue"))
                     })
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView()
//    }
//}
