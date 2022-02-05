//
//  ViewController.swift
//  BasicTableView
//
//  Created by Macbook Air on 5.02.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var countries = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries = ["Turkey","Belgium","England","Germany","France","Italy","Netherlands"]
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellName", for: indexPath)
        cell.textLabel?.text = countries[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected country: \(countries[indexPath.row])")
    }
    
    
}

