//
//  ViewController.swift
//  SearchBar
//
//  Created by Macbook Air on 6.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        searchBar.scopeButtonTitles = ["First","Second"]
        
        
    }
}

extension ViewController:UISearchBarDelegate{
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Search result : \(searchText)")
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        print("Cancel select")
    }
    
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        if selectedScope == 0 {
            print("First selected")
        }
        if selectedScope == 1 {
            print("Second selected")
        }
    }
    
}
