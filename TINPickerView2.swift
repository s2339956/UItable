//
//  TINPickerView2.swift
//  tin
//
//  Created by ios on 2016/3/14.
//  Copyright © 2016年 Xchobo. All rights reserved.
//

import UIKit

class TINPickerView2: UIViewController ,UIPickerViewDataSource, UIPickerViewDelegate{
    var iosArray : [String] = [];
    var iosArray1 : [String] = [];
    var iosArray2 : [String] = [];
    var result : String = "";
    var result1 : String = "";
    var result2 : String = "";

    var iosArray_1 : [String] = [];
    var iosArray1_1 : [String] = [];
    var iosArray2_1 : [String] = [];
    var result_1 : String = "";
    var result1_1 : String = "";
    var result2_1 : String = "";


    @IBOutlet var ansPickerView: UIPickerView!
    @IBOutlet var ansText: UILabel!
    @IBOutlet var 主餐: UILabel!
    @IBOutlet var 飲料: UILabel!
    @IBOutlet var 配餐: UILabel!
    
    @IBAction func CheckAns(sender: AnyObject) {

    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        iosArray.append("漢堡")
//        iosArray.append("蛋餅")
//        iosArray.append("吐司")
//        iosArray.append("貝果")
//        iosArray.append("燒餅")
//        
//        iosArray1.append("漢堡")
//        iosArray1.append("蛋餅")
//        iosArray1.append("吐司")
//        iosArray1.append("貝果")
//        iosArray1.append("燒餅")
//        
//        iosArray2.append("紅茶")
//        iosArray2.append("奶茶")
//        iosArray2.append("牛奶")
//        iosArray2.append("羊奶")
//        iosArray2.append("豆漿")

        print( iosArray )
        readFile()
        
        //選取 Picker 第⼀一欄(0) 第⼆二列(1)
//        ansPickerView.selectRow(1, inComponent: 0, animated: true)

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
        //回傳欄位數量
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
        
    }
    //回傳資料筆數
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return iosArray.count;
        case 1:
            return iosArray2.count;
        case 2:
            return iosArray1.count;
        default:
            break
        }
    return 0;
    }
    
    
       //回傳欄位標題
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
           switch component {
            case 0:
                return iosArray[row];
            case 1:
                return iosArray2[row];
            case 2:
                return iosArray1[row];
            default:
                break
            }
        return nil;
    }
    //當選取時,將⺫⽬目標選取進⾏行呼叫
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        
        switch component {
            case 0:
                let selFood = iosArray[row];
                主餐.text = "主餐："+selFood+"  "+iosArray_1[row]+"元"
            case 1:
                let selDrink = iosArray2[row];
                飲料.text = "飲料："+selDrink+"  "+iosArray2_1[row]+"元"
            case 2:
                let 副餐 = iosArray1[row];
                配餐.text = "副餐：" + 副餐 + "  " + "元"
            default:
                break
        }

//        ansText.text = String (Int(iosArray_1[row])!+Int(iosArray2_1[row])!)
    }
    
    
    func readFile(){
        
        let filePath=NSBundle.mainBundle().pathForResource("Commidity", ofType: "txt")! //檔案位子
        print(filePath)
        
        //        let content=String(contentsOfFile: filePath, encoding: NSUTF8StringEncoding)
        
        do{
                    let content=try String(contentsOfFile: filePath, encoding: NSUTF8StringEncoding)
                    print(content)
                    var dataRows=content.componentsSeparatedByString("\n") //分割
                    iosArray=dataRows[1].componentsSeparatedByString(",")   //再分割,商品名稱
                    iosArray_1=dataRows[2].componentsSeparatedByString(",")  //價格

                    iosArray2=dataRows[3].componentsSeparatedByString(",")
                    iosArray2_1=dataRows[4].componentsSeparatedByString(",")
                }catch let error as NSError{
                    
                    print(error.localizedDescription)
        }
        
        //            var content = String(contentsOfFile: filePath, encoding: NSUTF8StringEncoding, error: nil)!
        //            let content = NSString.stringWithContentsOfFile(filePath!) as! String
        
        
    }
    
}

/*
extension TINPickerView2: UIPickerViewDataSource{
    

    
    
}
extension TINPickerView2: UIPickerViewDelegate{
    
 
}
*/