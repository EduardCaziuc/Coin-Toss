//
//  ViewController.swift
//  Coin Toss
//
//  Created by Eduard Caziuc on 19/04/2018.
//  Copyright © 2018 Eduard Caziuc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let coinImages = CoinImages()
    
    var coinSoundProvider = CoinSoundProvider()
    
    @IBOutlet weak var headsOrTailsLabel: UILabel!
    
    @IBOutlet weak var tipLabelDisplay: UILabel!
    
    @IBOutlet weak var coinImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipLabelDisplay.isHidden = false
        
        headsOrTailsLabel.isHidden = false
        
        coinImageView.image = coinImages.randomCoinImage()
    }
    
    func coinGoesUp() {
        UIView.animate(withDuration: 0.20, animations: {
            self.coinImageView.frame.origin.y -= 150 }, completion: nil)
        
        
    }
    func coinGoesDown() {
        UIView.animate(withDuration: 0.97, animations: {
            self.coinImageView.frame.origin.y += 150 }) { (finished) in
                func headsOrTailsLabelShown() {  self.headsOrTailsLabel.isHidden = false
                }
                if self.coinImageView.image == #imageLiteral(resourceName: "Tails") {
                    self.headsOrTailsLabel.text = "Tails"
                    headsOrTailsLabelShown()
                } else if self.coinImageView.image == #imageLiteral(resourceName: "Heads") {
                    self.self.headsOrTailsLabel.text = "Heads"
                    headsOrTailsLabelShown()
                }
                
        }
    }
    @IBAction func coinTossButton() {
        
        headsOrTailsLabel.isHidden = true
        coinGoesUp()
        
        tipLabelDisplay.isHidden = true
        
        coinImageView.image = coinImages.randomCoinImage()
        
        self.coinImageView.rotate360Degrees()
        
        coinSoundProvider.playCoinSound()
        
        coinGoesDown()
        
        }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        coinTossButton()
    }
}



