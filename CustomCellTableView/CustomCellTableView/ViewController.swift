//
//  ViewController.swift
//  CustomCellTableView
//
//  Created by Macbook Air on 6.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var personsTableView: UITableView!
    
    var persons = [Persons]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personsTableView.delegate = self
        personsTableView.dataSource = self
        
        let persons1 = Persons(personId: 1, personName: "Ahmet", personPhone: "05077777777")
        let persons2 = Persons(personId: 2, personName: "Mehmet", personPhone: "05359999999")
        let persons3 = Persons(personId: 3, personName: "Samet", personPhone: "05444444444")
        let persons4 = Persons(personId: 4, personName: "Veli", personPhone: "05066666666")
        let persons5 = Persons(personId: 5, personName: "Kağan", personPhone: "05388888888")
        
        persons.append(persons1)
        persons.append(persons2)
        persons.append(persons3)
        persons.append(persons4)
        persons.append(persons5)
        
        
    }
}

extension ViewController:UITableViewDelegate,UITableViewDataSource,TableViewCellProtocol{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsHucre", for: indexPath) as! TableViewCell
        
        let incomingData = persons[indexPath.row]
        
        cell.personNameLabel.text = "\(incomingData.personName!) -  \(incomingData.personPhone!)"
        
        cell.cellProtocol = self
        cell.indexPath = indexPath
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let incomingData = persons[indexPath.row]
        print("ID: \(incomingData.personId!) - \(incomingData.personName!) - \(incomingData.personPhone!)")
    }
    
    func cellButtonClick(indexPath: IndexPath) {
        print("Buton run: \(persons[indexPath.row].personName!)")
    }
    
    
}
