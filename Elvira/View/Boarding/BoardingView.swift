//
//  BoardingView.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 03. 22..
//

import SwiftUI

struct BoardingView: View {
    @Binding var onboarding: Bool
    
    var body: some View{
        TabView{
            VStack {
                HStack{
                    Text("Üdv az")
                        .foregroundColor(Color("MAV-Black"))
                        .font(.title2)
                        
                    Text("Elvira")
                        .foregroundColor(Color("MAV-Blue"))
                        .font(.title2)
                    
                    Text("alkalmazásban!")
                        .foregroundColor(Color("MAV-Black"))
                        .font(.title2)
                }
            }
            .frame(width: UIScreen.main.bounds.size.width * 0.9,
                   height: UIScreen.main.bounds.size.height * 0.5)
            .background(Color("MAV-White"))
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .shadow(radius: 5)
            .tag(Color("MAV-Blue"))

            
            VStack {
                Text("Menetrend egy érintéssel!")
                    .tint(Color("MAV-Black"))
                    .font(.title2)
                    .padding()
                
                Rectangle()
                    .strokeBorder(Color("MAV-Blue"), style: StrokeStyle(lineWidth: 2, dash: [10]))
                    .frame(width: UIScreen.main.bounds.size.width * 0.64, height: 2)
                
                
                HStack(alignment: .center, spacing: 0.0) {
                    Image(systemName: "train.side.front.car").foregroundColor(Color("MAV-Blue"))
                        .padding(.leading, 30)
                    Text("  Vonat menetrend")
                        .tint(Color("MAV-Black"))
                    Spacer()
                }
                .padding(.all)
                
                HStack {
                    Image(systemName: "heart.fill").foregroundColor(Color("MAV-Blue"))
                        .padding(.leading, 30)
                    Text("  Kedvenc vonatok mentése")
                        .tint(Color("MAV-Black"))
                    Spacer()
                }
                .padding(.all)
              
                
                HStack {
                    Image(systemName: "alarm.fill").foregroundColor(Color("MAV-Blue"))
                        .padding(.leading, 30)
                    Text("  Értesítések az induláshoz")
                        .tint(Color("MAV-Black"))
                    Spacer()
                }
                .padding(.all)
            }
            .frame(width: UIScreen.main.bounds.size.width * 0.9,
                   height: UIScreen.main.bounds.size.height * 0.5)
            .background(Color("MAV-White"))
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .shadow(radius: 5)
            
            VStack {
                Text("Használja örömmel!")
                    .tint(Color("MAV-Black"))
                    .font(.title2)
                    .padding()
                
                Button("Folytatás") {
                    onboarding = false
                }
                .foregroundColor(Color.white)
                .frame(width: UIScreen.main.bounds.size.width * 0.35,
                       height: UIScreen.main.bounds.size.height * 0.05)
                .background(Color("MAV-Blue"))
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                .shadow(radius: 5)
                .padding(.top, 100)
            }
            .frame(width: UIScreen.main.bounds.size.width * 0.9,
                   height: UIScreen.main.bounds.size.height * 0.5)
            .background(Color("MAV-White"))
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .shadow(radius: 5)
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .background(Color("MAV-LightGray"))
        .ignoresSafeArea()
    }
}

