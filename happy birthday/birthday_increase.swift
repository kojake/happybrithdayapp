//
//  birthday_increase.swift
//  happy birthday
//
//  Created by kaito on 2022/12/11.
//

import UIKit
import PhotosUI

class birthday_increase: UIViewController,UITableViewDataSource, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    //photo_aitem
    @IBOutlet weak var phote_add_do_not_do_switch: UISwitch!
    @IBOutlet weak var add_photo_button: UIButton!
    @IBOutlet weak var photo_imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        add_photo_button.setTitle("追加できます", for: .normal)
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
        year.inputAccessoryView = toolBar
        month.inputAccessoryView = toolBar
        day.inputAccessoryView = toolBar
    }
    
    //名前、年、月、日
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var year: UITextField!
    @IBOutlet weak var month: UITextField!
    @IBOutlet weak var day: UITextField!
    
    //tableview
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return birthday_increase_tableview_list.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let TodoCell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        TodoCell.textLabel?.text = birthday_increase_tableview_list[indexPath.row]

        
        return TodoCell
    }
    
    //確認ボタンが押されたら
    @IBAction func decision(_ sender: Any) {
        if name.text?.isEmpty ?? true{
            let name_alert = UIAlertController(title: "エラー", message: "名前の欄が空白です", preferredStyle: .alert)
            name_alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(name_alert, animated: true, completion: nil)
        }
        else if year.text?.isEmpty ?? true{
            let year_alert = UIAlertController(title: "エラー", message: "年の欄が空白です", preferredStyle: .alert)
            year_alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(year_alert, animated: true, completion: nil)
        }
        else if month.text?.isEmpty ?? true{
            let month_alert = UIAlertController(title: "エラー", message: "月の欄が空白です", preferredStyle: .alert)
            month_alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(month_alert, animated: true, completion: nil)
        }
        else if day.text?.isEmpty ?? true{
            let day_alert = UIAlertController(title: "エラー", message: "日の欄が空白です", preferredStyle: .alert)
            day_alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(day_alert, animated: true, completion: nil)
        }
        else if Int(month.text!)! <= 0 || Int(month.text!)! >= 13{
            let day_alert = UIAlertController(title: "エラー", message: "月の欄を1以上12以下で入力してくださいです", preferredStyle: .alert)
            day_alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(day_alert, animated: true, completion: nil)
        }
        else if Int(day.text!)! <= 0 || Int(day.text!)! >= 32{
            let day_alert = UIAlertController(title: "エラー", message: "日の欄を1以上31以下で入力してくださいです", preferredStyle: .alert)
            day_alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(day_alert, animated: true, completion: nil)
        }

        else{
            day_pseudo = Int(day.text!)!
            month_pseudo = Int(month.text!)!
            year_pseudo = Int(year.text!)!
            name_pseudo = name.text!

            //確認アラートを出す
            let alert = UIAlertController(title: "確認", message: "名前：" + String(name_pseudo) + "生年月日" + "\(japanese_calendar)：\(year_pseudo)/\(month_pseudo)/\(day_pseudo)" + "で追加しますか", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "やめる", style: .cancel, handler: nil))
            alert.addAction(UIAlertAction(title: "追加", style: .default, handler:{_ in

                //追加ボタンが押されたら
                //和暦を定義する
                if year_pseudo <= 1925 {
                    let error_alert = UIAlertController(title: "エラー", message: "年の欄を1926年以上で入力してください", preferredStyle: .alert)
                    error_alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                    self.present(error_alert, animated: true, completion: nil)
                }
                else{
                    if year_pseudo >= 1926 && year_pseudo <= 1988{
                        japanese_calendar = "昭和"
                        add_happy_birthday(photoPath: String())
                    }
                    else if year_pseudo >= 1989 && year_pseudo <= 2019{
                        japanese_calendar = "平成"
                        add_happy_birthday(photoPath: String())
                    }
                    else if year_pseudo >= 2019 && year_pseudo <= 2022{
                        japanese_calendar = "令和"
                        add_happy_birthday(photoPath: String())
                    }
                    else{
                        let error_alert = UIAlertController(title: "エラー", message: "年の欄でエラーが発生しましたので追加できませんでした。1926年から今年までの年代を入力してください", preferredStyle: .alert)
                        error_alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                        self.present(error_alert, animated: true, completion: nil)
                    }
                }

            }))

            func add_happy_birthday(photoPath: String?){
                let space = "         "
                
                let birthdayListHouse = "\(space)\(name_pseudo):\(japanese_calendar)：\(year_pseudo)/\(month_pseudo)/\(day_pseudo)"

                var data: [String: Any] = [
                    "birthdayListHouse": birthdayListHouse
                ]
                if let photoPath = photoPath {
                    data["photoPath"] = photoPath
                }
                
                birthday_list.append(birthdayListHouse)
                photo.append(photoPath!)
                UserDefaults.standard.set(birthday_list, forKey: "birthday_listkey")
                UserDefaults.standard.set(photo, forKey: "photo_key")
                
//                if var birthdayList = UserDefaults.standard.array(forKey: "birthday_list_key") as? [[String: Any]] {
//                    birthdayList.append(data)
//                    UserDefaults.standard.set(birthdayList, forKey: "birthday_list_key")
//                } else {
//                    UserDefaults.standard.set([data], forKey: "birthday_list_key")
//                }
                
                //追加されたことを報告するアラート
                let add_alert = UIAlertController(title: "完了", message: "追加しました", preferredStyle: .alert)
                add_alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                self.present(add_alert, animated: true, completion: nil)
                
            }

            self.present(alert, animated: true, completion: nil)
        }
    }
    
    //写真
    @IBAction func photo_add_do_not_do_switch(_ sender: UISwitch) {
        if ( sender.isOn ) {
            add_photo_button.isEnabled = true
            add_photo_button.setTitle("追加できます", for: .normal)
        }
        else{
            add_photo_button.isEnabled = false
            add_photo_button.setTitle("追加できません", for: .normal)
        }
    }
    
    // 写真を選んだ後に呼ばれる処理
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print("ok3")
        // 選択した写真を取得する
        let image = info[.originalImage] as! UIImage
        // ビューに表示する
        photo_imageView.image = image
        // 写真を選ぶビューを引っ込める
        self.dismiss(animated: true)
        print("goal")
    }
    func getDocumentDirectoryPath() -> String? {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        return paths.first
    }
    func saveImageToDocumentDirectory(image: UIImage) -> String? {
        // 保存先のパスを取得
        guard let documentDirectoryPath = getDocumentDirectoryPath() else {
            return nil
        }
        let fileURL = URL(fileURLWithPath: documentDirectoryPath).appendingPathComponent("photo.jpg")
        // JPEG 形式で保存
        guard let imageData = image.jpegData(compressionQuality: 1.0) else {
            return nil
        }
        do {
            try imageData.write(to: fileURL)
            return fileURL.absoluteString
        } catch {
            print("Error saving image:", error)
            return nil
        }
    }
    
    
    //写真追加
    @IBAction func select_photo(_ sender: Any) {
        // カメラロールが利用可能か？
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            // 写真を選ぶビュー
            let pickerView = UIImagePickerController()
            // 写真の選択元をカメラロールにする
            // 「.camera」にすればカメラを起動できる
            pickerView.sourceType = .photoLibrary
            // デリゲート
            pickerView.delegate = self
            // ビューに表示
            self.present(pickerView, animated: true)
            print("ok1")
            
        }
    }
    //キーボードを閉じる
    @objc func commitButtonTappend(){
        self.view.endEditing(true)
    }
        
}
