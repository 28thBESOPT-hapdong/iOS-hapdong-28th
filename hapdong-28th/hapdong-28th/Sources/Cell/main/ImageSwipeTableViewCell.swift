//
//  ImageSwipeTableViewCell.swift
//  hapdong-28th
//
//  Created by Subeen Park on 2021/05/19.
//

import UIKit

class ImageSwipeTableViewCell: UITableViewCell {
    
   
    @IBOutlet weak var pageLabel: UILabel!

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        pageLabel.layer.cornerRadius = 7.5
        pageLabel.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
