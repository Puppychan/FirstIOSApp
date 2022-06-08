//
//  MeetingView.swift
//  FirstApp
//
//  Created by Nhung Tran on 08/06/2022.
//

import Foundation
import SwiftUI

struct MeetingView : View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 25)
            HStack {
                VStack(alignment: .leading) {
                    Text("First Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Second Elapsed")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                        .symbolRenderingMode(.hierarchical) // style the button
                        .foregroundColor(.teal)
                }
                .accessibilityLabel("Next Speaker")
            }
        }
        .padding()
        
    }
}
struct MeetingView_Preview : PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
