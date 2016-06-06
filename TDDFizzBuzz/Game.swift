//
//  Game.swift
//  TDDFizzBuzz
//
//  Created by Renato Ribeiro on 5/22/16.
//  Copyright © 2016 Renato. All rights reserved.
//

import Foundation

class Game: NSObject {
    
    var score: Int = 0
    let brain = Brain()
    
    func play(move: String) -> (right: Bool, score: Int) {
        let result = brain.check(score + 1)
        if result == move {
            score += 1
            return (true, score)
        } else {
            return (false, score)
        }
    }
    
}
