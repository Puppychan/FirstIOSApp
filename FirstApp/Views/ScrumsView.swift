//
//  ScrumsView.swift
//  FirstApp
//
//  Created by Nhung Tran on 29/05/2022.
//

import Foundation
import SwiftUI

struct ScrumsView : View {
    let scrums : [DailyScrum]
    var body : some View {
        List {
            ForEach(scrums, id: \.title) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
//                      .background(scrum.theme.mainColor)
                        .listRowBackground(scrum.theme.mainColor)
                }
                .listRowBackground(scrum.theme.mainColor)
                .navigationTitle("Daily Scrum")
                .toolbar {
                    Button(action: {}) {
                        Image(systemName: "plus")
                    }
                    .accessibilityLabel("New Scrum")

                }
            }
        }
    }
    
}
struct ScrumsView_Previews: PreviewProvider {
    static var previews : some View {
        NavigationView {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
