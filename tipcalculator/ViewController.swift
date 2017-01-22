//
//  ViewController.swift
//  tipcalculator
//
//  Created by Aakash Therani on 1/21/17.
//  Copyright © 2017 Aakash Therani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipSelector: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func onBillAmountEdit(_ sender: Any) {        
        
    }
    
    @IBAction func onChangeSelector(_ sender: Any) {
        let billAmount = Double(self.billAmount.text!) ?? 0
        //print (billAmount)
        let tipSelectorValues = [0.18, 0.2, 0.25]
        let tipAmountVar = tipSelector.selectedSegmentIndex
        
        let tipPercent = tipSelectorValues[tipAmountVar]
        let tipAmount1 = billAmount * tipPercent
        let totalAmount1 = billAmount + tipAmount1
        tipAmount.text = "\(tipAmount1)"
        totalAmount.text = "\(totalAmount1)"
    }

}

