//
//  ViewController.swift
//  ios-swift-operate-collection
//
//  Created by Manami Ichikawa on 2018/08/18.
//  Copyright © 2018 Manami Ichikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        beforeUsingMapOfArray()
        afterUsingMapOfArray()
        useFlatMapOfArray()
        useMapOfOptional()
        useFlatMapOfOptional()
    }

    func beforeUsingMapOfArray() {
        var squares: [Double] = []
        for value in model.values {
            squares.append(value * 2)
        }
        // result: [4.0, 8.0, 10.0, 14.0]
        print("use a for-in loop instead of map \(squares)")
    }
    
    func afterUsingMapOfArray() {
        let squares = model.values.map {$0 * 2} // 引数と戻り値を省略している({クロージャー})
        // result: [4.0, 8.0, 10.0, 14.0]
        print("use map \(squares)")
        
        // ※ mapping functionを省略なしで書くと以下のようになる
        //
        // let squares3 = values.map({
        //     (value: Double) -> Double in
        //     return value * value
        // })
        
        // Stringの要素
        let zodiacSign = model.zodiacArray.map { $0 + "座"}
        print(zodiacSign)
        
    }
    
    func useFlatMapOfArray() {
        // 2重配列を1重にする
        let array = model.getArray
        let result = array().flatMap {$0}
        
        // result: [1, 2, 3, 4, 6]
        print("use flatMap\(result)")
    }
    
    func useMapOfOptional() {
        // result: Optional(Optional(12))
        let value = model.optionalString.map{Int($0)}
        print("use map of optional \(String(describing: value))")
        
        // result: [Optional(1), Optional(2), Optional(3)]
        let value2 = model.optionalArray.map{$0}
        print(value2)
        
        // result: [Optional(1), Optional(2), nil, Optional(3)]
        let value3 = model.stringArrray.map{Int($0)}
        print(value3)
    }
    
    func useFlatMapOfOptional() {
        // result: Optional(12)
        let value = model.optionalString.flatMap{Int($0)}
        print("use flatMap of optional \(String(describing: value))")
        
        // result: [1, 2, 3]
        let value2 = model.optionalArray.flatMap{$0}
        print(value2)
        
        // result: [1, 2, 3]
        let value3 = model.stringArrray.flatMap{Int($0)}
        print(value3)
    }

}

