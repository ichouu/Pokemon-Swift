//
//  PokeDexSettingsAdapter.swift
//  PokeDex
//
//  Created by Eric Chou on 1/18/16.
//  Copyright © 2016 Eric Chou. All rights reserved.
//

import Foundation

class PokeDexSettingsAdapter {
    class func SettingsData() -> NSDictionary {
        let path = NSBundle.mainBundle().pathForResource("PokeDex-Settings", ofType:"plist")
        return NSDictionary(contentsOfFile:path!)!
    }
    class func GetURIData() -> NSDictionary {
        return SettingsData().objectForKey("URIs") as! NSDictionary
    }
    class func GetPokemonAPIBase () -> String {
        return GetURIData().objectForKey("PokemonAPIBase") as! String
    }
    class func GetPokemonDataEndPoint() -> String {
        return GetPokemonAPIBase().stringByAppendingString(GetURIData().objectForKey("PokemonDataEndPoint") as! String)
    }
    class func GetPokemonImageEndPoint()->String {
        return GetPokemonAPIBase().stringByAppendingString(GetURIData().objectForKey("PokemonImageEndPoint") as!String)
    }
}