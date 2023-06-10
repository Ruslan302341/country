//
//  WonderTableViewCell.swift
//  onders
//
//  Created by admin on 09.06.2023.
//

import UIKit

import SDWebImage

class WonderTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var regionLabel: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var puctureLabel: UIImageView!
    
    @IBOutlet weak var flagImagevie: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setDate(wonder:Wonder) {
        nameLabel.text = wonder.name
        regionLabel.text = wonder.region
        locationLabel.text = wonder.location
        
        puctureLabel.sd_setImage(with: URL(string: wonder.picture))
        flagImagevie.sd_setImage(with: URL(string: wonder.flag))
    }

}
