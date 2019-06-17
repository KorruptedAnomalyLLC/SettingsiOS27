//
//  SettingController.swift
//  SettingsiOS27
//
//  Created by Austin West on 6/17/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import Foundation

class SettingController {
    
//    Singleton
    static let sharedInstance = SettingController()
    
    let settings: [Setting] = {
        let music = Setting(name: "iTunes", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let appStore = Setting(name: "App Store", icon: #imageLiteral(resourceName: "appStore"), isOn: false)
        let iBooks = Setting(name: "iBooks", icon: #imageLiteral(resourceName: "iBooks"), isOn: true)
        
        return [music, appStore, iBooks]
    } ()
    
    func toggleIsOn(for setting: Setting) {
        setting.isOn = !setting.isOn
    }
    
}
