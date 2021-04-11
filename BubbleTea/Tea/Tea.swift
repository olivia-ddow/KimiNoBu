//
//  Tea.swift
//  BubbleTea
//
//  Created by Olivia Crepin on 03/03/2021.
//  Copyright © 2021 Olivia Crepin. All rights reserved.
//

import UIKit

class Tea {

    var name: String!
    var imageName: String!
    var desc: [String]!
    var color: UIColor!
    
    init(name:String, imageName:String, desc:[String], color:UIColor){
        self.name = name
        self.imageName = imageName
        self.desc = desc
        self.color = color
    }
}
