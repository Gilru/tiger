//
//  Tiger.swift
//  the tiger
//
//  Created by GILBERT  on 2014-10-02.
//
//

import Foundation
import UIKit

struct Tiger {
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named: "")
    
    func chuff(){
        println("Tiger: Chuff! Chuff!")
    }
    
    
    func chuffNumberOfTime(number: Int){
        for(var start = 0; start < number; start++){
            chuff()
        }
    }
    
    func chuffNumberOfTime(number: Int, isLoud: Bool){
        
        for var start = 0; start < number; start++ {
            if isLoud{
                chuff()
            }else{
               println("burr burr")
            }
            
        }
    }
    
    
    func ageInTigersYearsFromAge(regularAge: Int) -> Int {
        
        let newAge = regularAge * 3
        println("\(newAge)")
        return newAge
    }
    
    func random() -> String {
        var randomNumber = Int(arc4random_uniform(UInt32(3)))
        var randomFact = ""
        
        if randomNumber == 0 {
           randomFact = "Tiger is the most dangerous speciess"
        }else if randomNumber == 1 {
            randomFact = "Lion is the king of the jungle"
        }else{
            randomFact = "there is not answer for that question"
        }
        return randomFact
    }
}

