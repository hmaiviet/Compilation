//
//  ViewController.swift
//  Compilation
//
//  Created by VietHung on 5/24/16.
//  Copyright © 2016 VietHung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf_user: UITextField!
    @IBOutlet weak var tf_password: UITextField!
    
    var arrayKeys: NSArray!
    var arrayValues: NSArray!
    let path = NSBundle.mainBundle().pathForResource("dangnhap", ofType: "plist")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let dictData = NSMutableDictionary(contentsOfFile: path)!
        arrayKeys = dictData.allKeys
        arrayValues = dictData.allValues
    }
    
    
    
    @IBAction func Login(sender: AnyObject) {
        let dictData = NSDictionary(contentsOfFile: path)!
        arrayKeys = dictData.allKeys
        arrayValues = dictData.allValues
        if let password = dictData[tf_user.text!]{
            if password as! String == tf_password.text!{
                print("Dang nhap thanh cong")
                let V3 = self.storyboard?.instantiateViewControllerWithIdentifier("view3") as? ViewCal
                self.navigationController?.pushViewController(V3!, animated: true)
            }
            else{
                print("Mat khau khong dung")
            }
        }
        else{
            print("Tai Khoang khong ton tai")
        }
    }
    
    

    @IBAction func UserList(sender: AnyObject) {
        let dictData = NSDictionary(contentsOfFile: path)!
        print(dictData.allKeys)
    }
    
    @IBAction func AddUser(sender: AnyObject) {
        let dictData = NSMutableDictionary(contentsOfFile: path)!
        if(UserExistence(tf_user.text!)){
            print("Tai khoan da ton tai")
        }
        else{
            let taikhoan = tf_user.text
            let matkhau = tf_password.text
            dictData.setValue(matkhau, forKey: taikhoan!)
            print("Tai khoan duoc dang ky thanh cong")
        }
        [dictData .writeToFile( path, atomically: true)]
    }
    func UserExistence(s2: String) -> Bool{
        let dictData = NSDictionary(contentsOfFile: path)!
        if ((dictData[s2]) != nil) {
            return true
        }
        else{
            return false
        }
    }
    
}

