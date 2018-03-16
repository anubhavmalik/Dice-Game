//
//  ViewController.swift
//  Dice Game
//
//  Created by Anubhav Malik on 16/03/18.
//  Copyright © 2018 Anubhav Malik. All rights reserved.
//



import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myFirstDiceImageView: UIImageView!
    @IBOutlet weak var mySecondDiceImageView: UIImageView!
    @IBOutlet weak var diceText: UITextField!
    
    var randomDiceNumber = 0
    var randomDiceNumberTwo  = 0
    
    let diceArray = ["Dice1","Dice2","Dice3","Dice4","Dice5","Dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func rollButtonClicked(_ sender: Any) {
        
      updateDiceImages()
        
    }
    func updateDiceImages (){
        randomDiceNumber = Int(arc4random_uniform(6))
        
        randomDiceNumberTwo = Int(arc4random_uniform(6))
        
        print(randomDiceNumber)
        
        myFirstDiceImageView.image = UIImage(named : diceArray[randomDiceNumber])
        mySecondDiceImageView.image = UIImage(named : diceArray[randomDiceNumberTwo])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}

