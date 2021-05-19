//
//  ExhibitionTableViewCell.swift
//  hapdong-28th
//
//  Created by 초이 on 2021/05/17.
//

import UIKit

class ExhibitionTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    
    var exhibitions: [ExhibitionModel] = []
    
    // MARK: - @IBOutlet Properties
    
    @IBOutlet weak var exhibitionTitleLabel: UILabel!
    @IBOutlet weak var exhibitionCollectionView: UICollectionView!
    @IBOutlet weak var progressBgView: UIView!
    @IBOutlet weak var progressSmallView: UIView!
    
    // MARK: - View Life Cycle

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        registerXib()
        assignDelegate()
        assignDataSource()
    }
    
    // MARK: - Functions

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func registerXib() {
        let exhibitionCollectionViewCell = UINib(nibName: Const.Xib.Name.exhibitionCollectionViewCell, bundle: nil)
        self.exhibitionCollectionView.register(exhibitionCollectionViewCell, forCellWithReuseIdentifier: Const.Xib.Name.exhibitionCollectionViewCell)
    }
    
    func assignDelegate() {
        self.exhibitionCollectionView.delegate = self
    }
    
    func assignDataSource() {
        self.exhibitionCollectionView.dataSource = self
    }
    
    
    // MARK: - @IBAction Functions
    
}

extension ExhibitionTableViewCell: UICollectionViewDelegateFlowLayout {
    
    // cell 사이즈
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 302, height: 282)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 14
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
    }
    
}

extension ExhibitionTableViewCell: UICollectionViewDataSource {
    func setCell(row: [ExhibitionModel]) {
        self.exhibitions = row
        self.exhibitionCollectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Const.Xib.Identifier.ExhibitionCollectionViewCell, for: indexPath) as? ExhibitionCollectionViewCell {
            // set cell 함수
            
            cell.setCell(exhibition: exhibitions[indexPath.row])
            
            return cell
        }
        return UICollectionViewCell()
    }
    
    
}
