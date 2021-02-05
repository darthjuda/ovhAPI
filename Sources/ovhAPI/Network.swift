//
//  Network.swift
//  
//
//  Created by mehdi jung on 04/02/2021.
//

import Foundation

class Network {
    // MARK: - Properties
    public var ovhTime: String = ""
    
    
    
    func manageTimestamp() {
        // curl https://eu.api.ovh.com/1.0/auth/time
        guard let url = URL(string: "https://eu.api.ovh.com/1.0/auth/time") else {
            print("[OVHAPI]: No url provided in func manageTimestamp()")
            return
        }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            // Check if Error took place
            if (error != nil) {
                print("[OVHAPI]: Error \(String(describing: error?.localizedDescription))")
            }
            
            // Read HTTP Response Status code
            if let response = response as? HTTPURLResponse {
                print("Response HTTP Status code: \(response.statusCode)")
            }
            
            // Convert HTTP Response Data to a simple String
            if let data = data, let dataString = String(data: data, encoding: .utf8) {
                print("[OVHAPI]: Timestamp received: \(dataString)")
                self.ovhTime = dataString
            }
        }.resume()
    }
    
    func signingRequest() {
        
    }
    
    func requestauthtoken() {
        
    }
    
    func carryingRequest() {
        
    }
}
