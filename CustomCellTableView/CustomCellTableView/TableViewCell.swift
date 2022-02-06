//
//  TableViewCell.swift
//  CustomCellTableView
//
//  Created by Macbook Air on 6.02.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var personNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
