//
//  RootController.swift
//  LootMaar
//
//  Created by kang on 04/10/15.
//  Copyright (c) 2015 LootMaar. All rights reserved.
//
import UIKit



class RootController: RESideMenu, RESideMenuDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func awakeFromNib() {
        
        self.menuPreferredStatusBarStyle = UIStatusBarStyle.LightContent
        self.contentViewShadowColor = UIColor.blackColor();
        self.contentViewShadowOffset = CGSizeMake(0, 0);
        self.contentViewShadowOpacity = 0.6;
        self.contentViewShadowRadius = 12;
        self.contentViewShadowEnabled = true;
        
        self.contentViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ContentViewController") as! UIViewController
        self.leftMenuViewController = self.storyboard?.instantiateViewControllerWithIdentifier("LeftMenuViewController") as! UIViewController

    }
    

}
