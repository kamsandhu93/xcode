//
//  ViewController.swift
//  MyTabbedApp
//
//  Created by Kampreet Sandhu on 10/07/2018.
//  Copyright © 2018 Kampreet Sandhu. All rights reserved.
//

import UIKit
let saved = UserDefaults.standard

class ViewController: UIViewController {
    
    var imageNames = [String]()
    var currentIndex = 0
//
    @IBOutlet weak var pokemoneLabel: UILabel!
    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var prevButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...7{
           imageNames.append(String(i))
        }
        
        prevButton.isHidden = true

    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        changeViewTheme()
    }

    @IBAction func nextImage(_ sender: Any) {
        prevButton.isHidden = false

        
        if currentIndex < imageNames.count - 1{
            currentIndex += 1
            
            let imageName = imageNames[currentIndex]
            
            let imageObject = UIImage(named: imageName)
            pokemonImage.image = imageObject
        }
        
        if currentIndex == imageNames.count - 1{
            nextButton.isHidden = true
            
        }
    }
    @IBAction func prevImage(_ sender: Any) {
        nextButton.isHidden = false

        
        if currentIndex != 0{
            currentIndex -= 1
            
            let imageName = imageNames[currentIndex]
            
            let imageObject = UIImage(named: imageName)
            pokemonImage.image = imageObject
        }
        
        if currentIndex == 0{
            prevButton.isHidden = true
        }
    }
    
    @IBAction func setFav(_ sender: Any) {
        saved.set(currentIndex, forKey: "fav")
    }
    
    func changeViewTheme(){
        let index = saved.integer(forKey: "theme")
        if index == 0{
            view.backgroundColor = UIColor.white
            pokemoneLabel.textColor = UIColor.black
            
            let leftArrow = UIImage(named: "left-arrow-2")
            let rightArrow = UIImage(named: "right-arrow")
            
            nextButton.setBackgroundImage(rightArrow, for: UIControlState.normal)
            prevButton.setBackgroundImage(leftArrow, for: UIControlState.normal)

            
        }else{
            view.backgroundColor = UIColor.black
            pokemoneLabel.textColor = UIColor.white
            
            let leftArrow = UIImage(named: "w_left")
            let rightArrow = UIImage(named: "w_right")
            
            nextButton.setBackgroundImage(rightArrow, for: UIControlState.normal)
            prevButton.setBackgroundImage(leftArrow, for: UIControlState.normal)
        }
        
    }
    
}
