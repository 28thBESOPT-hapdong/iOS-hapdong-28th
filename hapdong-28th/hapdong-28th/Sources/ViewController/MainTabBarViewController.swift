//
//  MainTabBarViewController.swift
//  hapdong-28th
//
//  Created by Subeen Park on 2021/05/19.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    
    static let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let first = mainStoryboard.instantiateViewController(withIdentifier: "MainViewController")
    
    static let secondStoryboard = UIStoryboard(name: "Second", bundle: nil)
    let second = secondStoryboard.instantiateViewController(withIdentifier: "SecondViewController")
    
    let third = ThirdViewController()
    let fourth = FourthViewController()
    let fifth = FifthViewController()
     

     override func viewDidLoad() {
         super.viewDidLoad()
        overrideUserInterfaceStyle = .light
         tabBar.barTintColor = .white
         tabBar.tintColor = .redOrange
         setTabs()

         // Do any additional setup after loading the view.
     }
     
     
     func setTabs() {
         
         first.tabBarItem = UITabBarItem(title: "홈", image: UIImage(named: "home24Px"), tag: 0)
         second.tabBarItem = UITabBarItem(title: "둘러보기", image: UIImage(named: "search24Px"), tag: 1)
         third.tabBarItem = UITabBarItem(title: "좋아한", image: UIImage(named: "home24Px"), tag: 2)
         fourth.tabBarItem = UITabBarItem(title: "성공임박", image: UIImage(named: "iconGaol24Px"), tag: 3)
         fifth.tabBarItem = UITabBarItem(title: "더보기", image: UIImage(named: "iconPlus24Px"), tag: 4)
         
         
         self.viewControllers = [first, second, third, fourth, fifth]
     }
     

}
