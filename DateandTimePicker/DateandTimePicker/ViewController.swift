//
//  ViewController.swift
//  DateandTimePicker
//
//  Created by Macbook Air on 5.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldDate: UITextField!
    @IBOutlet weak var textFieldTime: UITextField!
    
    var datePicker:UIDatePicker?
    var timePicker:UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        textFieldDate.inputView = datePicker
        
        if #available(iOS 13.4, *){
            datePicker?.preferredDatePickerStyle = .wheels
        }
        
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        textFieldTime.inputView = timePicker
        
        if #available(iOS 13.4, *){
            timePicker?.preferredDatePickerStyle = .wheels
        }
        
        
        datePicker?.addTarget(self, action: #selector(self.showDate(datePicker:)), for: .valueChanged)
        
        timePicker?.addTarget(self, action: #selector(self.showTime(timePicker:)), for: .valueChanged)
        
        let touchDetection = UITapGestureRecognizer(target: self, action: #selector(self.touchDetect))
        
        view.addGestureRecognizer(touchDetection)
        
    }

    @objc func showDate(datePicker:UIDatePicker){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        let semanticDate = dateFormatter.string(from: datePicker.date)
        textFieldDate.text = semanticDate
        
        //view.endEditing(true)
    }
    
    @objc func showTime(timePicker:UIDatePicker){
        
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "hh:mm"
        
        let comingTime = timeFormatter.string(from: timePicker.date)
        textFieldTime.text = comingTime
        
    }
    
    @objc func touchDetect(){
        
        view.endEditing(true)
    
    }

}

