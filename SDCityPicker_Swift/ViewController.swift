//
//  ViewController.swift
//  SDCityPicker_Swift
//
//  Created by slowdony on 2017/8/30.
//  Copyright © 2017年 SlowDony. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.title = "切换城市"
        view.backgroundColor = UIColor.white
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let city = SDCityPickerViewController()
        navigationController?.pushViewController(city, animated: true)
    }

}

