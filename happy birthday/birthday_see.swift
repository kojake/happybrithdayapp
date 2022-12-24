//
//  birthday_see.swift
//  happy birthday
//
//  Created by kaito on 2022/12/11.
//

import UIKit

class birthday_see: UIViewController, UITableViewDataSource{
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview.dataSource = self
    }
    
    if let birthdayList = UserDefaults.standard.array(forKey: "birthday_list_key") as? [String] {
        birthday_list_see = birthdayList
    } else {
        birthday_list_see = []
    }

    
    @IBOutlet weak var tableview: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return birthday_list_see.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = birthday_list_see[indexPath.row]
        return cell
    }
    
}
