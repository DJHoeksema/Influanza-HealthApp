//
//  ViewController.swift
//  Influanza HealthApp
//
//  Created by Djurre Hoeksema on 11/6/18.
//  Copyright © 2018 Maryville App Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? NavigationController {
            switch segue.identifier {
            case "Segue1":
                destinationVC.tabBarIndex = 0
            case "Segue2":
                destinationVC.tabBarIndex = 1
            case "Segue3":
                destinationVC.tabBarIndex = 2
            case "Segue4":
                destinationVC.tabBarIndex = 3
            case "Segue5":
                destinationVC.tabBarIndex = 4
            default:
                break
            }
        }
        
    }


}

