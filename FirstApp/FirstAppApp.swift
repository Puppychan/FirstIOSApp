//
//  FirstAppApp.swift
//  FirstApp
//
//  Created by Nhung Tran on 27/05/2022.
//

import SwiftUI

@main
struct FirstAppApp: App {
    var body: some Scene {
        WindowGroup {
//            ContentView()
//            CardView(scrum: DailyScrum.sampleData[0])
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
