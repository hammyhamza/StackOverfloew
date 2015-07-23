//
//  TableViewController.swift
//  StackOverFlow
//
//  Created by Hamza Ansari on 22/07/15.
//  Copyright (c) 2015 Thoughtchimp. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
  
  var currentRow = 0
  let array = [1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10]
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.userInteractionEnabled = false
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = false
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    
    }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func scrollToNext(sender: AnyObject) {
    if currentRow < array.count-1 {
      tableView.scrollToRowAtIndexPath(NSIndexPath(forRow: currentRow+1, inSection: 0), atScrollPosition: UITableViewScrollPosition.Top, animated: true)
      currentRow += 1
    }
  }
  // MARK: - Table view data source
  
  override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    // #warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete method implementation.
    // Return the number of rows in the section.
    return array.count
  }
  
  override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    return  tableView.frame.size.height-100
  }
  
  
  override func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    var footerFrame = tableView.bounds
    footerFrame.size.height -= 100
    let footerView = UIView(frame: footerFrame)
    footerView.backgroundColor = UIColor.clearColor()
    return footerView
  }
  
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
    cell.textLabel?.text = "ROW \(indexPath.row)"
    cell.textLabel?.textColor = UIColor.whiteColor()

    // Configure the cell...
    
    return cell
  }
  
  
}
