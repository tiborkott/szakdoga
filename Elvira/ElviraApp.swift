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
                    BoardingView(onboarding: $onboarding)
                })
        }
    }
}
