//
//  Diary.swift
//  Diary
//
//  Created by 及川雄太 on 2016/01/07.
//  Copyright © 2016年 及川雄太. All rights reserved.
//

import RealmSwift

class Diary: Object {
    // 管理用 ID, プライマリーキー
    dynamic var id = 0
    dynamic var title = ""
    dynamic var body = ""
    dynamic var date = NSDate()
    
    // idをプライマリーキーとして設定
    override static func primaryKey() -> String? {
        return "id"
    }
    
}
