//
//  SettingsViewController.swift
//  MyTabbedApp
//
//  Created by Kampreet Sandhu on 10/07/2018.
//  Copyright © 2018 Kampreet Sandhu. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var settingsLabels: [UILabel]!
    @IBOutlet weak var themeSwitch: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let index = saved.integer(forKey: "theme")
        changeViewColours(index: index)

        
        
    }

    
    @IBAction func changeTheme(_ sender: Any) {
        let index = themeSwitch.selectedSegmentIndex
        saved.set(index, forKey: "theme")

        changeViewColours(index: index)
        

    }
    
    func changeViewColours(index: Int){
        if index == 0{
            for label in settingsLabels{
                label.textColor = UIColor.black
            }
            view.backgroundColor = UIColor.white
        }else{
            for label in settingsLabels{
                label.textColor = UIColor.white
            }
            view.backgroundColor = UIColor.black
            
        }
            
    }
    
}
