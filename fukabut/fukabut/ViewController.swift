//
//  ViewController.swift
//  fukabut
//
//  Created by Kampreet Sandhu on 08/07/2018.
//  Copyright © 2018 Kampreet Sandhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: outlets
    
    @IBOutlet weak var socialMediaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        socialMediaLabel.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func InstaButton(_ sender: Any) {
        socialMediaLabel.text = "@lorumipsum";
    }
    
    @IBAction func TwitButton(_ sender: Any) {
        socialMediaLabel.text = "@twitlorumipsum";
    }
    
    @IBAction func FBButton(_ sender: Any) {
                socialMediaLabel.text = "fbook.com/randapp";
    }
}

