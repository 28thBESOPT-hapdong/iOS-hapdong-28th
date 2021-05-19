//
//  TestViewController.swift
//  hapdong-28th
//
//  Created by 양수빈 on 2021/05/17.
//

import UIKit

class TestViewController: UIViewController {
    
    @IBOutlet weak var filterView: SecondPgTopScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addCustomView()
        
    }
    
    func addCustomView() {
        if let customView = Bundle.main.loadNibNamed("SecondPageTopScrollView", owner: nil, options: nil)?.first as? UIView {
            customView.frame = self.filterView.bounds
            filterView.addSubview(customView)
        }
    }
}
