//
//  WeaponsCell.swift
//  GOW
//
//  Created by Rafael Gonzalez on 07/03/25.
//

import UIKit

class WeaponsCell: UITableViewCell {

    @IBOutlet weak var wName: UILabel!
    @IBOutlet weak var wPoster: UIImageView!
    @IBOutlet weak var wDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        wName.setCustomFont(fontName: Constants.fontCoalition, size: Constants.fontSize, textStyle: .headline)
        //wDescription.setCustomFont(fontName: Constants.fontCoalition, size: 15)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
