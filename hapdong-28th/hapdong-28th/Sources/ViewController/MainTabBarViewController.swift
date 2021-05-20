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
        delegate = self
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



extension MainTabBarViewController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return MyTransition(viewControllers: tabBarController.viewControllers)
    }
}

class MyTransition: NSObject, UIViewControllerAnimatedTransitioning {

    let viewControllers: [UIViewController]?
    let transitionDuration: Double = 0.3

    init(viewControllers: [UIViewController]?) {
        self.viewControllers = viewControllers
    }

    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return TimeInterval(transitionDuration)
    }

    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {

        guard
            let fromVC = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.from),
            let fromView = fromVC.view,
            let fromIndex = getIndex(forViewController: fromVC),
            let toVC = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.to),
            let toView = toVC.view,
            let toIndex = getIndex(forViewController: toVC)
            else {
                transitionContext.completeTransition(false)
                return
        }

        let frame = transitionContext.initialFrame(for: fromVC)
        var fromFrameEnd = frame
        var toFrameStart = frame
        fromFrameEnd.origin.x = toIndex > fromIndex ? frame.origin.x - frame.width : frame.origin.x + frame.width
        toFrameStart.origin.x = toIndex > fromIndex ? frame.origin.x + frame.width : frame.origin.x - frame.width
        toView.frame = toFrameStart

        DispatchQueue.main.async {
            transitionContext.containerView.addSubview(toView)
            UIView.animate(withDuration: self.transitionDuration, animations: {
                fromView.frame = fromFrameEnd
                toView.frame = frame
            }, completion: {success in
                fromView.removeFromSuperview()
                transitionContext.completeTransition(success)
            })
        }
    }

    func getIndex(forViewController vc: UIViewController) -> Int? {
        guard let vcs = self.viewControllers else { return nil }
        for (index, thisVC) in vcs.enumerated() {
            if thisVC == vc { return index }
        }
        return nil
    }
}
