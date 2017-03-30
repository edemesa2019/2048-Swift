//
//  Game.swift
//  2048
//
//  Created by Edric De Mesa on 3/20/17.
//  Copyright © 2017 Edric De Mesa. All rights reserved.
//

import Foundation

class GameViewController : UIViewController, GameModeProtocol {
    var dimension: Int
    
    var threshold: Int
    
    var board: Board?
    var model: GameModel?
    
    var scoreView: ScoreViewProtocol?
    
    let boardWidth: CGFloat = 230.0
}
