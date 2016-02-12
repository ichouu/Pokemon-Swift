//
//  PokemonDataBroker.swift
//  PokeDex
//
//  Created by Eric Chou on 1/19/16.
//  Copyright © 2016 Eric Chou. All rights reserved.
//

import UIKit
import Alamofire

class PokemonDataBroker: PokeDexDataBrokerBase {
    
    override var description : String {
        return "I am a pokemon maser"
    }
    override func createModelFrom(dataDictionary: Dictionary<String,AnyObject>) -> PokeDexModel? {
        let modelObj = Pokemon()
        
        modelObj.initFromProperties(dataDictionary)
        
        return modelObj
    }
    func getPokemonwithID(anID: String) {
        fetchDataAt(PokeDexSettingsAdapter.GetPokemonDataEndPoint().stringByAppendingString(anID))
        
    }
}
