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
}
