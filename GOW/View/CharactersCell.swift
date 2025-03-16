//
//  CharacterTableViewCell.swift
//  GOW
//
//  Created by Alejandro on 15/03/25.
//

import UIKit

class CharactersCell: UITableViewCell {

    @IBOutlet weak var cName: UILabel!
    @IBOutlet weak var cPoster: UIImageView!
    @IBOutlet weak var cDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cName.setCustomFont(fontName: Constants.fontCoalition, size: Constants.fontSize, textStyle: .headline)
        //wDescription.setCustomFont(fontName: Constants.fontCoalition, size: 15)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
