//
//  SreachView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 02. 23..
//

//https://apiv2.oroszi.net/elvira?from=Cegléd&to=Zugló&date=2022.02.23

import SwiftUI

struct SearchView: View {
    @ObservedObject var searchViewModel = SearchViewModel()
    
    var body: some View {
            VStack{
                
                Text("Menetrend")
                    .font(.system(size: 20, weight: .bold))
                    .frame(width: UIScreen.main.bounds.size.width * 0.9,
                            height: UIScreen.main.bounds.size.height * 0.1)
                    .background(Color("MAV-Blue"))
                    .foregroundColor(Color.white)
                                    
                TextField("Honnan?",text: $searchViewModel.from)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                            
                                            
                TextField("Hova?",text: $searchViewModel.to)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Spacer()
                
                NavigationLink(destination: TrainListView(from: searchViewModel.from, to: searchViewModel.to)) {
                    Text("Keresés")
                        .frame(width: UIScreen.main.bounds.size.width * 0.5,
                                height: UIScreen.main.bounds.size.height * 0.05)
                        .background(Color("MAV-Yellow"))
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        .padding(.bottom, 20)
                }.disabled(!searchViewModel.isSreachable())
            }
            .frame(width: UIScreen.main.bounds.size.width * 0.9,
                    height: UIScreen.main.bounds.size.height * 0.5)
            .background(Color("MAV-White") )
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            .shadow(radius: 10)
            .padding(.bottom, 100)
            .padding(.leading, UIScreen.main.bounds.size.width * 0.05)
            .padding(.trailing, UIScreen.main.bounds.size.width * 0.05 )
    }
}


//struct SearchView_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchView()
//    }
//}

