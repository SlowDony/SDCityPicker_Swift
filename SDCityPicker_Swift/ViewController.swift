//
//  ViewController.swift
//  SDCityPicker_Swift
//
//  Created by slowdony on 2017/8/30.
//  Copyright © 2017年 SlowDony. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    var dataArr:NSArray?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.title = "切换城市"
        view.backgroundColor = UIColor.white
        setDataArr()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let city = SDCityPickerViewController()
        city.dataArr = ["哈哈","哦哦","问问"]
        
        navigationController?.pushViewController(city, animated: true)
    }
    
    func setDataArr() {

        
        let path = Bundle.main.path(forResource: "City", ofType: "plist")
//         let dataArr = NSArray(contentsOfFile: NSHomeDirectory() + "/Documents/cityList.plist")
        let dataArr = NSArray(contentsOfFile: path!)
//        let dataArr = ["haha","oo","哈哈"]
        
        
        print("dataArr:\(String(describing: dataArr))")
        
        
//        let path = Bundle.main.path(forResource: "cityList", ofType: "plist")
//        
//        let dataArr = NSArray(contentsOfFile: path!)! as [AnyObject]
        
//        print("dataArr:\(String(describing: dataArr))")
        
    }
}

