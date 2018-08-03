//
//  ViewController.swift
//  TabBarProgrammatic
//
//  Created by chris  on 8/2/18.
//  Copyright © 2018 kuronuma studios. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.barTintColor = .green
        
        
      setupTabBar()
    }

    
    func setupTabBar() {
        //These are the controller views
        let videoController = createNavController(vc: VideoViewController(), title: "Video", selected: nil, unselected: nil)
        
        let favoritesController = createNavController(vc: FavoritesController(), title: "Favorites", selected: nil, unselected: nil)
        
        //make the tabBars appear
        viewControllers = [videoController, favoritesController]
        
        
        //Create insets for the tabBar
        guard let items = tabBar.items else { return }
        
        for item in items {
            item.imageInsets = UIEdgeInsetsMake(4, 0, -4, 0)
        }
    }


}


extension UITabBarController {
    //
    //function to easily set up tabBars
    func createNavController(vc: UIViewController, title: String?, selected: UIImage?, unselected: UIImage?) -> UINavigationController {
    
        let viewController = vc
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.image = unselected
        navController.tabBarItem.selectedImage = selected
        navController.tabBarItem.title = title
        return navController
    }
}

