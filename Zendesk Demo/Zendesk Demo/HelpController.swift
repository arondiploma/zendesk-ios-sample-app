//
//  HelpController.swift
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

class HelpController: UIViewController, UINavigationControllerDelegate {
    
 
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func HcButton(_ sender: UIButton) {
     
    }

    @IBAction func BotButton(_ sender: UIButton) {
    

    }

    @IBAction func ChatButton(_ sender: UIButton) {
        guard let viewController = Zendesk.instance?.messaging?.messagingViewController() else { return }
        self.navigationController?.show(viewController, sender: self)
    }

    @IBAction func AccountsButton(_ sender: UIButton) {
     
    }

    @IBAction func TicketsButton(_ sender: UIButton) {
      
    }

    @IBAction func CallUs(_ sender: UIButton) {
    
    }


}

/*
/////////////////////////////////////////////////////////////////////////////
// DO NOT CHANGE ANYTHING ON THIS FILE UNLESS YOU KNOW WHAT YOU'RE DOING   //
/////////////////////////////////////////////////////////////////////////////
*/
