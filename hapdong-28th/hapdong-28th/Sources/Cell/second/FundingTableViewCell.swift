//
//  FundingTableViewCell.swift
//  hapdong-28th
//
//  Created by Subeen Park on 2021/05/19.
//

import UIKit
import Kingfisher

class FundingTableViewCell: UITableViewCell {
    
    @IBOutlet weak var thumbnailImage: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var categoryAndWriter: UILabel!
    
    @IBOutlet weak var desc: UILabel!

    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var dDayLabel: UILabel!

    @IBOutlet weak var progressView: UIProgressView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

    func setCell(funding: Detail) {
        
//        let id: String
//        let detailID: Int
//        let image: String [0]
//        let category[0], writer [0], title[0], detailDescription[0]: String
//        let price[0]: String
//        let percent, dDay: Int
        
        
        let url = URL(string: funding.image)
        thumbnailImage.kf.setImage(with: url)
        
        
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
        
        desc.attributedText = NSMutableAttributedString(string: funding.detailDescription, attributes: [NSAttributedString.Key.kern: -0.39, NSAttributedString.Key.paragraphStyle: descParagraphStyle])
        desc.sizeToFit()
        
        priceLabel.text = funding.price
        percentLabel.text = "\(funding.percent)%"
        dDayLabel.text = "\(funding.dDay)일 남음"

        progressView.progress = Float((funding.percent > 100) ? 1: funding.percent / 100)
    
        
    }
    
}
