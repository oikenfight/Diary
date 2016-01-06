//
//  inputViewController.swift
//  Diary
//
//  Created by 及川雄太 on 2016/01/06.
//  Copyright © 2016年 及川雄太. All rights reserved.
//

import UIKit
import RealmSwift

class InputViewController: UIViewController {
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextView: UITextView!
    
    let realm = try! Realm()
    var diary: Diary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // NavigationBar の戻るボタンを消す
        self.navigationItem.setHidesBackButton(true, animated:false);
        
        titleTextField.text = diary.title
        bodyTextView.text = diary.body
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save(sender: UIButton) {
        try! realm.write {
            self.diary.title = self.titleTextField.text!
            self.diary.body = self.bodyTextView.text
            self.diary.date = NSDate()
            self.realm.add(self.diary, update: true)
        }
        
        self.navigationController?.popViewControllerAnimated(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
