//
//  smallCollectionViewCell.swift
//  hapdong-28th
//
//  Created by 양수빈 on 2021/05/15.
//

import UIKit

class smallCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    enum SmallCollectionViewUsage {
        case editorPick
        case expected
        case popular
        case new
    }
    
    var smallCollectionViewUsage: SmallCollectionViewUsage?

    // MARK: - @IBOutlet Properties
    
    @IBOutlet weak var smallCellImageView: UIImageView!
    @IBOutlet weak var smallSubHeadLabel: UILabel!
    @IBOutlet weak var smallHeadlineLabel: UILabel!
    
    @IBOutlet weak var smallSubHead2Label: UILabel!
    
    // MARK: - View Life Cycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        initImageView()
    }
    
    // MARK: - Functions

    func initImageView() {
        smallCellImageView.makeRounded(radius: 5)
    }
    
    func setCell(project: ProjectModel) {
        self.smallCellImageView.image = UIImage(named: project.image)
        self.smallSubHeadLabel.text = "\(project.category) | \(project.company)"
        self.smallHeadlineLabel.text = project.title
        
        switch self.smallCollectionViewUsage {
        case .editorPick, .popular, .new:
            self.smallSubHead2Label.text = "\(project.percentage)% 달성"
        case .expected:
            self.smallSubHead2Label.text = "\(project.percentage)명이 알림신청 중"
        default:
            self.smallSubHead2Label.text = "\(project.percentage)% 달성"
        }
    }

}
