//
//  ContentView.swift
//  TestApp
//
//  Created by feanor on 27/04/22.
//

import SwiftUI
import Tracking

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear(perform: {
                TrackingManager.shared.track(event: Event.startUp)
            })
    }
}
