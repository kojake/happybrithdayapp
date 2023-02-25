//
//  AppDelegate.swift
//  happy birthday
//
//  Created by kaito on 2022/12/10.
//

import UIKit

//誕生日list
var birthday_list = [""]
var photo = [""]
//誕生日増やすtableview_list
var birthday_increase_tableview_list = ["名前","年","月","日"]
//誕生日増やす仮lsit
var name_pseudo = ""
var month_pseudo = 0
var day_pseudo = 0
var year_pseudo = 0
var japanese_calendar = ""

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

