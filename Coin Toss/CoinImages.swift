//
//  CoinImages.swift
//  Coin Toss
//
//  Created by Eduard Caziuc on 19/04/2018.
//  Copyright © 2018 Eduard Caziuc. All rights reserved.
//

import GameKit

struct CoinImages {
    
        let arrayOfCoinImages = [#imageLiteral(resourceName: "Heads"), #imageLiteral(resourceName: "Tails")]
    
    
    func randomCoinImage() -> UIImage {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: arrayOfCoinImages.count)
        return arrayOfCoinImages[randomNumber]
    }
}




