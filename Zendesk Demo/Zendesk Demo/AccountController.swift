//
//  AccountController.swift
//  Zendesk Demo
//
//  Created by Aron Diploma on 2/8/22.
//  Copyright © 2022 EMEA Presales. All rights reserved.
//

import Foundation
import UIKit

import ZendeskSDK
import ZendeskSDKMessaging

class AccountController: UIViewController, UINavigationControllerDelegate {
    
    var jwt = ""
    
    @IBAction func Login(_ sender: UIButton) {
        ZendeskSDK.Zendesk.instance?.loginUser(with:jwt)
    }
    
    @IBAction func Logout(_ sender: UIButton) {
        ZendeskSDK.Zendesk.instance?.logoutUser()
    }
    
    @IBAction func textOnChange(_ sender: UITextField) {
        jwt = sender.text!
    }

}
