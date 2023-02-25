//
//  birthday_see.swift
//  happy birthday
//
//  Created by kaito on 2022/12/11.
//

import UIKit

class birthday_see: UIViewController, UITableViewDataSource,UITableViewDelegate{
    
    //tableview
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        birthday_list = UserDefaults.standard.object(forKey: "birthday_list_key") as! [String]
        
//        //tableviewcustom
//        tableview.register(UINib(nibName: "customCell", bundle: nil), forCellReuseIdentifier: "customCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return birthday_list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView.dequeueReusableCell(withIdentifier: "customCell") is customCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath)
            cell.textLabel?.text = birthday_list[indexPath.row]
            
            return cell
        }
        return UITableViewCell()
    }
    
    //セルの消去
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        birthday_list.remove(at: indexPath.row)
        tableview.deleteRows(at: [indexPath], with: .top)
        UserDefaults.standard.set(birthday_list, forKey: "birthday_list_key")
    }

}
