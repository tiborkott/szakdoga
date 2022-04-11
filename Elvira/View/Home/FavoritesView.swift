//
//  FavoriteView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 19..
//

import SwiftUI

struct FavoritesView: View {
    @Environment(\.scenePhase) private var scenePhase
    @EnvironmentObject var favoritesViewModel: FavoritesViewModel
    let saveAction: ()->Void
    
    var body: some View {
        VStack{
            Text("Kedvencek")
                .font(.system(size: 20, weight: .bold))
                .frame(width: UIScreen.main.bounds.size.width * 0.9,
                        height: UIScreen.main.bounds.size.height * 0.1)
                .background(Color("MAV-Yellow"))
                .foregroundColor(Color.black)
                
            
            ScrollView(showsIndicators: false){
                ForEach($favoritesViewModel.favorites){ favorite in
                    FavoriteView(favorite: favorite.wrappedValue,
                                 notification: favorite.notification,
                                 enabled: favorite.enabled
                    )
                    .padding(10)
                }
            }
            .frame(minHeight: UIScreen.main.bounds.size.height * 0.4)
            .frame(maxHeight: UIScreen.main.bounds.size.height * 0.6)
        }
        .frame(width: UIScreen.main.bounds.size.width * 0.9)
        .background(Color("MAV-White") )
        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
        .shadow(radius: 10)
        .padding(.bottom, 100)
        .onChange(of: scenePhase) { phase in
            if phase == .inactive {
                saveAction()
            }
        }
        
    }
    
    
}

//struct FavoriteView_Previews: PreviewProvider {
//    static var previews: some View {
//        FavoriteView()
//    }
//}
