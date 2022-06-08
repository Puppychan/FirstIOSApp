//
//  ContentView.swift
//  FirstApp
//
//  Created by Nhung Tran on 27/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            ProgressView(value: 5, total: 25)
            HStack {
//                Text("Hello, world!").padding()
                VStack(alignment: .trailing, spacing: 3.4) {
                    Label("Hourglass", systemImage: "hourglass.bottomhalf.fill")
                    Text("First").font(.caption)
                }
                Spacer()
                VStack (alignment: .leading, spacing: 3.4) {
                    Label("600 Hourglass", systemImage: "hourglass.tophalf.fill")
                    Text("Second").font(.subheadline)
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")
            Circle().strokeBorder(lineWidth: 25)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.circle.fill")
                        .symbolRenderingMode(.hierarchical) // style the button
                        .foregroundColor(.teal)
                }
                .accessibilityLabel("Next Speaker")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
