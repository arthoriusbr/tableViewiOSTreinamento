//
//  AppleAndroidTableViewCell.swift
//  ProjetoTableView
//
//  Created by administrador on 13/07/2018.
//  Copyright © 2018 administrador. All rights reserved.
//

import UIKit
import Reusable

class AppleAndroidTableViewCell: UITableViewCell, NibReusable {
       
    @IBOutlet weak var rowMultiplier: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
