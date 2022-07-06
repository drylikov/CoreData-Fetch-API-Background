//
//  AppDelegate.swift
//  CoreDataRemote
//
//  Created by Alfian Losari on 24/09/18.
//  Copyright © 2018 Alfian Losari. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coreDataStack = CoreDataStack.shared

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let vc = (window?.rootViewController as? UINavigationController)?.topViewController as? FilmListViewController
        vc?.dataProvider = DataProvider(persistentContainer: coreDataStack.persistentContainer, repository: ApiRepository.shared)

        return true
    }


}

