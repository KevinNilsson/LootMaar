//
//  LeftMenuController.swift
//  LootMaar
//
//  Created by kang on 04/10/15.
//  Copyright (c) 2015 LootMaar. All rights reserved.
//

import Foundation

import UIKit

class LeftMenuContoller : UIViewController {
    
    
    // go to newsfeed window
    
    @IBAction func onNewsfeed(sender: AnyObject) {
    }
    
    
    // go to message window
    @IBAction func onMessages(sender: AnyObject) {
    }
    
    // go to profile window
    @IBAction func onMyProfile(sender: AnyObject) {
        
        let storyBoard = UIStoryboard(name: "Profile", bundle:NSBundle.mainBundle());
        let profileController = storyBoard.instantiateViewControllerWithIdentifier("profilecontroller") as! ProfileController;

        let navigationController = UINavigationController(rootViewController: profileController);
        navigationController.navigationBarHidden = true;
        sideMenuViewController.setContentViewController(navigationController, animated: true);
        sideMenuViewController.hideMenuViewController()

        
    }


    // go to post a deal window
    @IBAction func onPostDeal(sender: AnyObject) {
    }

    // go to my deals window
    @IBAction func onMyDeals(sender: AnyObject) {
    }
    
    
    // go to settings window
    @IBAction func onSettings(sender: AnyObject) {
    }

    // logout
    @IBAction func onLogout(sender: AnyObject) {
    }
}