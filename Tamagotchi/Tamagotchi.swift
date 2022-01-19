//
//  Pet.swift
//  Tamagotchi
//
//  Created by Tao, Weizhe (Coll) on 19/01/2022.
//

import Foundation

class Tamagotchi {
    var hunger: Int = 5
    
    func eatSnack() {
        if self.hunger > 0{
            self.hunger -= 1
        }
    }
}
