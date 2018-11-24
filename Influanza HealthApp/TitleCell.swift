//
//  TitleCell.swift
//  Influanza HealthApp
//
//  Created by David G Chopin on 11/24/18.
//  Copyright © 2018 Maryville App Development. All rights reserved.
//

import UIKit

class TitleCell: UITableViewCell {
    @IBOutlet var titleLabel: UILabel!
    
    override func layoutSubviews() {
        selectionStyle = .none
        let underlineAttriString = NSAttributedString(string: titleLabel.text!,
                                                      attributes: [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue])
        titleLabel.attributedText = underlineAttriString
    }
}
