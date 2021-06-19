//
//  ViewController.swift
//  tableViewWithSectionAndDic
//
//  Created by minal borole on 19/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    var nameArray: [String: [String]] = ["first": ["minal","sarika","triveni","dhanu","hemangi"],"second":["milind","sachin","bhushan","ulhas"]]
    
    var headerArray = ["first","second"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray[headerArray[section]]!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = nameArray[headerArray[indexPath.section]]![indexPath.row]
        cell?.detailTextLabel?.text = "learning tableview"
        return cell!
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return headerArray.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headerArray[section]
    }
}
