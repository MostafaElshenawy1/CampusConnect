//
//  CampusConnectApp.swift
//  CampusConnect
//
//  Created by John Edgar on 2/18/23.
//
import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

struct CampusConnectApp: App {
    init() {
        FirebaseApp.configure()
        Firestore.firestore()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        FirebaseApp.configure()
        let _ = Firestore.firestore()
        
        return true
    }
}

struct testApp: App {
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}

/*@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
                
    [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            //FirebaseApp.configure()
            Firestore.firestore()
            FirebaseApp.configure()
            return true
    }
}
 */
/*
struct CampusConnectApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

//import UIKit
/*
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
        [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()

    return true
  }
}
 */*/
