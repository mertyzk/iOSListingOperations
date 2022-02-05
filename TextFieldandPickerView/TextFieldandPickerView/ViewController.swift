//
//  ViewController.swift
//  TextFieldandPickerView
//
//  Created by Macbook Air on 5.02.2022.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var textFieldCountry: UITextField!
    
    var pickerView:UIPickerView?
    
    var countries = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        countries = ["Turkey","France","Germany","United Kingdom","Russia","Japan","China","Italy"]
        
        pickerView = UIPickerView()
        pickerView?.dataSource = self
        pickerView?.delegate = self
        
        textFieldCountry.inputView = pickerView
        
        let toolbar = UIToolbar()
        toolbar.tintColor = UIColor.red
        toolbar.sizeToFit()
        
        let okayButton = UIBarButtonItem(title: "Confirm", style: .plain, target: self, action: #selector(ViewController.okayClick))
        
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(self.cancelClick))
        
        toolbar.setItems([cancelButton,spaceButton,okayButton], animated: true)
        
        textFieldCountry.inputAccessoryView = toolbar
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countries.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countries[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textFieldCountry.text = countries[row]
    }
    
    @objc func okayClick(){
        

        
    }
    
    @objc func cancelClick(){
        
        textFieldCountry.text = ""
        textFieldCountry.placeholder = "Select Country"
        view.endEditing(true)
        
    }
    

}

