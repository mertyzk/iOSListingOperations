//
//  ViewController.swift
//  PickerView
//
//  Created by Macbook Air on 5.02.2022.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var resultLabel: UILabel!
    
    var countries = [String]()
    
    var selectedCounty:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries = ["Turkey","Germany","United Kingdom","USA","France","Netherlands","Japan","Russia"]
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
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
        resultLabel.text = countries[row]
        
        selectedCounty = countries[row]
    }
        
    @IBAction func showButton(_ sender: Any) {
        
        if let selectedCounty = selectedCounty {
            print(selectedCounty)
        }
        
    }
    
}

