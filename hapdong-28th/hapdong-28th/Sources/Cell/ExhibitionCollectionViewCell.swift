//
//  ExhibitionCollectionViewCell.swift
//  hapdong-28th
//
//  Created by 초이 on 2021/05/15.
//

import UIKit

class ExhibitionCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    // MARK: - @IBOutlet Properties
    @IBOutlet weak var ExhibitionImageVIew: UIImageView!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var tagBgView1: UIView!
    @IBOutlet weak var tagBgView2: UIView!
    @IBOutlet weak var tagBgView3: UIView!
    @IBOutlet weak var tagBgView4: UIView!
    @IBOutlet weak var tagLabel1: UILabel!
    @IBOutlet weak var tagLabel2: UILabel!
    @IBOutlet weak var tagLabel3: UILabel!
    @IBOutlet weak var tagLabel4: UILabel!
    
    // MARK: - View Life Cycle

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        initTagViews()
    }
    
    // MARK: - Functions
    
    func initTagViews() {
        tagBgView1.makeRoundedWithBorder(radius: tagBgView1.frame.height / 2, color: UIColor.RedOrange.cgColor)
        tagBgView2.makeRoundedWithBorder(radius: tagBgView1.frame.height / 2, color: UIColor.RedOrange.cgColor)
        tagBgView3.makeRoundedWithBorder(radius: tagBgView1.frame.height / 2, color: UIColor.RedOrange.cgColor)
        tagBgView4.makeRoundedWithBorder(radius: tagBgView1.frame.height / 2, color: UIColor.RedOrange.cgColor)
    }
    
    func setCell(exhibition: ExhibitionModel) {
        self.ExhibitionImageVIew.image = UIImage(named: exhibition.image)
        self.numberLabel.text = exhibition.projectCount
        self.tagLabel1.text = "#\(exhibition.tags[0])"
        self.tagLabel2.text = "#\(exhibition.tags[1])"
        self.tagLabel3.text = "#\(exhibition.tags[2])"
        self.tagLabel4.text = "#\(exhibition.tags[3])"
        
    }
    
    // MARK: - @IBAction Functions
    

}
