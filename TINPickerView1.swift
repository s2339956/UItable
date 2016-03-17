/*
1.公開動畫效果：
  kCATransitionFade：  翻頁
  kCATransitionMoveIn：彈出
  kCATransitionPush：  推出
  kCATransitionReveal：移除

2.非公開動畫效果：
  "cube"： 立方體
  "suckEffect"： 吸收
  "oglFlip"： 翻轉
  "rippleEffect"： 波纹
  "pageCurl"： 卷頁
  "cameraIrisHollowOpen"： 鏡頭開
  "cameraIrisHollowClose"：鏡頭關

3.動畫方向類型：
  kCATransitionFromRight： 從右側開始實現過渡畫面
  kCATransitionFromLeft：  從左側開始實現過渡畫面
  kCATransitionFromTop：   從頂部開始實現過渡畫面
  kCATransitionFromBottom：從底部開始實在過渡畫面
*/


//            self.dismissModalViewControllerAnimated(true) 返回
//            init(coder aDecoder: NSCoder!){
//                super.init(coder : aDecoder)
//            }


import UIKit
    
    class TINPickerView1: UIViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            //Rect Make 矩型
            let redView:UIView = UIView(frame: CGRectMake(20,20,280,400))
            //backgroundColor 背景顏色
            redView.backgroundColor = UIColor.redColor()
            //insert Subview 插入子視圖
            self.view.insertSubview(redView, atIndex: 0)
            
            let blueView:UIView = UIView(frame: CGRectMake(20,20,280,400))
            blueView.backgroundColor = UIColor.blueColor()
            self.view.insertSubview(blueView, atIndex: 1)
            
            let yellowView:UIView = UIView(frame: CGRectMake(20,20,280,400))
            yellowView.backgroundColor = UIColor.yellowColor()
            self.view.insertSubview(yellowView, atIndex: 2)
        }
        
        //點擊切换兩個红藍視圖
        override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
            let transition = CATransition()
            transition.duration = 1.0  //過場秒數
            transition.type = kCATransitionPush //推送(轉場)類型
//            transition.type = kCATransitionMoveIn
            transition.subtype = kCATransitionFromLeft //從左側
//            transition.subtype = kCATransitionFromTop
            self.view.exchangeSubviewAtIndex(2, withSubviewAtIndex: 0) //增加
            self.view.exchangeSubviewAtIndex(1, withSubviewAtIndex: 0)
            self.view.layer.addAnimation(transition, forKey: nil) //增加
            self.view.layer.addAnimation(transition, forKey: nil)
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
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


