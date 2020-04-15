//
//  RecordViewController.swift
//  Roshambo
//
//  Created by Danyal Hassan on 4/15/20.
//  Copyright © 2020 Danyal Hassan. All rights reserved.
//

import UIKit

class RecordViewController: UIViewController {
    
    
    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var imageRock: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rock()

        // Do any additional setup after loading the view.
    }
    
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
    
     func scissors() {
        
        let oppMove = opponenetMove()
        
        switch oppMove {
        case "paper":
            print("scissor beats paper")
        case "rock":
            print("rock beats scissor ")
        case "scissors":
            print("tie")
        default:
            print("invalid alue")
        }
    }
    
    func rock() {
        let oppMove = opponenetMove()
        
        switch oppMove {
        case "paper":
            result.text = ("paper beats rock")
            imageRock.image = UIImage(named: "PaperCoversRock")
        case "rock":
            result.text = ("tie")
            imageRock.image = UIImage(named: "itsATie")
        case "scissors":
            result.text = ("rock beats scissor")
            imageRock.image = UIImage(named: "RockCrushesScissors")
        default:
            print("invalid value")
        }
    }
    
    func paper() {
    
            let oppMove = opponenetMove()
            
            switch oppMove {
            case "paper":
                result.text = ("tie")
                imageRock.image = UIImage(named: "itsATie")
            case "rock":
                result.text = ("RockCrushesScissors")
                imageRock.image = UIImage(named: "RockCrushesScissors")
            case "scissors":
               result.text = ("Sciccor beats paper")
                imageRock.image = UIImage(named: "ScissorsCutPaper")
            default:
                print("invalid value")
            }
    
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
