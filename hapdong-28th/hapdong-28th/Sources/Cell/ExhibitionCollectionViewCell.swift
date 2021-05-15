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
    }
    
    // MARK: - Functions
    
    func initTagViews() {
        tagBgView1.makeRoundedWithBorder(radius: tagBgView1.frame.height / 2, color: UIColor.RedOrange.cgColor)
    }
    
    // MARK: - @IBAction Functions
    

}
