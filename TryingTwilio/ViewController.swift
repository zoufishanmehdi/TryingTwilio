//
//  ViewController.swift
//  TryingTwilio
//
//  Created by C4Q on 4/21/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   
    @IBAction func sendSMSpressed(sender: AnyObject) {
        let code = arc4random_uniform(8999) + 1000
        var swiftRequest = SwiftRequest()
        
        var data = [
            "To" : textField.text! as String,
            "From" : "+8622256795",
            "Body" : "Give me cheese" as String
        ]
        swiftRequest.post("https://api.twilio.com/2010-04-01/Accounts/ACc4e304c952c972c26699b927422e668953/Messages",
            auth: ["username" : "ACae8bf0bfc39454dd5f1621df862edb9c", "password" : "5931adb0f5d66f7dd2bb08af2642442a"],
            data: data,
            callback: {err, response, body in
                if err == nil {
                    print("Success: (response)")
                } else {
                    print("Error: (err)")
                }
        })
        
        
    }


}

