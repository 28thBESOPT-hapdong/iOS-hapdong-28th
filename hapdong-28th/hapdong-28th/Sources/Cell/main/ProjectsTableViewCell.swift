//
//  ProjectsTableViewCell.swift
//  hapdong-28th
//
//  Created by 초이 on 2021/05/17.
//

import UIKit

class ProjectsTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    
    enum ProjectsTableViewCellUsage {
        case expected
        case popular
        case new
    }
    
    var projectsTableViewCellUsage: ProjectsTableViewCellUsage?
    
    var projects: [ProjectModel] = []
    
    // MARK: - @IBOutlet Properties
    
    @IBOutlet weak var projectTitleLabel: UILabel!
    @IBOutlet weak var projectCollectionView: UICollectionView!
    @IBOutlet weak var projectMoreButton: UIButton!
    
    // MARK: - View Life Cycle

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        registerXib()
        assignDelegate()
        assignDataSource()
        initMoreButton()
    }
    
    // MARK: - Functions

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func registerXib() {
        let smallCollectionViewCell = UINib(nibName: Const.Xib.Name.smallCollectionViewCell, bundle: nil)
        self.projectCollectionView.register(smallCollectionViewCell, forCellWithReuseIdentifier: Const.Xib.Name.smallCollectionViewCell)
    }
    
    func assignDelegate() {
        self.projectCollectionView.delegate = self
    }
    
    func assignDataSource() {
        self.projectCollectionView.dataSource = self
    }
    
    func initMoreButton() {
        projectMoreButton.makeRoundedWithBorder(radius: projectMoreButton.frame.height / 2, color: UIColor.gray.cgColor)
    }
    
    func initTitleLabel(usage: String) {
        switch usage {
        case "expected":
            self.projectTitleLabel.text = "공개예정 프로젝트"
        case "popular":
            self.projectTitleLabel.text = "인기 추천 프로젝트"
        case "new":
            self.projectTitleLabel.text = "신규 추천 프로젝트"
        default:
            self.projectTitleLabel.text = "-"
        }
    }
    
    // MARK: - @IBAction Functions
    
}

extension ProjectsTableViewCell: UICollectionViewDelegateFlowLayout {
    // cell 사이즈
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 166, height: 207)
    }
    
    //
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 37
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 13
    }
}

extension ProjectsTableViewCell: UICollectionViewDataSource {
    
    func setCell(row: [ProjectModel]) {
        self.projects = row
        self.projectCollectionView.reloadData()
    }
    
    // section 내 item 개수
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    // cell 지정
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Const.Xib.Identifier.smallCollectionViewCell, for: indexPath) as? smallCollectionViewCell {
            // set cell 함수
            
            switch self.projectsTableViewCellUsage {
            case .expected:
                cell.smallCollectionViewUsage = .expected
            case .popular:
                cell.smallCollectionViewUsage = .popular
            case .new:
                cell.smallCollectionViewUsage = .new
            default:
                cell.smallCollectionViewUsage = .editorPick
            }
            
            cell.setCell(project: projects[indexPath.row])
            
            return cell
        }
        return UICollectionViewCell()
    }
    
    
}
