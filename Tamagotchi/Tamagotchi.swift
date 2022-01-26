//
//  Pet.swift
//  Tamagotchi
//
//  Created by Tao, Weizhe (Coll) on 19/01/2022.
//

import Foundation

class Tamagotchi: ObservableObject {
    @Published var hunger: Int = 50 {
        didSet{
            if hunger < 0 {hunger = 0}
            if hunger > 100 {hunger = 100}
        }
    }
    
    @Published var age: Int = 1
    @Published var excretion: Int = 0 {
        didSet{
            if excretion > 100 {excretion = 100}
        }
    }
    @Published var sickness: Int = 0 {
        didSet{
            if sickness < 0 {sickness = 0}
            if sickness > 100 {sickness = 100}
        }
    }
    @Published var happiness: Int = 50 {
        didSet{
            if happiness > 100 {happiness = 100}
            if happiness < 0 {happiness = 0}
        }
    }
    @Published var pet: String = "pet"
    
    func eatSnack() {
        self.hunger -= 10
    }
    
    func eatMeal() {
        self.hunger -= 30
    }
    
    func giveMedicine() {
        self.sickness -= Int.random(in: 20...80)
    }
    
    func cleanUp() {
        self.excretion = 0
    }
    
    func playGame() {
        self.happiness += Int.random(in: 5...20)
    }
    
    func timeTick() {
        self.age += 1
        self.sickness += Int.random(in: 0...2)
        self.excretion += Int.random(in: 1...3)
        self.happiness -= Int.random(in: 1...4)
        self.hunger += Int.random(in: 1...2)
        if self.age >= 1000{
            self.pet = "dead"
        }
        else if self.hunger == 100 {self.pet = "hungry"}
        else if self.sickness == 100 {self.pet = "sick"}
        else if self.excretion == 100 {self.pet = "bathroom"}
        else if self.happiness == 0 {self.pet = "sad"}
        else {self.pet = "all happy tamagotchi"}
    }
}
