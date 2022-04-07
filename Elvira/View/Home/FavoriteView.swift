//
//  FavoriteView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 21..
//

import SwiftUI

struct CheckToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Label {
                configuration.label
            } icon: {
                Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(configuration.isOn ? Color("MAV-Blue") : .secondary)
                    .accessibility(label: Text(configuration.isOn ? "Checked" : "Unchecked"))
                    .imageScale(.large)
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct FavoriteView: View {
    @State private var when = Date.now
    @State private var toggle = true
    @EnvironmentObject var favoritesViewModel: FavoritesViewModel
    
    var favorite: Favorite
    var body: some View {
        VStack{
            HStack {
                Toggle("",isOn: $toggle)
                    .toggleStyle(CheckToggleStyle())
                    .labelsHidden()
                    .padding(10)
                Spacer()
                Text(favorite.type)
                    .font(Font.headline.weight(.bold))
                Spacer()
                Button () {
                    favoritesViewModel.deleteFavorite(favorite: favorite)
                }label: {
                    Image(systemName: "trash").foregroundColor(Color.red)
                        .padding(10)
                }
            }
            
            Rectangle()
                .strokeBorder(Color("MAV-Black"), style: StrokeStyle(lineWidth: 2, dash: [10]))
                .frame(width: UIScreen.main.bounds.size.width * 0.80, height: 2)
    
            
            HStack {
                Text(favorite.from)
                    .padding(10)
                Spacer()
                Text(favorite.to)
                    .padding(10)
            }
            HStack{
                Text(favorite.department)
                    .padding(10)
                Spacer()
                Text(favorite.arrival)
                    .padding(10)
            }
            DatePicker("Értesítés ennyivel korábban:", selection: $when, displayedComponents: .hourAndMinute)
                .padding(10)
        }
        .frame(width: UIScreen.main.bounds.size.width * 0.85,
                height: UIScreen.main.bounds.size.height * 0.5)
        .background(Color("MAV-White"))
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        .shadow(radius: 5)
        
    }
}

//struct FavoriteView_Previews: PreviewProvider {
//    static var previews: some View {
//        FavoriteView()
//    }
//}
