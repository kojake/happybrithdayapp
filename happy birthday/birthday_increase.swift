//
//  birthday_increase.swift
//  happy birthday
//
//  Created by kaito on 2022/12/11.
//

import UIKit

class birthday_increase: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //キーボードを閉じるためのボタンを追加する
        //ツールバー作成
        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 40))
        toolBar.barStyle = UIBarStyle.default
        toolBar.sizeToFit()
        //閉じるボタンを右に配置するためのスペース
        let spacer = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: self, action: nil)
        //閉じるボタン
        let commitButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.commitButtonTappend))
        toolBar.items = [spacer, commitButton]
        name.inputAccessoryView = toolBar
        day.inputAccessoryView = toolBar
        month.inputAccessoryView = toolBar
    }
    //名前
    @IBOutlet weak var name: UITextField!
    //誕生日 month/day
    @IBOutlet weak var month: UITextField!
    @IBOutlet weak var day: UITextField!
    
    //確認ボタンがボタンが押されたら
    @IBAction func decision(_ sender: Any) {
        
        //もしdayがnilな場合はアラートを出す
        if day == nil{
            //アラート
            let alert = UIAlertController(title: "報告", message: "月の部分が入力されていません", preferredStyle: .alert)
            present(alert, animated: true, completion: nil)
            
            //okbutton
            let ok = UIAlertAction(title: "OK", style: .default) { (action) in
                self.dismiss(animated: true, completion: nil)
            }
            alert.addAction(ok)
            //ここまで追加
            present(alert, animated: true, completion: nil)
        }
        else{
            day_pseudo = Int(day.text!)!
        }
        
        month_pseudo = Int(month.text!)!
        name_pseudo = name.text!
    }
    //キーボードを閉じる
    @objc func commitButtonTappend(){
        self.view.endEditing(true)
    }
}
