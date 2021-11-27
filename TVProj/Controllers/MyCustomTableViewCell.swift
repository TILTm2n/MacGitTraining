//
//  MyCustomTableViewCell.swift
//  TVProj
//
//  Created by Eugene on 23.11.2021.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var contentBlock: UIView!
    @IBOutlet weak var firstVStackView: UIStackView!
    @IBOutlet weak var myMainImageView: UIView!
    @IBOutlet weak var myMainImage: UIImageView!
    @IBOutlet weak var titleIconView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
/*
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
*/
}
