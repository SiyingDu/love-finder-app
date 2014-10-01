//
//  ViewController.swift
//  LoveFinder
//
//  Created by daniel on 9/28/14.
//  Copyright (c) 2014 beforeload. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var birthday: UIDatePicker!
    @IBOutlet weak var hasHouse: UISwitch!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var result: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        name.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func heightChanged(slider: UISlider) {
        var i = Int(slider.value)
        slider.value = Float(i)
        height.text = "\(i)厘米"
    }

    @IBAction func confirm(sender: UIButton) {
        result.text = name.text
        self.view.endEditing(true)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    // UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

