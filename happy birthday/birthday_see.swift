//
//  birthday_see.swift
//  happy birthday
//
//  Created by kaito on 2022/12/11.
//

import UIKit

class birthday_see: UIViewController, UITableViewDataSource,UITableViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        birthday_list = UserDefaults.standard.object(forKey: "birthday_list_key") as! [String]
    }
    
    @IBOutlet weak var tableview: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return birthday_list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = birthday_list[indexPath.row]
        return cell
    }
    
    //読み込む
    @IBAction func reload(_ sender: Any) {
        viewDidLoad()
        tableview.reloadData()
    }
    
    //セルの消去
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        birthday_list.remove(at: indexPath.row)
        tableview.deleteRows(at: [indexPath], with: .top)
        UserDefaults.standard.set(birthday_list, forKey: "birthday_list_key")
    }
}
