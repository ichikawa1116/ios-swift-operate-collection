//
//  Model.swift
//  ios-swift-operate-collection
//
//  Created by Manami Ichikawa on 2018/08/18.
//  Copyright © 2018 Manami Ichikawa. All rights reserved.
//

import Foundation

class Model {
    
    let zodiacArray = ["おひつじ", "おうし", "ふたご", "かに", "しし",
                   "おとめ", "てんびん", "さそり", "いて", "やぎ",
                   "みずがめ", "うお"]
    
    let values = [2.0,4.0,5.0,7.0]
    let array1 = [1,2,3]
    let array2 = [4,6]
    var array3 :[[Int]] = []
    let optionalArray:[Int?] = [1,2,3]
    let stringArrray:[String] = ["1","2","apple","3"]
    let optionalString: String? = "12"
    
    func getArray() -> [[Int]] {
        
        array3.append(array1)
        array3.append(array2)
        // array3: [[1, 2, 3], [4, 5]]
        return array3
    }
    
}
