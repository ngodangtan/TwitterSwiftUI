//
//  TwitterSwiftUIApp.swift
//  TwitterSwiftUI
//
//  Created by Ngo Dang tan on 06/01/2021.
//

import SwiftUI
import Firebase
@main
struct TwitterSwiftUIApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
          
            ContentView().environmentObject(AuthViewModel.shared)
        }
    }
}
