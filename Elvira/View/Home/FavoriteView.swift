//
//  FavoriteView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 21..
//

import SwiftUI


struct FavoriteView: View {
    @EnvironmentObject var favoritesViewModel: FavoritesViewModel
    var favorite : Favorite
    var notification : Binding<Date>
    var enabled : Binding<Bool>
   
    var body: some View {
        VStack{
            HStack {
                Toggle("", isOn: self.enabled)
                    .toggleStyle(CheckToggleStyle())
                    .labelsHidden()
                    .onChange(of: enabled.wrappedValue, perform: { value in
                        favoritesViewModel.setNotifications()
                        favoritesViewModel.enabledToggled()
                    })
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
            HStack{
                
            }
          
            DatePicker("Értesítés ennyivel korábban:", selection: notification, displayedComponents: .hourAndMinute)
                .onChange(of: notification.wrappedValue, perform: { (value) in
                    favoritesViewModel.setNotifications()
                })
                .padding(10)
            
            Spacer()
        }
        .frame(minHeight: 240)
        .frame(width: UIScreen.main.bounds.size.width * 0.85)
        .background(Color("MAV-White"))
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        .shadow(radius: 5)
        
    }
}


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
