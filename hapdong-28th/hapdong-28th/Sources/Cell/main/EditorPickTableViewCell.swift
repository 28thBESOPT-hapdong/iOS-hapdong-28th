//
//  EditorPickTableViewCell.swift
//  hapdong-28th
//
//  Created by 초이 on 2021/05/17.
//

import UIKit

class EditorPickTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    
    var editorPickProjects: [ProjectModel] = []
    
    // MARK: - @IBOutlet Properties
    
    @IBOutlet weak var editorPickSegmentedControl: UISegmentedControl!
    @IBOutlet weak var editorPickCollectionView: UICollectionView!
    @IBOutlet weak var pageView1: UIView!
    @IBOutlet weak var pageView2: UIView!
    @IBOutlet weak var pageView3: UIView!
    
    // MARK: - View Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        assignDelegate()
        assignDataSource()
        registerXib()
        initSegmentedControl()
    }
    
    // MARK: - Functions

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func registerXib() {
        let smallCollectionViewCell = UINib(nibName: Const.Xib.Name.smallCollectionViewCell, bundle: nil)
        self.editorPickCollectionView.register(smallCollectionViewCell, forCellWithReuseIdentifier: Const.Xib.Name.smallCollectionViewCell)
    }
    
    private func assignDelegate() {
        self.editorPickCollectionView.delegate = self
    }
    
    private func assignDataSource() {
        self.editorPickCollectionView.dataSource = self
    }
    
    private func initSegmentedControl() {
        let backgroundImage = UIImage()
        self.editorPickSegmentedControl.setBackgroundImage(backgroundImage, for: .normal, barMetrics: .default)
        self.editorPickSegmentedControl.setBackgroundImage(backgroundImage, for: .selected, barMetrics: .default)
        self.editorPickSegmentedControl.setBackgroundImage(backgroundImage, for: .highlighted, barMetrics: .default)

        let deviderImage = UIImage()
        self.editorPickSegmentedControl.setDividerImage(deviderImage, forLeftSegmentState: .selected, rightSegmentState: .normal, barMetrics: .default)
        self.editorPickSegmentedControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.gray], for: .normal)
        self.editorPickSegmentedControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .selected)
    }
    
    // MARK: - @IBAction Functions
    
    
    
}

// MARK: - UICollectionViewDelegateFlowLayout

extension EditorPickTableViewCell: UICollectionViewDelegateFlowLayout {
    
    // cell 사이즈
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 166, height: 207)
    }
    
    //
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 13
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
    }
}

// MARK: - UICollectionViewDataSource

extension EditorPickTableViewCell: UICollectionViewDataSource {
    
    func setCell(row: [ProjectModel]) {
        self.editorPickProjects = row
        self.editorPickCollectionView.reloadData()
    }
    
    // section 내 item 개수
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    // cell 지정
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Const.Xib.Identifier.smallCollectionViewCell, for: indexPath) as? smallCollectionViewCell {
            // set cell 함수
            
            cell.smallCollectionViewUsage = .editorPick
            cell.setCell(project: editorPickProjects[indexPath.row])
            
            return cell
        }
        return UICollectionViewCell()
    }
    
    
    
}
