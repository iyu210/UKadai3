//
//  ViewController.swift
//  UKadai3
//
//  Created by 岩渕優児 on 2022/01/13.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var leftTextField: UITextField!
    @IBOutlet weak var rightTextField: UITextField!
    @IBOutlet weak var leftSwitch: UISwitch!
    @IBOutlet weak var rightSwitch: UISwitch!
    @IBOutlet weak var upperLabel: UILabel!
    @IBOutlet weak var lowerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func button(_ sender: Any) {
        var num1 = Int(leftTextField.text ?? "") ?? 0
        var num2 = Int(rightTextField.text ?? "") ?? 0
        if leftSwitch.isOn == true {
            num1 *= -1
        }
        if rightSwitch.isOn == true {
            num2 *= -1
        }
        upperLabel.text = "\(num1)  +  \(num2)"
        lowerLabel.text = "\(num1 + num2)"
    }
}
