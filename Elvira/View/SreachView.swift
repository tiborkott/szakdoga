//
//  SreachView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 02. 23..
//

import SwiftUI

//
//  ContentView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 02. 14..
//

//https://apiv2.oroszi.net/elvira?from=Cegléd&to=Zugló&date=2022.02.17

import SwiftUI

struct SearchView: View {
    @State private var from: String = ""
    @State private var to: String = ""
    @State private var keyboardHeight: CGFloat = 0
    
    var body: some View {
        
        ZStack {
            Color.clear
            VStack{
              
                Text("Menetrend")
                        .font(.subheadline)
                        .frame(width: UIScreen.main.bounds.size.width * 0.9,
                               height: UIScreen.main.bounds.size.height * 0.1)
                        .background(Color("MAV-Blue"))
                        .foregroundColor(Color.white)
                
               
                TextField("Honnan?",text: $from)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(Color.black)
                
                TextField("Hova?",text: $to)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(Color.black)
               
                Spacer()
                
                
                Button("Keresés") {
                    //Action
                }
                .frame(width: UIScreen.main.bounds.size.width * 0.5,
                        height: UIScreen.main.bounds.size.height * 0.05)
                .background(Color("MAV-Yellow"))
                .foregroundColor(Color.black)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                .padding(.bottom, 20)
                
            }
            .frame(width: UIScreen.main.bounds.size.width * 0.9,
                   height: UIScreen.main.bounds.size.height * 0.5)
            
            .background(Color.white )
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            .shadow(radius: 10)
            
            
        }
        .offset(y: -50)
        .background(
            Image("mav_bg")
                .resizable()
                .scaledToFill()
            )
        .ignoresSafeArea()
    }
}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

