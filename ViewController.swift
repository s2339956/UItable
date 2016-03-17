//
//  ViewController.swift
//  tin
//
//  Created by ios on 2016/2/24.
//  Copyright © 2016年 Xchobo. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
    @IBOutlet var money: UITextField!
    @IBOutlet var carriageChargesSW: UISwitch!
    @IBOutlet var carriageChargesSL: UISlider!
    @IBOutlet var total: UILabel!
    @IBOutlet var carriageChargesMoney: UILabel!
    
    @IBAction func 返回(sender: UIButton) {
    }
    
    @IBAction func calMoney(sender: AnyObject) {
         print("calMoney...")
//        if let _ = Int(money.text!){
//        //取得money物件的字串
//        let pay:String? = money.text
//        //將pay⽂文字物件轉成整數
//        let payMoney:Int = Int(pay!)!
//        //將數值轉成⽂文字
//        var payStr:String = String(payMoney)
//        //計算後將結果輸出,並以⽂文字⽅方式呈現 totalMoney.text = payStr
//        total.text = payStr
//        }else{
//            total.text = "nil"
//        }
        cout()
    }
    @IBAction func swMoney(sender: AnyObject) {

//            var pay:String? = money.text
//        
//            if let _ = Int(pay!) {
//                
//                var payMoney:Int = Int(pay!)!
//                var carriageCharges:Float = 0.0
//                var payStr = ""
//                
//                // 利⽤用Switch確認是否需要包含⼿手續費
//                if carriageChargesSW.on {
//                    carriageCharges = carriageChargesSL.value
//                    
//                }else {
//                money.text = "0"
//                pay = "0"
//                payMoney = 0
//                
//                }
//        
//        carriageChargesMoney.text = String(Int(carriageCharges))
//        // 計算購買⾦金額加運費
//        
//        payStr = String(payMoney + Int(carriageCharges))
//        total.text = payStr
//        }else{
//    total.text = "nil"
//    }
        cout()
}
   @IBAction func slMoney(sender: AnyObject) {
        
//            var pay:String? = money.text
//            if let _ = Int(pay!) {
//              
//            
//                let payMoney:Int = Int(pay!)!
//                var carriageCharges:Float = 0.0
//                var payStr = ""
//                // 顯⽰示調整的運費
//                carriageChargesMoney.text = String( Int(carriageChargesSL.value) )
//                if carriageChargesSW.on {
//                    carriageCharges = carriageChargesSL.value
//                }
//            // 計算購買⾦金額加調整式運費
//            payStr = String(payMoney + Int(carriageCharges))
//            total.text = payStr
////            }else{
//                total.text = "nil"
//            }
    cout()
    }
    
     func cout(){

        let pay:String = money.text!
        var carriageCharges:Float = 0.0
        if let payMoney = Int(pay){
            
//            var payStr = ""
//            let payMoney:Int = Int(pay)!
//            carriageChargesMoney.text = String(Int(carriageCharges))

            carriageChargesMoney.text = String( Int(carriageChargesSL.value) )
            if carriageChargesSW.on {
                carriageCharges = carriageChargesSL.value
            }
            
            total.text  = String(payMoney + Int(carriageCharges))

        }else{
            total.text = "nil"
            carriageChargesMoney.text = String( Int(carriageChargesSL.value) )
        }
        
    }
    
    // 收起鍵盤
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?){
        self.view.endEditing(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // label.text = "hi , tin"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
