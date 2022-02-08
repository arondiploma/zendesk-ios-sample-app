//
//  AppDelegate.swift
//  Zendesk Demo
//
//  Created by Marcelo De Bortoli  on 13/01/2020.
//  Copyright © 2020 EMEA Presales. All rights reserved.
//

/*
 /////////////////////////////////////////////////////////////////////////////
 // DO NOT CHANGE ANYTHING ON THIS FILE UNLESS YOU KNOW WHAT YOU'RE DOING   //
 /////////////////////////////////////////////////////////////////////////////
 */

import UIKit
import ZendeskSDK
import ZendeskSDKMessaging

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window:UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        ZendeskSDK.Zendesk.initialize(withChannelKey: config.channelKey, messagingFactory: DefaultMessagingFactory()) {
            result in
            if case let .failure(error) = result {
                print("Messaging did not initialize.\nError: \(error.localizedDescription)")
            }
            
        }
        
        return true
    }
    
}

/*
 /////////////////////////////////////////////////////////////////////////////
 // DO NOT CHANGE ANYTHING ON THIS FILE UNLESS YOU KNOW WHAT YOU'RE DOING   //
 /////////////////////////////////////////////////////////////////////////////
 */
