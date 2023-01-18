//
//  Assignment2App.swift
//  Assignment2
//
//  Created by Apple on 28/09/2022.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
        [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()
    return true
  }
}
@main
struct Assignment2App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var  appDelegate
   
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }
    }
}
