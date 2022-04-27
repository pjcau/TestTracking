//
//  TestAppApp.swift
//  TestApp
//
//  Created by feanor on 27/04/22.
//

import SwiftUI
import Networking
import Reporting
import Firebase
@main
struct TestAppApp: App {

	init() {
		Networking.configure() //mandatory //potrebbe stare su core
         
        //....
        FirebaseApp.configure()
        //....
        
        Reporting.configure(permission:.allow) //no mandatory //potrebbe stare su core
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
