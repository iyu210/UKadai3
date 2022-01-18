//
//  ViewController.swift
//  UKadai3
//
//  Created by 岩渕優児 on 2022/01/13.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var leftTextField: UITextField!
    @IBOutlet private weak var rightTextField: UITextField!
    @IBOutlet private weak var leftSwitch: UISwitch!
    @IBOutlet private weak var rightSwitch: UISwitch!
    @IBOutlet private weak var upperLabel: UILabel!
    @IBOutlet private weak var lowerLabel: UILabel!

    @IBAction func button(_ sender: Any) {
        var num1 = Int(leftTextField.text ?? "") ?? 0
        var num2 = Int(rightTextField.text ?? "") ?? 0

        if leftSwitch.isOn {
            num1 *= -1
        }

        if rightSwitch.isOn {
            num2 *= -1
        }

        upperLabel.text = "\(num1) + \(num2)"
        lowerLabel.text = "\(num1 + num2)"
    }
}
