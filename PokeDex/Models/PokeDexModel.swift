//
//  PokeDexModel.swift
//  PokeDex
//
//  Created by Eric Chou on 1/18/16.
//  Copyright © 2016 Eric Chou. All rights reserved.
//

import Foundation

class PokeDexModel: NSObject {
//    let id: Int
//    init(id:Int) {
//        self.id = id
//    }
    var id: Int = 0
    func initFromProperties (propertiesDictionary: NSDictionary) {
        id = propertiesDictionary.objectForKey("pkdx_id") as! Int
    }
}
