//
//  RavelryClient.swift
//  RavelryAPI
//
//  Created by Charles Findlay on 7/7/16.
//  Copyright © 2016 Charles Findlay. All rights reserved.
//

import UIKit

class RavelryClient: BDBOAuth1RequestOperationManager {
    
    
    class var sharedInstance: RavelryClient {
        struct Static {
            
            static let instance = RavelryClient(baseURL: RavelryKeys.init().ravelryBaseURL, consumerKey: RavelryKeys.init().ravelryAccessKey, consumerSecret: RavelryKeys.init().ravelrySecretKey)
            
        }
        
        
        return Static.instance
    }

}
