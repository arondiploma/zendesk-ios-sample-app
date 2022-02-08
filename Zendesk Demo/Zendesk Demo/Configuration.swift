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

    // IOS Messaging Channel Key
    // You can find this information at https://{subdomain}.zendesk.com/agent/admin/mobile_sdk
    static var channelKey = "eyJzZXR0aW5xxxxxxxxxxxxxxxxmdzLzAxRlYyMzI5SE5NUUNKMDE5V0M0MDVCVEZOLmpzb24ifQ=="

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

























































