//
//  Accessory.swift
//  2048
//
//  Created by Edric De Mesa on 3/20/17.
//  Copyright © 2017 Edric De Mesa. All rights reserved.
//

import UIKit

protocol ScoreViewProtocol {
    func scoreChanged(newScore s: Int)
}

class ScoreView : UIView, ScoreViewProtocol {
    var score: Int = 0 {
        didSet {
            label.text = "SCORE: \(score)"
        }
    }
    let defaultFrame = CGRect(x: 0, y: 0, width: 140, height: 140)
    var label: UILabel
    
    init(backgroundColor bgColor: UIColor, textColor tcolor: UIColor, font: UIFont, radius r: CGFloat) {
        label = UILabel(frame: defaultFrame)
        label.textAlignment = NSTextAlignment.center
        super.init(frame: defaultFrame)
        
        backgroundColor = bgColor
        label.textColor = tcolor
        label.font = font
        
        layer.cornerRadius = r
        self.addSubview(label)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
    func scoreChanged(newScore s: Int) {
        let defaultFrame = CGRect(x: 0, y: 0, width: 140, height: 140)
    }
}
