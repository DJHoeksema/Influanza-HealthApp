//
//  NavigationController.swift
//  Influanza HealthApp
//
//  Created by David G Chopin on 11/24/18.
//  Copyright © 2018 Maryville App Development. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    var tabBarIndex: Int!
    
    override func viewDidLoad() {
        if let tabBarController = self.topViewController as? TabBarController {
            tabBarController.selectedIndex = tabBarIndex
        }
    }
}
