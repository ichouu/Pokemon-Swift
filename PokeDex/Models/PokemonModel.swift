//
//  PokemonModel.swift
//  PokeDex
//
//  Created by Eric Chou on 1/18/16.
//  Copyright © 2016 Eric Chou. All rights reserved.
//

import Foundation

class Pokemon: PokeDexModel {
//    let name: String
//    let attack: Int
//    let defense: Int
//    let exp: Int
//    let height: Int
//    let weight: Int
//    let types: Array<String>
//    init(name: String, attack: Int, defense: Int, exp:Int, height: Int, weight: Int, types: Array<String>, id: Int) {
//            self.name = name
//            self.attack = attack
//            self.defense = defense
//            self.exp = exp
//            self.height = height
//            self.weight = weight
//            self.types = types
//            super.init(id:id)
//    }
    var name: String = ""
    var attack: Int = 0
    var defense: Int = 0
    var exp: Int = 0
    var height: Int = 0
    var weight: Int  = 0
    var types: Array<String> = []
    
    override func initFromProperties (propertiesDictionary: NSDictionary) {
        super.initFromProperties(propertiesDictionary)
        
        name = propertiesDictionary.objectForKey("name") as! String
        height = Int(propertiesDictionary.objectForKey("height") as! String)!
        weight = Int(propertiesDictionary.objectForKey("weight") as! String)!
        exp = propertiesDictionary.objectForKey("exp") as! Int
        attack = propertiesDictionary.objectForKey("attack") as! Int
        defense = propertiesDictionary.objectForKey("defense") as! Int

    }
}
