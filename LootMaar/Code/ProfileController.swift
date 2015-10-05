//
//  ProfileControllerViewController.swift
//  LootMaar
//
//  Created by kang on 05/10/15.
//  Copyright (c) 2015 LootMaar. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {

    
    
    @IBOutlet weak var viewLogo: UIView!
    
    @IBOutlet weak var viewPoints: UIView!
    
    @IBOutlet weak var viewFacebook: UIView!
    
    @IBOutlet weak var scrollCtrl: UIScrollView!
    @IBOutlet weak var viewEmail: UIView!
    
    
    @IBOutlet weak var viewCountry: UIView!
    
    @IBOutlet weak var viewState: UIView!
    
    @IBOutlet weak var viewNews2: UIView!
    
    @IBOutlet weak var viewNews1: UIView!
    
    @IBOutlet weak var viewNews3: UIView!
    //@IBOutlet weak var mainScroller: UIScrollView!
    @IBOutlet weak var viewSocialMedia: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    override func viewDidAppear(animated: Bool) {
        
        let height = viewLogo.frame.height + viewPoints.frame.height + viewFacebook.frame.height + viewEmail.frame.height + viewCountry.frame.height + viewState.frame.height + viewNews2.frame.height + viewNews1.frame.height + viewNews3.frame.height + viewSocialMedia.frame.height + 100
        scrollCtrl.contentSize = CGSizeMake(scrollCtrl.frame.size.width,height);

    }
    
}
