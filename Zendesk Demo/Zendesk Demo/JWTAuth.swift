//
//  JWTAuth.swift
//  Zendesk Demo
//
//  Created by Aron Diploma on 2/4/22.
//  Copyright © 2022 EMEA Presales. All rights reserved.
//

import Foundation
import MessagingSDK
import MessagingAPI
import ChatSDK
import ChatProvidersSDK

final class JWTAuth: NSObject, JWTAuthenticator {
    func retrieveToken(_ completion: @escaping (Result<String, Error>) -> Void) {

        // declare the parameter as a dictionary that contains string as key and value combination. considering inputs are valid
        
        let parameters: [String: Any] = ["user_token": config.identityUserToken]
        
        // create the url with URL
        let url = URL(string: config.chatJWTProvider)! // change server url accordingly
        
        // create the session object
        let session = URLSession.shared
        
        // now create the URLRequest object using the url object
        var request = URLRequest(url: url)
        request.httpMethod = "POST" //set http method as POST
        
        // add headers for the request
        request.addValue("application/json", forHTTPHeaderField: "Content-Type") // change as per server requirements
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        do {
          // convert parameters to Data and assign dictionary to httpBody of request
          request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
        } catch let error {
            completion(.failure(error))
          return
        }
        
        // create dataTask using the session object to send data to the server
        let task = session.dataTask(with: request) { data, response, error in
          
          if let error = error {
            print("Post Request Error: \(error.localizedDescription)")
            return
          }
          
          // ensure there is valid response code returned from this HTTP response
          guard let httpResponse = response as? HTTPURLResponse,
                (200...299).contains(httpResponse.statusCode)
          else {
            print("Invalid Response received from the server")
            return
          }
          
          // ensure there is data returned
          guard let responseData = data else {
            print("nil Data received from the server")
            return
          }
          
          do {
            // create json object from data or use JSONDecoder to convÏert to Model stuct
            if let jsonResponse = try JSONSerialization.jsonObject(with: responseData, options: .mutableContainers) as? [String: String] {
                // print(jsonResponse)
                completion(.success(jsonResponse["jwt"]!))
              // handle json response
            } else {
              print("data maybe corrupted or in wrong format")
              throw URLError(.badServerResponse)
            }
          } catch let error {
            print(error.localizedDescription)
          }
        }
        
        // perform the task
        task.resume()
    }
    
    func getToken(_ completion: @escaping (String?, Error?) -> Void) {
        retrieveToken { (result) in
            completion(result.tuple.0, result.tuple.1)
        }
    }
}

extension Result { // Helper to convert Swift Result to tuple for Objective-C style result
    var tuple: (Success?, Failure?) {
        switch self {
        case .success(let success):
            return (success, nil)
        case .failure(let error):
            return (nil, error)
        }
    }
}

