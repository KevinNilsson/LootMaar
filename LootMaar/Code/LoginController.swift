//
//  LoginController.swift
//  LootMaar
//
//  Created by kang on 04/10/15.
//  Copyright (c) 2015 LootMaar. All rights reserved.
//

import Foundation
import UIKit

class LoginController : UIViewController {
    
    
    // username field
    @IBOutlet weak var txtUsername: UITextField!
    
    // password field
    @IBOutlet weak var txtPassword: UITextField!
    
    
    @IBOutlet weak var chkRemember: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // getting the user default information
        var isRemember = NSUserDefaults.standardUserDefaults().valueForKey("isRemember") as? Bool
        
        if isRemember == nil {
            isRemember = false
        }
        
        chkRemember.selected = isRemember!
        
        chkRemember.setImage(UIImage(named: "checkBox"), forState: UIControlState.Normal)
        chkRemember.setImage(UIImage(named: "checkBox-Checked"), forState: UIControlState.Selected)
        
        if(chkRemember.selected) {
            
            txtUsername.text = NSUserDefaults.standardUserDefaults().valueForKey("username") as? String
            txtPassword.text = NSUserDefaults.standardUserDefaults().valueForKey("password") as? String
            chkRemember.selected = true
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onCheckRemember(sender: AnyObject) {
        
        chkRemember.selected = !chkRemember.selected
        
        
    }
    
    // login with email
    @IBAction func onLogin(sender: AnyObject) {
        
        
        NSUserDefaults.standardUserDefaults().setBool(chkRemember.selected, forKey: "isRemember")
        NSUserDefaults.standardUserDefaults().setValue(txtUsername.text, forKey: "username")
        NSUserDefaults.standardUserDefaults().setValue(txtPassword.text, forKey: "password")

        // checking username and password
        
        if txtUsername.text.trim().isEmpty {
            
            UIAlertView(title: "Alert", message: "Please input user name", delegate: nil, cancelButtonTitle: "OK").show()
            return;
        }
        
        
        if txtPassword.text.trim().isEmpty {
            
            UIAlertView(title: "Alert", message: "Please input password", delegate: nil, cancelButtonTitle: "OK").show()
            return;
        }
        
        // navigate to home controller
        let mainController = storyboard?.instantiateViewControllerWithIdentifier("rootcontroller") as! RootController
        navigationController?.pushViewController(mainController, animated: true)
        
    }
    
    
    // login with facebook
    @IBAction func onLoginWithFacebook(sender: AnyObject) {
        
        // navigate to home controller
        
        let mainController = storyboard?.instantiateViewControllerWithIdentifier("root-controller") as! HomeController
        navigationController?.pushViewController(mainController, animated: true)
        
    }
    
    
    // login with twitter
    @IBAction func onLoginWithTwitter(sender: AnyObject) {
        
        
        // navigate to home controller
        let mainController = storyboard?.instantiateViewControllerWithIdentifier("root-controller") as! HomeController
        navigationController?.pushViewController(mainController, animated: true)
        
        
    }
    
}

