//
//  ViewController.swift
//  Roshambo
//
//  Created by Danyal Hassan on 4/14/20.
//  Copyright © 2020 Danyal Hassan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var scissor: UIButton!
    
    

    func opponenetMove() -> String {
        let number = Int.random(in: 1 ..< 4)
        print(number)
        
        switch number {
        case 1:
            return "rock"
        case 2:
            return "paper"
        case 3:
            return "scissors"
        default:
            return "invalid"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! RecordViewController
        
        //controller.
    }
    
    @IBAction func play() {

        // Get the DiceViewController
        let controller: RecordViewController
        controller = storyboard?.instantiateViewController(withIdentifier: "RecordViewController") as! RecordViewController

        // Set the two values to random numbers from 1 to 6
        controller.scissors()

        // Present the view Controller
        present(controller, animated: true, completion: nil)
    }
    
    
//    @IBAction func paper(_ sender: Any) {
//
//        var oppMove = opponenetMove()
//
//        switch oppMove {
//        case "paper":
//            print("tie")
//        case "rock":
//            print("paper beats rock")
//        case "scissors":
//            print("scissor beats paper")
//        default:
//            print("invalid value")
//        }
//
//    }
//    @IBAction func rock(_ sender: Any) {
//        var oppMove = opponenetMove()
//
//        switch oppMove {
//        case "paper":
//            print("paper beats rock")
//        case "rock":
//            print("tie")
//        case "scissors":
//            print("rock beats scissor")
//        default:
//            print("invalid value")
//        }
//    }
    
//    @IBAction func scissors(_ sender: Any) {
//        
//        let oppMove = opponenetMove()
//        
//        switch oppMove {
//        case "paper":
//            print("scissor beats paper")
//        case "rock":
//            print("rock beats scissor ")
//        case "scissors":
//            print("tie")
//        default:
//            print("invalid alue")
//        }
//    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

