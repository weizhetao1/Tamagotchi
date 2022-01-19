//
//  TamagotchiTest.swift
//  TamagotchiTests
//
//  Created by Tao, Weizhe (Coll) on 19/01/2022.
//

import XCTest

class TamagotchiTest: XCTestCase {
    
    func testEatSnackHungerDecreasesBy1() throws {
        //arrange (test set-up)
        let tamagotchi = Tamagotchi()
        let expectedHunger = 4
        
        //act (perform the functionality we want to test)
        tamagotchi.eatSnack()
        
        //assert (check it did what we expected)
        XCTAssertEqual(tamagotchi.hunger, expectedHunger)
    }
    
    func testWhenHunger0EatSnackKeepsHunger0() throws {
        //arrange
        let tamagotchi = Tamagotchi()
        let expectedHunger = 0
        
        //act
        tamagotchi.hunger = 0
        tamagotchi.eatSnack()
        
        //assert
        XCTAssertEqual(tamagotchi.hunger, expectedHunger)
    }
    
    func testEatMealHungerDecreasesBy3() throws {
        //arrange (test set-up)
        let tamagotchi = Tamagotchi()
        let expectedHunger = 2
        
        //act (perform the functionality we want to test)
        tamagotchi.eatMeal()
        
        //assert (check it did what we expected)
        XCTAssertEqual(tamagotchi.hunger, expectedHunger)
    }
    
    func testCleanUpMakesExcretion0() throws {
        //arrange
        let tamagotchi = Tamagotchi()
        let expectedLooNeed = 0
        
        //act
        tamagotchi.cleanUp()
        
        //assert
        XCTAssertEqual(tamagotchi.excretion, expectedLooNeed)
    }

}
