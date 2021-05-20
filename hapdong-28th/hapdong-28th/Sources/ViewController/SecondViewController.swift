//
//  SecondViewController.swift
//  hapdong-28th
//
//  Created by Subeen Park on 2021/05/19.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var filterView: SecondPgTopScrollView!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var newProjectLabel: UILabel!
    
    let fundingArray = Tumblebug().objectArray[5]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addCustomView()

        // Do any additional setup after loading the view.

        assignDelegate()
        assignDataSource()
        
        tableView.separatorStyle = .none
        tableView.rowHeight = UITableView.automaticDimension
        
        registerXib()
        
        let myMutableString = NSMutableAttributedString(string: newProjectLabel.text ?? "")
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.RedOrange, range: NSRange(location:0,length:3))
        newProjectLabel.attributedText = myMutableString
        
        
        
    }
    
    // SecondPageTopScrollView
    func addCustomView() {
        if let customView = Bundle.main.loadNibNamed("SecondPageTopScrollView", owner: nil, options: nil)?.first as? UIView {
            customView.frame = filterView.bounds
            filterView.addSubview(customView)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    private func assignDelegate() {
        tableView.delegate = self
    }
    
    private func assignDataSource() {
        tableView.dataSource = self
    }
    
    private func registerXib() {
        let fundingTableViewCell = UINib(nibName: Const.Xib.Name.fundingTableViewCell, bundle: nil)
        self.tableView.register(fundingTableViewCell, forCellReuseIdentifier: Const.Xib.Name.fundingTableViewCell)
    }
    

}

extension SecondViewController: UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return fundingArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        var cellSpacingHeight: CGFloat
        switch section {
        case 0:
            cellSpacingHeight = 0
        default:
            cellSpacingHeight = 19
        }
        return cellSpacingHeight
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }


    
}

extension SecondViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Const.Xib.Identifier.fundingTableViewCell, for: indexPath) as? FundingTableViewCell else {return UITableViewCell() }

        cell.setCell(funding: fundingArray[indexPath.section] as! FundingModel)
           return cell
    }
    
    

    
    
}



