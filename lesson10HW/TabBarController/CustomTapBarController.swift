//
//  CustomTapBarController.swift
//  lesson10HW
//
//  Created by Дмитрий Петрушенко on 03/04/2025.
//

import UIKit

class CustomTapBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = houseViewController()
        vc1.navigationItem.title = "Home screen"
     
      
        let navigationController = UINavigationController(rootViewController: vc1)

        navigationController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        
        let tabBarItem2 = UITabBarItem(title: "Bolt",
                                       image: UIImage(systemName: "bolt"),
                                       tag: 2)
        let tabBarItem3 = UITabBarItem(title:"ICloud", image:
                                        UIImage(systemName: "icloud"),
                                       tag: 3)
        
        let viewController2 = boltViewController()
        let viewController3 = icloudViewController(customText: "Hello, user!")
        
        viewController2.tabBarItem = tabBarItem2
        viewController3.tabBarItem = tabBarItem3
        
        
        viewControllers = [navigationController, viewController2, viewController3]
    
    }
}
