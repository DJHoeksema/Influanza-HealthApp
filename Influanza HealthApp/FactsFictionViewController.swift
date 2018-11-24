//
//  FactsFictionViewController.swift
//  Influanza HealthApp
//
//  Created by David G Chopin on 11/24/18.
//  Copyright © 2018 Maryville App Development. All rights reserved.
//

import UIKit

class FactsFictionViewController: UIViewController {
    
    @IBOutlet var factsTableView: UITableView!
    @IBOutlet var fictionTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        factsTableView.delegate = self
        factsTableView.dataSource = self
        fictionTableView.delegate = self
        fictionTableView.dataSource = self
        
        factsTableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        fictionTableView.separatorStyle = UITableViewCell.SeparatorStyle.none
    }
}

extension FactsFictionViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: FactsFictionCell!
        if tableView == factsTableView {
            switch indexPath.row {
            case 0:
                let titleCell = tableView.dequeueReusableCell(withIdentifier: "FactsTitleCell") as? TitleCell
                return titleCell!
            case 1:
                cell = tableView.dequeueReusableCell(withIdentifier: "FactsFictionCell") as? FactsFictionCell
                cell.textView.text = "1. Flue viruses used in flue shots are inactive, so they cannot cause the flue."
            case 2:
                cell = tableView.dequeueReusableCell(withIdentifier: "FactsFictionCell") as? FactsFictionCell
                cell.textView.text = "2. You should get the flue shot ASAP because it takes about two weeks for antibodies to develop."
            case 3:
                cell = tableView.dequeueReusableCell(withIdentifier: "FactsFictionCell") as? FactsFictionCell
                cell.textView.text = "3. You are 60% less likely to need treatment for the flue if you get the vaccine."
            case 4:
                cell = tableView.dequeueReusableCell(withIdentifier: "FactsFictionCell") as? FactsFictionCell
                cell.textView.text = "4. Flue shots provide benefits such as reducing Illness and prevent time loss from work."
            default:
                return UITableViewCell()
            }
        } else {
            switch indexPath.row {
            case 0:
                let titleCell = tableView.dequeueReusableCell(withIdentifier: "FictionTitleCell") as? TitleCell
                return titleCell!
            case 1:
                cell = tableView.dequeueReusableCell(withIdentifier: "FactsFictionCell") as? FactsFictionCell
                cell.textView.text = "1. The flu shot can give me to flue."
            case 2:
                cell = tableView.dequeueReusableCell(withIdentifier: "FactsFictionCell") as? FactsFictionCell
                cell.textView.text = "2. I should wait to get vaccinated so that I'm coverd throughout the end of the season."
            case 3:
                cell = tableView.dequeueReusableCell(withIdentifier: "FactsFictionCell") as? FactsFictionCell
                cell.textView.text = "3. Vaccines are not proven to prevent the flu."
            case 4:
                cell = tableView.dequeueReusableCell(withIdentifier: "FactsFictionCell") as? FactsFictionCell
                cell.textView.text = "4. It is better to get the flue than the vaccine."
            default:
                return UITableViewCell()
            }
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
}
