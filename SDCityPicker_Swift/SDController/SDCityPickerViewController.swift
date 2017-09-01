//
//  SDCityPickerViewController.swift
//  SDCityPicker_Swift
//
//  Created by slowdony on 2017/9/1.
//  Copyright © 2017年 SlowDony. All rights reserved.
//

import UIKit

class SDCityPickerViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    var cityTable = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "切换城市"
        view.backgroundColor = UIColor.white
        setupTableView()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupTableView()  {
     
      
        cityTable = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: mDeviceWidth, height: mDeviceHeight), style: UITableViewStyle.plain)
        cityTable.delegate = self
        cityTable.dataSource = self
        view .addSubview(cityTable)
        
    }
    
    
    //MARK: - TableViewDelegete
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: "cellID")
        cell.textLabel?.text = "haha"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
  
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50

    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
