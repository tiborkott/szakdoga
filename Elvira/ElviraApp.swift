//
//  ElviraApp.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 02. 14..
//

import SwiftUI

@main
struct ElviraApp: App {
    @AppStorage ("onboarding") var  onboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            HomeView()
                .fullScreenCover(isPresented: $onboarding , content: {
                    OnboardView(onboarding: $onboarding)
                })
        }
    }
}

struct OnboardView: View{
    @Binding var onboarding: Bool
    var body: some View{
        TabView{
            
            VStack {
                Text("ONBOARD")
            }
            
            VStack {
                Text("ONBOARD")
            }
            
            VStack {
                Text("ONBOARD")
                Button("Kész") {
                    onboarding = false
                }
            }
        }.tabViewStyle(PageTabViewStyle())
    }
}

