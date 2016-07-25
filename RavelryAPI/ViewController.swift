//
//  ViewController.swift
//  RavelryAPI
//
//  Created by Charles Findlay on 7/6/16.
//  Copyright © 2016 Charles Findlay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    }

    @IBAction func onLogin(sender: AnyObject) {
        
        RavelryClient.sharedInstance.requestSerializer.removeAccessToken()
        
        RavelryClient.sharedInstance.fetchRequestTokenWithPath("oauth/request_token", method: "GET", callbackURL: NSURL(string: "cfravelrystarter://oauth"), scope: nil, success: {(requestToken: BDBOAuth1Credential!) -> Void in
            print("got the token")
            //let authURL = NSURL(string: "https://api.twitter.com/oauth/authorize?oauth_token=\(requestToken.token)")
            //UIApplication.sharedApplication().openURL(authURL!)
        })  { (error: NSError!) -> Void in
            print("there was an error")
            
        }
        
    }

}

