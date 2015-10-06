//
//  HomeController.swift
//  LootMaar
//
//  Created by kang on 04/10/15.
//  Copyright (c) 2015 LootMaar. All rights reserved.
//

import UIKit

class HomeController : UIViewController
{

    // Top menu constant space
    @IBOutlet weak var topMenuSpace: NSLayoutConstraint!
    
    
    // Showing or hidding top menu when clicking the trigger button
    @IBAction func onTriggerMenu(sender: AnyObject) {
        
        if topMenuSpace.constant == 0.0 {
            topMenuSpace.constant = 50
        } else {
            topMenuSpace.constant = 0
        }
    }
    
    
    
    
    
    
    
}
