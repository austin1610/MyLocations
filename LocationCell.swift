//
//  LocationCell.swift
//  MyLocations
//
//  Created by Austin Sparks on 2/14/24.
//

import UIKit

class LocationCell: UITableViewCell {
    
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var addressLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
