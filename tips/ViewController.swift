//
//  ViewController.swift
//  tips
//
//  Created by Pibe Aguirre on 1/30/19.
//  Copyright © 2019 HectorTipCal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var ControlTip: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

//    @IBAction func onTap(_ sender: Any) {
//
//        print("Pibe")
//
//        view.endEditing(true)
//    }
//
    //Slider movement

    
    @IBAction func TipCalcu(_ sender: Any) {
        
        
        // Bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Tip and Total Calculation
        let tipPerc = [0.08,0.15,0.2]
        
        let tip = bill * tipPerc[ControlTip.selectedSegmentIndex]
        let total = bill + tip
        // Updated Tips & Total
        tipLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
        
    }
}


