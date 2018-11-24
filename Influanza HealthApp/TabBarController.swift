//
//  TabBarController.swift
//  Influanza HealthApp
//
//  Created by Djurre Hoeksema on 11/6/18.
//  Copyright © 2018 Maryville App Development. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func homeButtonPressed(_ sender: Any) {
        navigationController?.dismiss(animated: true, completion: nil)
    }
}
