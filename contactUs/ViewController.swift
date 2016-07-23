//
//  ViewController.swift
//  contactUs
//
//  Created by ABDULRHMAN ALFULAYT on 7/23/16.
//  Copyright © 2016 Design Studio. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    
    @IBOutlet weak var fromEmail: UITextField!
    @IBOutlet weak var subject: UITextField!
    @IBOutlet weak var msg: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func sendEmail(sender: AnyObject) {
        let from = fromEmail.text
        let formSubject = subject.text
        let formMsg = msg.text
        
        
        let params = [
            "to": "mr@des-stu.com",
            "from" : from ,
            "Subject" : formSubject ,
            "msg" : formMsg
        ]
        
        Alamofire.request(.POST, "http://abdualrhman.com/xd7/api/v1/TestCase/sendEmail" , parameters: params )
        
        let aletMessage =  UIAlertController(title: "تم بنجاح", message: "تم إستقبال رسالتك بنجاح", preferredStyle: .Alert)
        aletMessage.addAction(UIAlertAction(title: "حسناً", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(aletMessage, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}