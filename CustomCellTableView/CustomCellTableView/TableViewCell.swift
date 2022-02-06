//
//  TableViewCell.swift
//  CustomCellTableView
//
//  Created by Macbook Air on 6.02.2022.
//

import UIKit

protocol TableViewCellProtocol{
    func cellButtonClick(indexPath:IndexPath)
}

class TableViewCell: UITableViewCell {

    @IBOutlet weak var personNameLabel: UILabel!
    
    var cellProtocol:TableViewCellProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func clickButton(_ sender: Any) {
        
        cellProtocol?.cellButtonClick(indexPath: indexPath!)
    }
    
}
