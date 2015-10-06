//
//  MyDealsController.swift
//  LootMaar
//
//  Created by beauty on 10/6/15.
//  Copyright (c) 2015 LootMaar. All rights reserved.
//

import UIKit


class MyDealsController: UIViewController , UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var rightBtn: UIButton!
    @IBOutlet weak var mainTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
      
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // TableView DataSource
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MydealsTableCell", forIndexPath: indexPath) as! UITableViewCell
        return cell
    }
    
    
    

}
