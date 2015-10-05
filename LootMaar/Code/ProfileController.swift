//
//  ProfileControllerViewController.swift
//  LootMaar
//
//  Created by kang on 05/10/15.
//  Copyright (c) 2015 LootMaar. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {

    @IBOutlet weak var scrollCtrl: UIScrollView!
    //@IBOutlet weak var mainScroller: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    override func viewDidAppear(animated: Bool) {
        scrollCtrl.contentSize = CGSizeMake(scrollCtrl.frame.size.width,1400);

    }
    
}
