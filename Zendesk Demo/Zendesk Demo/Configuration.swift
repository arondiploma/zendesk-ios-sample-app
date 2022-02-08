//
//  Configuration.swift
//  Zendesk Demo
//
//  Created by Marcelo De Bortoli  on 14/01/2020.
//  Copyright © 2020 EMEA Presales. All rights reserved.
//

/*
////////////////////////////////////////////////////////////////////////////////
// DO NOT CHANGE ANYTHING ON ANY OTHER FILE UNLESS YOU KNOW WHAT YOU'RE DOING //
////////////////////////////////////////////////////////////////////////////////
*/

struct config {

    /* ********************************************************************** */

    /*
    ////////////////////////////////////////////////////////////////////////////
    // HOME SCREEN - START                                                    //
    ////////////////////////////////////////////////////////////////////////////
    */

    // Set your customer's website below
    static var url = "https://www.zendesk.com"

    // If you want to inject some extra customization (JavaScript) on your customer's website, add it below.
    // If you don't want to inject any custom code, just leave the "script" var unchanged.
    //
    // PS: this is a local customization. It might be useful for demo purposes only.
    static var script = """
                        // Custom code starts here

                        /* YOUR JAVASCRIPT CODE GOES HERE */

                        // Custom code ends here
                        """

    /*
    ////////////////////////////////////////////////////////////////////////////
    // HOME SCREEN - END                                                      //
    ////////////////////////////////////////////////////////////////////////////
    */

    /* ********************************************************************** */

    /*
    ////////////////////////////////////////////////////////////////////////////
    // HELP SCREEN - START                                                    //
    ////////////////////////////////////////////////////////////////////////////
    */

    // Mobile SDK App ID
    // You can find this information at https://{subdomain}.zendesk.com/agent/admin/mobile_sdk
    static var appId = "xxx2079b2ff044ccxxxxxxxx1b2cca65624d8455exxxxxxx"
    
    // Mobile SDK Client ID
    // You can find this information at https://{subdomain}.zendesk.com/agent/admin/mobile_sdk
    static var clientId = "mobile_sdk_client_xxxxxxxxxxxxxxxxxxxx"
    
    // Zendesk URL
    // URL of your instance following the format https://{subdomain}.zendesk.com
    // PS: Do not include any additional path other than the main URL of your help center (do not add "/hc/en-us/...")
    static var zendeskUrl = "https://xxxxxx.zendesk.com"

    // set the authentication type, value must ANONYMOUS or JWT only
    static var authType = "JWT"
    
    // Fake Identity Name (anonymous authentication)
    static var anonymousName = "John Doe"

    // Fake Identity Email (anonymous authentication)
    static var anonymousEmail = "johndoe@example.com"
    
    // JWT, any value
    static var jwtUserToken = "xxxxxxxxxxx@example.com"
    
    // Zendesk Talk Digital Line nickname
    // You can find this information at https://{subdomain}.zendesk.com/agent/admin/voice
    static var digitalLine = "TestLine"

    // Zendesk Chat Account Key
    // You can find this information at https://{subdomain}.zendesk.com/chat/agent
    // Click on the avatar icon on the top-right side of the screen and select "Check connection"
    static var chatKey = "vihYtQM5lkjvTYJuXxxxxxxxxxxxxxxx"

    // Chat JWT Provider
    static var chatJWTProvider = "https://xxxxxxxxxx.execute-api.ap-southeast-1.amazonaws.com/xxxx/chat_sdk/jwt"
    
    // Add custom chat rating buttons? (Boolean: true / false)
    // IMPORTANT: This is not native on the Chat SDK UI. You can use it and present it as a custom feature.
    static var chatRating = true

    /*
    ////////////////////////////////////////////////////////////////////////////
    // HELP SCREEN - END                                                      //
    ////////////////////////////////////////////////////////////////////////////
    */
}

/*
////////////////////////////////////////////////////////////////////////////////
// DO NOT CHANGE ANYTHING ON ANY OTHER FILE UNLESS YOU KNOW WHAT YOU'RE DOING //
////////////////////////////////////////////////////////////////////////////////
*/
