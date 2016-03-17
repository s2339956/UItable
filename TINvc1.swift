//
//  TINvc1.swift
//  tin
//
//  Created by ios on 2016/3/7.
//  Copyright © 2016年 Xchobo. All rights reserved.
//

import UIKit

class TINvc1: UIViewController {

    @IBOutlet weak var back_tovc: UIButton!
    // 屬性
    @IBOutlet var yearField: UITextField!
    @IBOutlet var monthField: UITextField!
    @IBOutlet var dayField: UITextField!
    
    @IBOutlet var de: UIButton!
    @IBOutlet var fgg: UITextField!
//    @IBOutlet var time1: [UITextField]!
    // 函數
    @IBAction func backtovc(sender: AnyObject) {
//        [self performSegueWithIdentifier:@"toFirst" sender:self];
//        self.performSegueWithIdentifier("toPageB", sender: self);
//        //实例化一个将要跳转的viewController
//        let secondView = ViewController()
//        //跳转
//        self.navigationController?.pushViewController(secondView, animated: true)
        //实例化一个登陆界面
//        let loginView = ViewController()
//        //从下弹出一个界面作为登陆界面，completion作为闭包，可以写一些弹出loginView时的一些操作
//        self.presentViewController(loginView, animated: true, completion: nil)

/*        如果你還想在跳轉的時候傳遞數值過去，你可以這麼寫： 
          override fun cprepareForSegue(segue:UIStoryboardSegue, sender:AnyObject?) { 
            if(segue.identifier=="jumpid") { 
                varbarInfo:BarInfoViewController= segue.destinationViewControlleras!; 
                barInfo.name="david"; 
                barInfo.age=99; 
            }
        }
*/
//        self.performSegueWithIdentifier("VC", sender: self );
        

//        原文網址：http://read01.com/eBJg.html

    }
    @IBAction func getDate(sender: AnyObject) {
        // 取得目前時間
        let nowTime: NSDate = NSDate()
        let nowTime1: NSDate = NSDate()

        print("目前 \(nowTime)")
        
        // 設定格式
        let dataFMT = NSDateFormatter()
        dataFMT.dateFormat = "yyyy-MM-dd"
        
        let dataFMTtime = NSDateFormatter()
        dataFMTtime.dateFormat = "HH:mm:ss"
        print(dataFMTtime)

        // 取得日期字串
        let correctDate = dataFMT.stringFromDate(nowTime)
        let correctDateTime = dataFMTtime.stringFromDate(nowTime1)
        print(correctDateTime)
        print(correctDate)
        print("g")

        // 分割日期儲存至 arr 陣列中
        var arr = correctDate.componentsSeparatedByString("-")
        let arr1 = correctDateTime.componentsSeparatedByString(":")
        print( arr )
        print( arr1 )
        
        // 設定內容
        yearField.text = arr[0]
        monthField.text = arr[1]
        dayField.text = arr[2]
        fgg.text = correctDateTime

    }
    
    // 收起鍵盤
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?){
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
