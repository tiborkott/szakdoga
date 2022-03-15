//
//  SreachView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 02. 23..
//

//https://apiv2.oroszi.net/elvira?from=Cegléd&to=Zugló&date=2022.02.23

import SwiftUI

struct SearchView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var from: String = ""
    @State private var to: String = ""
    @State private var keyboardHeight: CGFloat = 0
    @State private var fromSearch: String = ""
    @State private var toSearch: String = ""
    
    var body: some View {
        NavigationView{
            ZStack {
                Color.clear
                VStack{
                    Label("Menetrend", systemImage: "")
                        .font(.title3)
                        .frame(width: UIScreen.main.bounds.size.width * 0.9,
                                   height: UIScreen.main.bounds.size.height * 0.1)
                        .background(Color("MAV-Blue"))
                        .foregroundColor(Color.white)
                
                    
                    TextField("Honnan?",text: $from)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        
                    TextField("Hova?",text: $to)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                   
                    Spacer()
                    
                    NavigationLink(destination: TrainListView(from: from, to: to)) {
                        Text("Keresés")
                        .frame(width: UIScreen.main.bounds.size.width * 0.5,
                                height: UIScreen.main.bounds.size.height * 0.05)
                        .background(Color("MAV-Yellow"))
                        .foregroundColor(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        .padding(.bottom, 20)
                        
                    }
                    
                    
                }
                .frame(width: UIScreen.main.bounds.size.width * 0.9,
                       height: UIScreen.main.bounds.size.height * 0.5)
                
                .background(Color("MAV-White") )
                .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                .shadow(radius: 10)
                
                
            }
            .offset(y: -50)
            .background(Color("MAV-LightGray") )
            .ignoresSafeArea()
        }
   }
}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

