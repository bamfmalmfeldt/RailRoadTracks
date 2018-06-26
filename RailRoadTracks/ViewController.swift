//
//  ViewController.swift
//  RailRoadTracks
//
//  Created by Michael Malmfeldt on 6/1/18.
//  Copyright © 2018 BAM07F. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    var randomDiceIndex3 : Int = 0
    var randomDiceIndex4 : Int = 0
    var randomDiceIndex5 : Int = 0
    var randomDiceIndex6 : Int = 0
    var randomDiceIndex7 : Int = 0
    var randomDiceIndex8 : Int = 0
    var randomDiceIndex9 : Int = 0
    var randomDiceIndex10 : Int = 0
    var randomDiceIndex11 : Int = 0
    var randomDiceIndex12 : Int = 0
    var randomDiceIndex13 : Int = 0
    var randomDiceIndex14 : Int = 0
    
    var dice1StatusPressed = false
    var dice2StatusPressed = false
    var dice3StatusPressed = false
    var dice4StatusPressed = false
    var dice5StatusPressed = false
    var dice6StatusPressed = false
    var dice7StatusPressed = false
    var dice8StatusPressed = false
    var dice9StatusPressed = false
    var dice10StatusPressed = false
    var dice11StatusPressed = false
    var dice12StatusPressed = false
    var dice13StatusPressed = false
    var dice14StatusPressed = false
    
    let diceArray = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    
    let blackDiceArray = [#imageLiteral(resourceName: "blackDie1"), #imageLiteral(resourceName: "blackDie2"), #imageLiteral(resourceName: "blackDie3"), #imageLiteral(resourceName: "blackDie4"), #imageLiteral(resourceName: "blackDie5"), #imageLiteral(resourceName: "blackDie6")]
    
    var yourScore = 0
    var highScore = 0
    var timer: Timer!
    var seconds = 100
    


    
    @IBOutlet weak var TimerLabel: UILabel!
    
    @IBOutlet weak var HighScoreLabel: UILabel!
    
    

    @IBAction func dicePressed(_ sender: UIButton) {
        if sender.tag == 1 {
            dice1StatusPressed = !dice1StatusPressed
            if dice1StatusPressed == true {
                buttonViews[0].setImage(blackDiceArray[randomDiceIndex1], for: UIControlState.normal)
                buttonViews[0].setImage(blackDiceArray[randomDiceIndex1], for: UIControlState.selected)
                buttonViews[0].setImage(blackDiceArray[randomDiceIndex1], for: UIControlState.highlighted)
            }
            else if dice1StatusPressed == false {
                buttonViews[0].setImage(diceArray[randomDiceIndex1], for: UIControlState.normal)
                buttonViews[0].setImage(diceArray[randomDiceIndex1], for: UIControlState.selected)
                buttonViews[0].setImage(diceArray[randomDiceIndex1], for: UIControlState.highlighted)
            }
        }
            
           
        
        
        else if sender.tag == 2
        {
            dice2StatusPressed = !dice2StatusPressed
            if dice2StatusPressed == true {
                buttonViews[1].setImage(blackDiceArray[randomDiceIndex2], for: UIControlState.normal)
                buttonViews[1].setImage(blackDiceArray[randomDiceIndex2], for: UIControlState.selected)
                buttonViews[1].setImage(blackDiceArray[randomDiceIndex2], for: UIControlState.highlighted)
            }
            else if dice2StatusPressed == false {
                buttonViews[1].setImage(diceArray[randomDiceIndex2], for: UIControlState.normal)
                buttonViews[1].setImage(diceArray[randomDiceIndex2], for: UIControlState.selected)
                buttonViews[1].setImage(diceArray[randomDiceIndex2], for: UIControlState.highlighted)
            }
            
        }
        else if sender.tag == 3
        {
            dice3StatusPressed = !dice3StatusPressed
            if dice3StatusPressed == true {
                buttonViews[2].setImage(blackDiceArray[randomDiceIndex3], for: UIControlState.normal)
                buttonViews[2].setImage(blackDiceArray[randomDiceIndex3], for: UIControlState.selected)
                buttonViews[2].setImage(blackDiceArray[randomDiceIndex3], for: UIControlState.highlighted)
            }
            else if dice3StatusPressed == false {
                buttonViews[2].setImage(diceArray[randomDiceIndex3], for: UIControlState.normal)
                buttonViews[2].setImage(diceArray[randomDiceIndex3], for: UIControlState.selected)
                buttonViews[2].setImage(diceArray[randomDiceIndex3], for: UIControlState.highlighted)
            }
           
        }
        else if sender.tag == 4
        {
            dice4StatusPressed = !dice4StatusPressed
            if dice4StatusPressed == true {
                buttonViews[3].setImage(blackDiceArray[randomDiceIndex4], for: UIControlState.normal)
                buttonViews[3].setImage(blackDiceArray[randomDiceIndex4], for: UIControlState.selected)
                buttonViews[3].setImage(blackDiceArray[randomDiceIndex4], for: UIControlState.highlighted)
            }
            else if dice4StatusPressed == false {
                buttonViews[3].setImage(diceArray[randomDiceIndex4], for: UIControlState.normal)
                buttonViews[3].setImage(diceArray[randomDiceIndex4], for: UIControlState.selected)
                buttonViews[3].setImage(diceArray[randomDiceIndex4], for: UIControlState.highlighted)
            }
           
        }
        else if sender.tag == 5
        {
            dice5StatusPressed = !dice5StatusPressed
            if dice5StatusPressed == true {
                buttonViews[4].setImage(blackDiceArray[randomDiceIndex5], for: UIControlState.normal)
                buttonViews[4].setImage(blackDiceArray[randomDiceIndex5], for: UIControlState.selected)
                buttonViews[4].setImage(blackDiceArray[randomDiceIndex5], for: UIControlState.highlighted)
            }
            else if dice5StatusPressed == false {
                buttonViews[4].setImage(diceArray[randomDiceIndex5], for: UIControlState.normal)
                buttonViews[4].setImage(diceArray[randomDiceIndex5], for: UIControlState.selected)
                buttonViews[4].setImage(diceArray[randomDiceIndex5], for: UIControlState.highlighted)
            }
           
        }
        else if sender.tag == 6
        {
            dice6StatusPressed = !dice6StatusPressed
            if dice6StatusPressed == true {
                buttonViews[5].setImage(blackDiceArray[randomDiceIndex6], for: UIControlState.normal)
                buttonViews[5].setImage(blackDiceArray[randomDiceIndex6], for: UIControlState.selected)
                buttonViews[5].setImage(blackDiceArray[randomDiceIndex6], for: UIControlState.highlighted)
            }
            else if dice6StatusPressed == false {
                buttonViews[5].setImage(diceArray[randomDiceIndex6], for: UIControlState.normal)
                buttonViews[5].setImage(diceArray[randomDiceIndex6], for: UIControlState.selected)
                buttonViews[5].setImage(diceArray[randomDiceIndex6], for: UIControlState.highlighted)
            }
           
        }
        else if sender.tag == 7
        {
            dice7StatusPressed = !dice7StatusPressed
            if dice7StatusPressed == true {
                buttonViews[6].setImage(blackDiceArray[randomDiceIndex7], for: UIControlState.normal)
                buttonViews[6].setImage(blackDiceArray[randomDiceIndex7], for: UIControlState.selected)
                buttonViews[6].setImage(blackDiceArray[randomDiceIndex7], for: UIControlState.highlighted)
            }
            else if dice7StatusPressed == false {
                buttonViews[6].setImage(diceArray[randomDiceIndex7], for: UIControlState.normal)
                buttonViews[6].setImage(diceArray[randomDiceIndex7], for: UIControlState.selected)
                buttonViews[6].setImage(diceArray[randomDiceIndex7], for: UIControlState.highlighted)
            }
           
        }
        else if sender.tag == 8
        {
            dice8StatusPressed = !dice8StatusPressed
            if dice8StatusPressed == true {
                buttonViews[7].setImage(blackDiceArray[randomDiceIndex8], for: UIControlState.normal)
                buttonViews[7].setImage(blackDiceArray[randomDiceIndex8], for: UIControlState.selected)
                buttonViews[7].setImage(blackDiceArray[randomDiceIndex8], for: UIControlState.highlighted)
            }
            else if dice8StatusPressed == false {
                buttonViews[7].setImage(diceArray[randomDiceIndex8], for: UIControlState.normal)
                buttonViews[7].setImage(diceArray[randomDiceIndex8], for: UIControlState.selected)
                buttonViews[7].setImage(diceArray[randomDiceIndex8], for: UIControlState.highlighted)
            }
           
        }
        else if sender.tag == 9
        {
            dice9StatusPressed = !dice9StatusPressed
            if dice9StatusPressed == true {
                buttonViews[8].setImage(blackDiceArray[randomDiceIndex9], for: UIControlState.normal)
                buttonViews[8].setImage(blackDiceArray[randomDiceIndex9], for: UIControlState.selected)
                buttonViews[8].setImage(blackDiceArray[randomDiceIndex9], for: UIControlState.highlighted)
            }
            else if dice9StatusPressed == false {
                buttonViews[8].setImage(diceArray[randomDiceIndex9], for: UIControlState.normal)
                buttonViews[8].setImage(diceArray[randomDiceIndex9], for: UIControlState.selected)
                buttonViews[8].setImage(diceArray[randomDiceIndex9], for: UIControlState.highlighted)
            }
            
        }
        else if sender.tag == 10
        {
            dice10StatusPressed = !dice10StatusPressed
            if dice10StatusPressed == true {
                buttonViews[9].setImage(blackDiceArray[randomDiceIndex10], for: UIControlState.normal)
                buttonViews[9].setImage(blackDiceArray[randomDiceIndex10], for: UIControlState.selected)
                buttonViews[9].setImage(blackDiceArray[randomDiceIndex10], for: UIControlState.highlighted)
            }
            else if dice10StatusPressed == false {
                buttonViews[9].setImage(diceArray[randomDiceIndex10], for: UIControlState.normal)
                buttonViews[9].setImage(diceArray[randomDiceIndex10], for: UIControlState.selected)
                buttonViews[9].setImage(diceArray[randomDiceIndex10], for: UIControlState.highlighted)
            }
           
        }
        else if sender.tag == 11
        {
            dice11StatusPressed = !dice11StatusPressed
            if dice11StatusPressed == true {
                buttonViews[10].setImage(blackDiceArray[randomDiceIndex11], for: UIControlState.normal)
                buttonViews[10].setImage(blackDiceArray[randomDiceIndex11], for: UIControlState.selected)
                buttonViews[10].setImage(blackDiceArray[randomDiceIndex11], for: UIControlState.highlighted)
            }
            else if dice11StatusPressed == false {
                buttonViews[10].setImage(diceArray[randomDiceIndex11], for: UIControlState.normal)
                buttonViews[10].setImage(diceArray[randomDiceIndex11], for: UIControlState.selected)
                buttonViews[10].setImage(diceArray[randomDiceIndex11], for: UIControlState.highlighted)
            }
            
        }
        else if sender.tag == 12
        {
            dice12StatusPressed = !dice12StatusPressed
            if dice12StatusPressed == true {
                buttonViews[11].setImage(blackDiceArray[randomDiceIndex12], for: UIControlState.normal)
                buttonViews[11].setImage(blackDiceArray[randomDiceIndex12], for: UIControlState.selected)
                buttonViews[11].setImage(blackDiceArray[randomDiceIndex12], for: UIControlState.highlighted)
            }
            else if dice12StatusPressed == false {
                buttonViews[11].setImage(diceArray[randomDiceIndex12], for: UIControlState.normal)
                buttonViews[11].setImage(diceArray[randomDiceIndex12], for: UIControlState.selected)
                buttonViews[11].setImage(diceArray[randomDiceIndex12], for: UIControlState.highlighted)
            }
           
        }
        else if sender.tag == 13
        {
            dice13StatusPressed = !dice13StatusPressed
            if dice13StatusPressed == true {
                buttonViews[12].setImage(blackDiceArray[randomDiceIndex13], for: UIControlState.normal)
                buttonViews[12].setImage(blackDiceArray[randomDiceIndex13], for: UIControlState.selected)
                buttonViews[12].setImage(blackDiceArray[randomDiceIndex13], for: UIControlState.highlighted)
            }
            else if dice13StatusPressed == false {
                buttonViews[12].setImage(diceArray[randomDiceIndex13], for: UIControlState.normal)
                buttonViews[12].setImage(diceArray[randomDiceIndex13], for: UIControlState.selected)
                buttonViews[12].setImage(diceArray[randomDiceIndex13], for: UIControlState.highlighted)
            }
           
        }
        else if sender.tag == 14
        {
            dice14StatusPressed = !dice14StatusPressed
            if dice14StatusPressed == true {
                buttonViews[13].setImage(blackDiceArray[randomDiceIndex14], for: UIControlState.normal)
                buttonViews[13].setImage(blackDiceArray[randomDiceIndex14], for: UIControlState.selected)
                buttonViews[13].setImage(blackDiceArray[randomDiceIndex14], for: UIControlState.highlighted)
            }
            else if dice14StatusPressed == false {
                buttonViews[13].setImage(diceArray[randomDiceIndex14], for: UIControlState.normal)
                buttonViews[13].setImage(diceArray[randomDiceIndex14], for: UIControlState.selected)
                buttonViews[13].setImage(diceArray[randomDiceIndex14], for: UIControlState.highlighted)
            }
           
        }
        
            
            
   
    }
    
    
    
    @IBOutlet var buttonViews: [UIButton]!
    
    var rollButtonIterator = 0
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        rollButtonIterator += 1
        changeDiceImages()
        timerShouldStart()
        didIWin()
        
    }
    
    
    
    @objc func updateTimer() {
        if seconds < 1 {
            let lostAlert = UIAlertController(title: "Sorry, you ran out of time. Your score is: 0", message: "Click 'OK.' to Play Again.", preferredStyle: .alert)
            let nokAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
                UIAlertAction in
                self.seconds = 100
                self.timer.invalidate()
                self.resetDice()
                
            }
            
            
            // Add the actions
            
            lostAlert.addAction(nokAction)
            
            self.present(lostAlert, animated: true, completion: nil)
        }
        else {
            seconds -= 1
            TimerLabel.text = "Timer: " + String(seconds)
        }
        }
    
        
    func resetTimer() {
        rollButtonIterator = 0
        seconds = 100
        TimerLabel.text = "Timer: " + String(seconds)
    }
    
    func timerShouldStart() {
        if rollButtonIterator == 1 {
            startTimer()
        }
    }
    
    func resetDice () {
        
        
        buttonViews[0].setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        buttonViews[1].setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        buttonViews[2].setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        buttonViews[3].setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        buttonViews[4].setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        buttonViews[5].setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        buttonViews[6].setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        buttonViews[7].setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        buttonViews[8].setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        buttonViews[9].setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        buttonViews[10].setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        buttonViews[11].setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        buttonViews[12].setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        buttonViews[13].setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        
        dice1StatusPressed = false
        dice2StatusPressed = false
        dice3StatusPressed = false
        dice4StatusPressed = false
        dice5StatusPressed = false
        dice6StatusPressed = false
        dice7StatusPressed = false
        dice8StatusPressed = false
        dice9StatusPressed = false
        dice10StatusPressed = false
        dice11StatusPressed = false
        dice12StatusPressed = false
        dice13StatusPressed = false
        dice14StatusPressed = false
        
        resetTimer()
        newHighScore()
        HighScoreLabel.text = "High Score: " + String(highScore)
    }

    
    func changeDiceImages() {
      
        if dice1StatusPressed == false {
         randomDiceIndex1 = Int(arc4random_uniform(6))
        }
        if dice2StatusPressed == false {
        randomDiceIndex2 = Int(arc4random_uniform(6))
        }
        if dice3StatusPressed == false {
        randomDiceIndex3 = Int(arc4random_uniform(6))
        }
        if dice4StatusPressed == false {
        randomDiceIndex4 = Int(arc4random_uniform(6))
        }
        if dice5StatusPressed == false {
        randomDiceIndex5 = Int(arc4random_uniform(6))
        }
        if dice6StatusPressed == false {
        randomDiceIndex6 = Int(arc4random_uniform(6))
        }
        if dice7StatusPressed == false {
        randomDiceIndex7 = Int(arc4random_uniform(6))
        }
        if dice8StatusPressed == false {
        randomDiceIndex8 = Int(arc4random_uniform(6))
        }
        if dice9StatusPressed == false {
        randomDiceIndex9 = Int(arc4random_uniform(6))
        }
        if dice10StatusPressed == false {
        randomDiceIndex10 = Int(arc4random_uniform(6))
        }
        if dice11StatusPressed == false {
        randomDiceIndex11 = Int(arc4random_uniform(6))
        }
        if dice12StatusPressed == false {
        randomDiceIndex12 = Int(arc4random_uniform(6))
        }
        if dice13StatusPressed == false {
        randomDiceIndex13 = Int(arc4random_uniform(6))
        }
        if dice14StatusPressed == false {
        randomDiceIndex14 = Int(arc4random_uniform(6))
        }
        
        if dice1StatusPressed == false {
            buttonViews[0].setImage(diceArray[randomDiceIndex1], for: UIControlState.normal)
           
        
        }
        
        if dice2StatusPressed == false {
            buttonViews[1].setImage(diceArray[randomDiceIndex2], for: UIControlState.normal)
         
            
        }
        
        if dice3StatusPressed == false {
            buttonViews[2].setImage(diceArray[randomDiceIndex3], for: UIControlState.normal)

            
        }
        
        if dice4StatusPressed == false {
            buttonViews[3].setImage(diceArray[randomDiceIndex4], for: UIControlState.normal)
          
        }
        
        if dice5StatusPressed == false {
            buttonViews[4].setImage(diceArray[randomDiceIndex5], for: UIControlState.normal)
         
        }
        
        if dice6StatusPressed == false {
            buttonViews[5].setImage(diceArray[randomDiceIndex6], for: UIControlState.normal)
        
        }
        
        if dice7StatusPressed == false {
            buttonViews[6].setImage(diceArray[randomDiceIndex7], for: UIControlState.normal)
          
        }
        
        if dice8StatusPressed == false {
            buttonViews[7].setImage(diceArray[randomDiceIndex8], for: UIControlState.normal)
           
        }
        
        if dice9StatusPressed == false {
            buttonViews[8].setImage(diceArray[randomDiceIndex9], for: UIControlState.normal)
           
        }
        
        
        if dice10StatusPressed == false {
            buttonViews[9].setImage(diceArray[randomDiceIndex10], for: UIControlState.normal)
  
        }
        
        if dice11StatusPressed == false {
            buttonViews[10].setImage(diceArray[randomDiceIndex11], for: UIControlState.normal)
         
        }
        
        if dice12StatusPressed == false {
            buttonViews[11].setImage(diceArray[randomDiceIndex12], for: UIControlState.normal)
       
        }
        
        if dice13StatusPressed == false {
            buttonViews[12].setImage(diceArray[randomDiceIndex13], for: UIControlState.normal)
       
        }
        
        if dice14StatusPressed == false {
            buttonViews[13].setImage(diceArray[randomDiceIndex14], for: UIControlState.normal)
          
        }
        
    }
    
    func didIWin(){
        
        if buttonViews[0].currentImage == #imageLiteral(resourceName: "blackDie6") && buttonViews[1].currentImage == #imageLiteral(resourceName: "blackDie6") && buttonViews[2].currentImage == #imageLiteral(resourceName: "blackDie6") && buttonViews[3].currentImage == #imageLiteral(resourceName: "blackDie6") && buttonViews[4].currentImage == #imageLiteral(resourceName: "blackDie6") && buttonViews[5].currentImage == #imageLiteral(resourceName: "blackDie6") && buttonViews[6].currentImage == #imageLiteral(resourceName: "blackDie6") && buttonViews[7].currentImage == #imageLiteral(resourceName: "blackDie6") && buttonViews[8].currentImage == #imageLiteral(resourceName: "blackDie6") && buttonViews[9].currentImage == #imageLiteral(resourceName: "blackDie6") && buttonViews[10].currentImage == #imageLiteral(resourceName: "blackDie6") && buttonViews[11].currentImage == #imageLiteral(resourceName: "blackDie6") && buttonViews[12].currentImage == #imageLiteral(resourceName: "blackDie6") && buttonViews[13].currentImage == #imageLiteral(resourceName: "blackDie6")   {
            yourScore = 6 * seconds
            let alert = UIAlertController(title: "Congratulations, Your Score Is " + String(yourScore), message: "Click 'OK.' to Play Again.", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
                UIAlertAction in
                self.resetDice()
                self.timer.invalidate()
                
                
                
            }
            
            
            // Add the actions
            
            alert.addAction(okAction)
            
            self.present(alert, animated: true, completion: nil)
            
            
        }
        
        
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    
    
    func calculateYourScore() {
        
    }
    
    func newHighScore() {
        if yourScore > highScore {
            highScore = yourScore
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetDice()
       
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}




