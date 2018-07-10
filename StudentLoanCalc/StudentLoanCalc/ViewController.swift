//
//  ViewController.swift
//  StudentLoanCalc
//
//  Created by Kampreet Sandhu on 09/07/2018.
//  Copyright © 2018 Kampreet Sandhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var total = 0

    @IBOutlet weak var loanTF: UITextField!
    @IBOutlet weak var wageTF: UITextField!
    @IBOutlet weak var EnterDataLab: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        EnterDataLab.text = ""
    }
    
    
    @IBAction func dismissKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func go(_ sender: AnyObject) {
        

        if let loanA = loanTF.text, let wageA = wageTF.text, !loanA.isEmpty, !wageA.isEmpty{
            let x = Int(loanA)
            let y = Int(wageA)
            
            total = calcLoan(wage: y!, loan: x!)
            
            if total > 0{
                performSegue(withIdentifier: "willPay", sender: self)
            } else {
                performSegue(withIdentifier: "wontPay", sender: self)
            }

        }else{
            EnterDataLab.text = "Enter some data!"
        }
        
    }
    
    func calcLoan(wage: Int, loan: Int) -> Int{
        if wage <= 25000{
            return 0
        }else if wage > 25000, wage <= 50000{
            return 3000
        }else{
            return 50000
        }
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if let identifier = segue.identifier{
            if identifier == "willPay"{
                let destination = segue.destination as! GreenViewController
                destination.labelText = String(total)
            }
        }
        
    }
    
    @IBAction func dismissVC(segue: UIStoryboardSegue)
    {
    }
    

}

