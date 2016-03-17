//
//  TinPickerView.swift
//  tin
//
//  Created by ios on 2016/3/11.
//  Copyright © 2016年 Xchobo. All rights reserved.
//

import UIKit

class TinPickerView: UIViewController {
    var iosArray : [String] = [];
    var result : String = "";
    
    @IBOutlet var ansPickerView: UIPickerView!
    @IBOutlet var ansText: UILabel!
    
    @IBAction func CheckAns(sender: AnyObject) {
        
        if result == "運  費" { ansText.text = "正確答案"
            self.performSegueWithIdentifier("VC", sender: self);
        }else if result == "時  間" { ansText.text = "正確答案"
            self.performSegueWithIdentifier("VC2", sender: self);
        }else{
            ansText.text = "尚未開放"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iosArray.append("iOS 5")
        iosArray.append("iOS 6")
        iosArray.append("時  間")
        iosArray.append("運  費")
        iosArray.append("iOS 9")
        print( iosArray )
        
        //選取 Picker 第⼀一欄(0) 第⼆二列(1)
        ansPickerView.selectRow(1, inComponent: 0, animated: true)

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


extension TinPickerView: UIPickerViewDataSource{
    
    //回傳欄位數量
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1

    }
    //回傳資料筆數
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return iosArray.count
    }
    

}
extension TinPickerView: UIPickerViewDelegate{
    
        //回傳欄位標題
        func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
            return iosArray[row]
        }
        //當選取時,將⺫⽬目標選取進⾏行呼叫
        func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
            result = iosArray[row]
        }
}
