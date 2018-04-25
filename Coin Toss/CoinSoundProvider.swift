//
//  CoinSoundProvider.swift
//  Coin Toss
//
//  Created by Eduard Caziuc on 19/04/2018.
//  Copyright © 2018 Eduard Caziuc. All rights reserved.
//

import AVFoundation


struct CoinSoundProvider {
    
    var coinFlipSound: AVAudioPlayer?
    
    mutating func playCoinSound() {
        
        guard let url = Bundle.main.url(forResource: "CoinFlip", withExtension: "wav") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            coinFlipSound = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            guard let aPlayer = coinFlipSound else { return }
            aPlayer.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
}
