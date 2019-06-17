//
//  SettingTableViewCell.swift
//  SettingsiOS27
//
//  Created by Austin West on 6/17/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {
    
    @IBOutlet weak var settingIconImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    
    func updateViews(with setting: Setting) {
        settingIconImageView.image = setting.icon
        settingNameLabel.text = setting.name
        settingSwitch.isOn = setting.isOn
        
    /*    if settingSwitch.isOn == true {
            self.backgroundColor = UIColor.orange
        } else {
            self.backgroundColor = UIColor.white
        }
 */
        
//        turnary operator
        self.backgroundColor = settingSwitch.isOn ? .orange : .white
    }
}
