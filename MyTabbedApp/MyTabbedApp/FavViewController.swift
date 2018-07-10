//
//  FavViewController.swift
//  MyTabbedApp
//
//  Created by Kampreet Sandhu on 10/07/2018.
//  Copyright © 2018 Kampreet Sandhu. All rights reserved.
//

import UIKit

class FavViewController: UIViewController {

    @IBOutlet weak var favImage: UIImageView!
    @IBOutlet weak var FavLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    
    var names = ["Abra", "Bulbasaur", "Charmander", "Dratinin", "Snorlax", "Pikachu", "Pysduck", "Squirtle"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let FavImageInt = saved.integer(forKey: "fav")
        print(FavImageInt)
        let CurrentFavImage = UIImage(named: String(FavImageInt))
        
        favImage.image = CurrentFavImage
        
        NameLabel.text = names[FavImageInt]
        
        changeViewTheme()
        
        
    }

    
    func changeViewTheme(){
        let index = saved.integer(forKey: "theme")
        
        if index == 0{
            view.backgroundColor = UIColor.white
            FavLabel.textColor = UIColor.black
            NameLabel.textColor = UIColor.black
        }else{
            view.backgroundColor = UIColor.black
            FavLabel.textColor = UIColor.white
            NameLabel.textColor = UIColor.white
            
        }
    }
}
