//
//  TinTableViewController.swift
//  tin
//
//  Created by 謝易致 on 2016/3/8.
//  Copyright © 2016年 Xchobo. All rights reserved.
//

import UIKit

class TinTableViewController: UIViewController ,UITableViewDelegate {
    
    var Array:[String] = []
    var result:String = ""
    
    //返回
    @IBOutlet var ToVC: UIButton!
    @IBAction func to(sender: AnyObject) {
        
//    self.performSegueWithIdentifier("TOVC", sender:self);
    }
    @IBOutlet var anspickerviwe: UIPickerView!
    
    @IBAction func checkAns(sender: AnyObject) {
    }
    
//    extension TinTableViewController: UIPickerViewDataSource{
//    }
//    extension TinTableViewController:UIPickerViewDelegate{
//    }
//    //
//    Array.append("QQ")
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    var restaurant = ["0","1","2","3","4","5","6","7","8","9","10","11"]
    func numberOfSectionsInTableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return restaurant.count

    }

     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // #warning Incomplete implementation, return the number of rows
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)

        cell.textLabel?.text = restaurant[indexPath.row]
        cell.imageView?.image = UIImage(named: "t-shirt-3")
        return cell

    }
    // 隱藏狀態欄
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    // 收起鍵盤
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?){
        self.view.endEditing(true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
