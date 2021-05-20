//
//  FundingTableViewCell.swift
//  hapdong-28th
//
//  Created by Subeen Park on 2021/05/19.
//

import UIKit

class FundingTableViewCell: UITableViewCell {


    
    @IBOutlet weak var thumbnailImage: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var categoryAndWriter: UILabel!
    
    @IBOutlet weak var desc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

    func setCell(funding: FundingModel) {
        
        thumbnailImage.image = UIImage(named: funding.imageStr)
        
        
        let titleParagraphStyle = NSMutableParagraphStyle()
        titleParagraphStyle.lineHeightMultiple = 1.13
        title.attributedText = NSMutableAttributedString(string:funding.title, attributes: [NSAttributedString.Key.kern: -0.57, NSAttributedString.Key.paragraphStyle: titleParagraphStyle])
        title.sizeToFit()
        
        let categoryAndWriterParagraphStyle = NSMutableParagraphStyle()
        categoryAndWriterParagraphStyle.lineHeightMultiple = 1.1
        
        categoryAndWriter.attributedText = NSMutableAttributedString(string: "\(funding.category) | \(funding.writer)", attributes: [NSAttributedString.Key.kern: -0.39, NSAttributedString.Key.paragraphStyle: categoryAndWriterParagraphStyle])
        categoryAndWriter.sizeToFit()
        
        let descParagraphStyle = NSMutableParagraphStyle()
        descParagraphStyle.lineHeightMultiple = 1.1
        
        desc.attributedText = NSMutableAttributedString(string: funding.description, attributes: [NSAttributedString.Key.kern: -0.39, NSAttributedString.Key.paragraphStyle: descParagraphStyle])
        desc.sizeToFit()
    
        
    }
    
}
