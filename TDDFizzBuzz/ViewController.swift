//
//  ViewController.swift
//  TDDFizzBuzz
//
//  Created by Renato Ribeiro on 5/16/16.
//  Copyright © 2016 Renato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gameScore : Int = 0 {
        didSet {
            numberButton.setTitle("\(gameScore)", forState: .Normal)
        }
    }
    var game = Game()

    @IBOutlet weak var numberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func play(move: String) {
//        guard let unwrappedGame = game else {
//            print("game is nil")
//            return
//        }
        let response = game.play(move)
        gameScore = response.score
    }

    @IBAction func buttonTapped(sender: UIButton) {
        play("\(gameScore + 1)")
    }
}

