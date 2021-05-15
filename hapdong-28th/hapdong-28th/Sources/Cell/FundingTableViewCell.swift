//
//  FundingTableViewCell.swift
//  hapdong-28th
//
//  Created by Subeen Park on 2021/05/15.
//

import UIKit
import Then
import SnapKit

class FundingTableViewCell: UITableViewCell {
    
    let thumbnailImageView = UIImageView()
    let titleLabel = UILabel().then {
        $0.numberOfLines = 2
        $0.font = UIFont.AppleSDGothicNeo(.medium, size: 19)
        $0.textColor = .darkGray
        $0.textAlignment = .left
        
    }
    
    let categoryAndWriterLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 9)
        $0.textColor = .rightGray
        $0.textAlignment = .left
    }
    
    let descriptionLabel = UILabel().then {
        $0.numberOfLines = 2
        $0.font = .AppleSDGothicNeo(.medium, size: 13)
        $0.textColor = .darkGray
        $0.textAlignment = .left
        
    }
    
    let statusBarBackground = UIView().then {
        $0.backgroundColor = .darkGray
    }
    
    let statusBarHighlighted = UIView().then {
        $0.backgroundColor = .whiteGray
    }
    
    let statusBar = UIView()
    
    let priceLabel = UILabel().then {
        $0.font = UIFont.AppleSDGothicNeo(.medium, size: 17)
        $0.textColor = .darkGray
        $0.textAlignment = .left
    }
    let percentLabel = UILabel().then {
        $0.font = UIFont.AppleSDGothicNeo(.medium, size: 13)
        $0.textColor = .redOrange
        
    }
    let dDayView = UIView()
    let dDayImage = UIImageView()
    let dDayLabel = UILabel()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func addSubViews() {
        contentView.addSubview(thumbnailImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(categoryAndWriterLabel)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(statusBar)
        contentView.addSubview(priceLabel)
        contentView.addSubview(percentLabel)
        contentView.addSubview(dDayView)
        contentView.addSubview(dDayImage)
        contentView.addSubview(dDayLabel)
        
    }
    
    
    private func setLayOuts() {
        
        setThumbnailImageViewLayout()
        setTitleLabelLayout()
        setCategoryAndWriterLabelLayout()
        setStatusBarLayout()
        
        
        
    }
    
    private func setThumbnailImageViewLayout() {
        
        self.thumbnailImageView.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(11)
            $0.top.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.height.equalTo(281)
        }
        
    }
    
    private func setTitleLabelLayout() {
        
        self.titleLabel.snp.makeConstraints {
            $0.leading.equalToSuperview()
            $0.top.equalTo(self.thumbnailImageView.snp.bottom).offset(18)
            $0.height.equalTo(62)
        }
    }
    
    private func setCategoryAndWriterLabelLayout() {
        
        self.categoryAndWriterLabel.snp.makeConstraints {
            $0.leading.equalToSuperview()
            $0.top.equalTo(self.titleLabel.snp.bottom).offset(8)
            $0.height.equalTo(11)
        }
    }
    
    private func setDescriptionLabelLayout() {
        
        self.descriptionLabel.snp.makeConstraints {
            $0.leading.equalToSuperview()
            $0.top.equalTo(self.categoryAndWriterLabel.snp.bottom).offset(10)
            $0.height.equalTo(45)
        }
    }
    
    private func setStatusBarLayout() {
        
        statusBar.addSubview(statusBarBackground)
        statusBar.addSubview(statusBarHighlighted)
        
        self.statusBar.snp.makeConstraints {
            $0.leading.equalToSuperview()
            $0.top.equalTo(self.descriptionLabel.snp.bottom).offset(8)
            $0.trailing.equalToSuperview()
            $0.height.equalTo(4)
        }
        
        self.statusBarBackground.snp.makeConstraints {
            $0.leading.equalToSuperview()
            $0.top.equalToSuperview()
            $0.height.equalToSuperview()
            $0.trailing.equalToSuperview()
        }
        
        self.statusBarHighlighted.snp.makeConstraints {
            $0.leading.equalToSuperview()
            $0.top.equalToSuperview()
            $0.trailing.equalToSuperview().inset(20)
        }
        
    }
    
    private func setPriceLabelLayout() {
        
    }
    
    
  
    

    
    
}
