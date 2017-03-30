//
//  Board.swift
//  2048
//
//  Created by Edric De Mesa on 3/20/17.
//  Copyright © 2017 Edric De Mesa. All rights reserved.
//

import UIKit

class Tile: UIView {
    var delgate: AppearanceProtocol
    var value: Int = 0 {
        didSet {
            backgroudColor = delegate.tileColor(Value)
            numberLabel.textColor = delegate.numberColor(value)
            numberLabel.text = "\(value)"
        }
    }
    
    var numberLabel: UILabel
    
    required init(coder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
    init(position: CGPoint, width: CGFloat, value: Int, radius: CGFloat, delegate d: AppearnaceProtocol) {
        addSubview(numberLabel)
        layer.cornerRadius = radius
        
        self.value = value
        
        backgroundColor = delegate.tileColor(value)
        numberLabel.textColor = delegate.numberColor(value)
        numberLabel.text = "\(value)"
        
    }
}


