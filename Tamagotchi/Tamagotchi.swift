//
//  Pet.swift
//  Tamagotchi
//
//  Created by Tao, Weizhe (Coll) on 19/01/2022.
//

import Foundation

class Tamagotchi {
    var hunger: Int = 5{
        didSet{
            if hunger < 0{
                hunger = 0
            }
        }
    }
    
    var age: Int = 0
    var excretion: Int = 0
    var sickness: Int = 0
    
    func eatSnack() {
        self.hunger -= 1
    }
    
    func eatMeal() {
        self.hunger -= 3
    }
    
    func giveMedicine() {
        self.sickness = Int.random(in: 0...20)
    }
    
    func cleanUp() {
        self.excretion = 0
    }
}
