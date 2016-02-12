//
//  ListTableViewController.swift
//  WordList
//
//  Created by 木村　恒輝 on 2016/02/12.
//  Copyright (c) 2016年 木村　恒輝. All rights reserved.
//


import UIKit

class ListTableViewController: UITableViewController {
    
    var wordArray: [AnyObject] = []
    let saveData = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerNib(UINib(nibName: "ListTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if saveData.arrayForKey("WORD") != nil {
            wordArray = saveData.arrayForKey("WORD")!
        }
        tableView.reloadData()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView:UITableView, numberOfRowsInSection section: Int) -> Int{
        return wordArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as!
        ListTableViewCell
        
        let nowIndexPathDictionary: (AnyObject) = wordArray[indexPath.row]
        
        cell.englishLabel.text = nowIndexPathDictionary["english"] as? String
        cell.japaneseLabel.text = nowIndexPathDictionary["japanese"] as? String
        return cell
    }
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

