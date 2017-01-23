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
    @IBOutlet weak var tipSelector: UISegmentedControl!
    @IBOutlet weak var customTip: UITextField!
    
    @IBOutlet weak var billAmount: UITextField!
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
    @IBAction func onBillAndCustomTipAmountEdit(_ sender: AnyObject) {
        self.updateTipAndTotal()
    }
    
    @IBAction func onChangeSelector(_ sender: AnyObject) {
        let tipSelectorValues = [18, 20, 25]
        let tipAmountVar = tipSelector.selectedSegmentIndex
        let tipPercent = tipSelectorValues[tipAmountVar]
        customTip.text = "\(tipPercent)"
        updateTipAndTotal()
    }
    
    @IBAction func onBillAmountEdit(_ sender: Any) {
        print (self.billAmount.text!)
    }
    
    func appendPercentAtEnd(_ input: String) -> String {
        return "\(input)%"
    }
    
    func removePercentFromText(_ input: String) -> String {
        if (input[input.length - 1] == "%"){
            return input[0..input.length]
        }
        
    }
    func updateTipAndTotal() {
        let billValue = Double(self.billAmount.text!) ?? 0
        let tipValue = Double(self.customTip.text!) ?? 0
        
        let calculatedTipAmount = billValue * tipValue/100        
        tipAmount.text = "\(calculatedTipAmount)"
        totalAmount.text = "\(billValue + calculatedTipAmount)"
        
    }

}

