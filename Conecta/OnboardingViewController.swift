//
//  OnboardingViewController.swift
//  ConectaOnboarding
//
//  Created by Marina de Lira Pessoa Mota on 07/12/17.
//  Copyright © 2017 Marina de Lira Pessoa Mota. All rights reserved.
//

import UIKit


class OnboardingViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self// as? UIPageViewControllerDataSource
        
        
   
        
        
        if let firstViewController = orderedViewControllers.first {
            
            setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
  lazy var orderedViewControllers: [UIViewController] = {
        return [self.myViewControllerAt(position: "Primeira"),
                self.myViewControllerAt(position: "Segunda"),
                self.myViewControllerAt(position: "Terceira")]
        
        
    }()
    

    var index = 0
    
    
    func myViewControllerAt(position: String) -> UIViewController {
        return UIStoryboard(name: "OnBoarding", bundle: nil).instantiateViewController(withIdentifier: "\(position)ViewController")
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController)
            
            else {
            return nil
                
        }
    
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0
        
            else {
                return nil
        }
        
        guard orderedViewControllers.count > previousIndex
        
            else {
                
                return nil
        }
        
        
        return orderedViewControllers[previousIndex]
        
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController)
        
            else {
                return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        let orderedViewControllersCount = orderedViewControllers.count
        
        guard orderedViewControllersCount != nextIndex
        
            else {
                
                return nil
        }
        
        guard orderedViewControllersCount > nextIndex
        
            else {
                return nil
        }
        
        return orderedViewControllers[nextIndex]
        
        
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return orderedViewControllers.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        guard let firstViewController = viewControllers?.first,
            let firstViewControllerIndex = orderedViewControllers.index(of: firstViewController)
            
            else {
                return 0
        }
        
        return firstViewControllerIndex
    }
    
    
    
    
    //    func pageViewController(_ pageViewController: UIPageViewController,
    //                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
    //        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
    //            return nil
    //        }
    //
    //        let previousIndex = viewControllerIndex - 1
    //
    //        guard previousIndex >= 0 else {
    //            return nil
    //        }
    //
    //        guard orderedViewControllers.count > previousIndex else {
    //            return nil
    //        }
    //
    //        return orderedViewControllers[previousIndex]
    //    }
    //
    //    func pageViewController(_ pageViewController: UIPageViewController,
    //                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
    //        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
    //            return nil
    //        }
    //
    //        let nextIndex = viewControllerIndex + 1
    //        let orderedViewControllersCount = orderedViewControllers.count
    //
    //        guard orderedViewControllersCount != nextIndex else {
    //            return nil
    //        }
    //
    //        guard orderedViewControllersCount > nextIndex else {
    //            return nil
    //        }
    //
    //        return orderedViewControllers[nextIndex]
    //    }
    

    
//    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
//        return nil
//    }
//
//    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
//        return nil
//    }
    
}


