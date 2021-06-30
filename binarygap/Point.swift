//
//  Point.swift
//  binarygap
//
//  Created by Prabhdeep Singh on 26/08/16.
//  Copyright © 2016 Prabhdeep Singh. All rights reserved.
//

import Foundation

class Point{

    var x:Int
    var y:Int

    init(x:Int, y:Int){
        self.x = x
        self.y = y
    }
    
    func addPoints() -> Int {
        return (x+y)
    }
    
}
