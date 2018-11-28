//
//  WhoShouldreceiveViewController.swift
//  Influanza HealthApp
//
//  Created by Zach McDonald on 11/28/18.
//  Copyright © 2018 Maryville App Development. All rights reserved.
//

import Foundation
import UIKit

class WhoShouldReceiveViewController: UIViewController {
    
    @IBOutlet var segmentControl: UISegmentedControl!
    @IBOutlet var textView1: UITextView!
    @IBOutlet var textView2: UITextView!
    @IBOutlet var textView3: UITextView!
    @IBOutlet var textView4: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentControl.selectedSegmentIndex = 0
    }
    
    @IBAction func segmentControlToggled(_ sender: Any) {
        if segmentControl.selectedSegmentIndex == 0 {
            
            
            textView1.text = "Who Should Absolutly Recieve the Flu Shot?"
            textView2.text = "* Children age 6 months through 4 years (Infants less than 6 months are especially susceptible to the flue, but are too young to recieve the vaccine)"
            textView3.text = "* Adults age 50 year or older"
            textView4.text = "* People who have medical conditions that would make it difficult to fight infections."
        } else {
            textView1.text = "Who Should not Receive the Flu Shot"
            textView2.text = "* Infants younger than 6 months           of age"
            textView3.text = "* Individuals with severe life-threatening allergies to the flu vaccine"
            textView4.text = "* Individuals who have had a history of a severe paralyzing illness known as Guillian-Barre Syndrome"
        }
    }
}
