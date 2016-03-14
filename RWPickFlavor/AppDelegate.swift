//
//  AppDelegate.swift
//  IceCreamShop
//
//  Created by Joshua Greene on 2/8/15.
//  Copyright (c) 2015 Razeware, LLC. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var rootViewController: UIViewController!
    
    func application(application: UIApplication, didFinishLaunchingWithOptions
        launchOptions: [NSObject : AnyObject]?) -> Bool {
            
            setupRootViewController()
            
            window = UIWindow(frame: UIScreen.mainScreen().bounds)
            window?.rootViewController = rootViewController
            window?.makeKeyAndVisible()
            
            return true
    }
    
    func setupRootViewController() {
        let bundle = NSBundle(forClass: PickFlavorViewController.self)
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        rootViewController = storyboard.instantiateInitialViewController()!
    }
}