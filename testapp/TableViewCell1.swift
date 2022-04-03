//
//  TableViewCell1.swift
//  testapp
//
//  Created by Shaikhussen Basha on 09/02/22.
//

import UIKit

class TableViewCell1: UITableViewCell {

    
   
    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var label2: UILabel!
    static let  identifier1 = "TableViewCell1"
    static let nib1 = UINib(nibName: "TableViewCell1", bundle: nil)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
