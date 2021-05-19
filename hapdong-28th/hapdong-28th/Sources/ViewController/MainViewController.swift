//
//  ViewController.swift
//  hapdong-28th
//
//  Created by 초이 on 2021/05/15.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Properties
    
    var exampleArray = Tumblebug()
    
    // MARK: - @IBOutlet Properties
    
    @IBOutlet weak var mainTableView: UITableView!
    @IBOutlet weak var mainSegmentedControl: UISegmentedControl!
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        assignDelegate()
        assignDataSource()
        registerXib()
        initSegmentedControl()
        initNavigationBar()
    }
    
    // MARK: - Functions
    
    private func initNavigationBar() {
        let logo = UIBarButtonItem(image: UIImage (named: "logo"), style: UIBarButtonItem.Style.plain, target: self, action: nil)

        self.navigationItem.leftBarButtonItem = logo
        
        let personIcon = UIBarButtonItem(image: UIImage (named: "setting24Px"), style: UIBarButtonItem.Style.plain, target: self, action: nil)
        let bellIcon = UIBarButtonItem(image: UIImage (named: "alarm24Px"), style: UIBarButtonItem.Style.plain, target: self, action: nil)
        
        self.navigationItem.rightBarButtonItems = [bellIcon, personIcon]
    }
    
    private func assignDelegate() {
        self.mainTableView.delegate = self
    }
    
    private func assignDataSource() {
        self.mainTableView.dataSource = self
    }
    
    private func registerXib() {
        let editorPickTableViewCell = UINib(nibName: Const.Xib.Name.editorPickTableViewCell, bundle: nil)
        self.mainTableView.register(editorPickTableViewCell, forCellReuseIdentifier: Const.Xib.Name.editorPickTableViewCell)
        let exhibitionTableViewCell = UINib(nibName: Const.Xib.Name.exhibitionTableViewCell, bundle: nil)
        self.mainTableView.register(exhibitionTableViewCell, forCellReuseIdentifier: Const.Xib.Name.exhibitionTableViewCell)
        let projectsTableViewCell = UINib(nibName: Const.Xib.Name.projectsTableViewCell, bundle: nil)
        self.mainTableView.register(projectsTableViewCell, forCellReuseIdentifier: Const.Xib.Name.projectsTableViewCell)
    }
    
    private func initSegmentedControl() {
        let backgroundImage = UIImage()
        self.mainSegmentedControl.setBackgroundImage(backgroundImage, for: .normal, barMetrics: .default)
        self.mainSegmentedControl.setBackgroundImage(backgroundImage, for: .selected, barMetrics: .default)
        self.mainSegmentedControl.setBackgroundImage(backgroundImage, for: .highlighted, barMetrics: .default)

        let deviderImage = UIImage()
        self.mainSegmentedControl.setDividerImage(deviderImage, forLeftSegmentState: .selected, rightSegmentState: .normal, barMetrics: .default)
        self.mainSegmentedControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.gray], for: .normal)
        self.mainSegmentedControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.redOrange, .font: UIFont.systemFont(ofSize: 13, weight: .semibold)], for: .selected)
    }
    
    // MARK: - @IBAction Functions
    
    
}

extension MainViewController: UITableViewDelegate {
}

extension MainViewController: UITableViewDataSource {
    
    // section 별 rows 수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    // cell 지정
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        // 에디터픽, 인기찜, 성공임박
        case 0:
            if let cell = tableView.dequeueReusableCell(withIdentifier: Const.Xib.Identifier.editorPickTableViewCell) as? EditorPickTableViewCell {
                // set cell 함수 호출
                let rowArray = exampleArray.objectArray[0] as! [ProjectModel]
                
                cell.setCell(row: rowArray)
                
                return cell
            }
            return UITableViewCell()
            
        // 공개예정 프로젝트
        case 1:
            if let cell = tableView.dequeueReusableCell(withIdentifier: Const.Xib.Identifier.projectsTableViewCell) as? ProjectsTableViewCell {
                // set cell 함수 호출
                
                let rowArray = exampleArray.objectArray[1] as! [ProjectModel]
                
                cell.setCell(row: rowArray)
                cell.initTitleLabel(usage: "expected")
                cell.projectsTableViewCellUsage = .expected
                
                return cell
            }
            return UITableViewCell()
            
        // 진행중인 기획전
        case 2:
            if let cell = tableView.dequeueReusableCell(withIdentifier: Const.Xib.Identifier.exhibitionTableViewCell) as? ExhibitionTableViewCell {
                // set cell 함수 호출
                
                let rowArray = exampleArray.objectArray[2] as! [ExhibitionModel]
                
                cell.setCell(row: rowArray)
                
                return cell
            }
            return UITableViewCell()
            
        // 인기 추천 프로젝트
        case 3:
            if let cell = tableView.dequeueReusableCell(withIdentifier: Const.Xib.Identifier.projectsTableViewCell) as? ProjectsTableViewCell {
                // set cell 함수 호출
                let rowArray = exampleArray.objectArray[3] as! [ProjectModel]
                
                cell.setCell(row: rowArray)
                cell.initTitleLabel(usage: "popular")
                cell.projectsTableViewCellUsage = .popular
                
                return cell
            }
            return UITableViewCell()
            
        // 신규 추천 프로젝트
        case 4:
            if let cell = tableView.dequeueReusableCell(withIdentifier: Const.Xib.Identifier.projectsTableViewCell) as? ProjectsTableViewCell {
                // set cell 함수 호출
                let rowArray = exampleArray.objectArray[4] as! [ProjectModel]
                
                cell.setCell(row: rowArray)
                cell.initTitleLabel(usage: "new")
                cell.projectsTableViewCellUsage = .new
                
                return cell
            }
            return UITableViewCell()
            
        // default
        default:
            return UITableViewCell()
        }
    }
    
    
}
