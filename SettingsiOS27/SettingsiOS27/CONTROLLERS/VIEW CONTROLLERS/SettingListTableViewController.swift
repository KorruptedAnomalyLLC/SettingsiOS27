//
//  SettingListTableViewController.swift
//  SettingsiOS27
//
//  Created by Austin West on 6/17/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import UIKit

class SettingListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return SettingController.sharedInstance.settings.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else { return UITableViewCell() }
        
        let setting = SettingController.sharedInstance.settings[indexPath.row]
        //        Actually setting the delegate, Do not forget this!
        cell.cellDelegate = self
        cell.updateViews(with: setting)
        return cell
    }
    
} // End of class
//conforming to protocol
extension SettingListTableViewController: SettingCellDelegate {
    func settingSwitchTapped(for cell: SettingTableViewCell) {
        //        Find the index path of the cell
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        //        Using that index path - find the setting
        let setting = SettingController.sharedInstance.settings[indexPath.row]
        //        toggle the isOn for the setting
        SettingController.sharedInstance.toggleIsOn(for: setting)
        //        update the cells view
        cell.updateViews(with: setting)
    }
}
