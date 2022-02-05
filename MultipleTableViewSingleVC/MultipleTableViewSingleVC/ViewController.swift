//
//  ViewController.swift
//  MultipleTableViewSingleVC
//
//  Created by Macbook Air on 5.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewCountry: UITableView!
    @IBOutlet weak var tableViewCity: UITableView!
    
    var countries = [String]()
    var cities = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries = ["Turkey","USA","Germany","England","Norway","France","Italy","Greece","Bulgaria","Netherlands"]
        cities = ["London","Ankara","Istanbul","New York","Chicago","Manchester","Paris","Roma"]
        
        tableViewCountry.delegate = self
        tableViewCountry.dataSource = self
        tableViewCity.delegate = self
        tableViewCity.dataSource = self
        
    }
}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var numberOfData:Int?
        if tableView == tableViewCountry{
            numberOfData = countries.count
        }
        if tableView == tableViewCity{
            numberOfData = cities.count
        }
        
        return numberOfData!
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:UITableViewCell?
        if tableView == tableViewCountry{
           
            cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath)
            
            cell?.textLabel?.text = countries[indexPath.row]
        }
        if tableView == tableViewCity{
           
            cell = tableView.dequeueReusableCell(withIdentifier: "cityCell", for: indexPath)
            
            cell?.textLabel?.text = cities[indexPath.row]
        }
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tableViewCountry{
            print("Selected country : \(countries[indexPath.row])")
        }
        if tableView == tableViewCity{
            print("Selected city : \(cities[indexPath.row])")
        }
    }
    
}
