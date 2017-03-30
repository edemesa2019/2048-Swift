//
//  Tile.swift
//  2048
//
//  Created by Edric De Mesa on 3/20/17.
//  Copyright © 2017 Edric De Mesa. All rights reserved.
//

import UIKit

class Tile: UIView {
    var delegate: AppearanceProtocol
    var value: Int = 0 {
        didSet {
            backgroudColor = delegate.tileColor(value)
            numberLabel.textColor = delegate.numberColor(value: value)
            numberLabel.text = "\(value)"
        }
    }
    
    var numberLabel: UILabel
    
    required init(coder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
    init(position: CGPoint, width: CGFloat, value: Int, radius: CGFloat, delegate d: AppearanceProtocol) {
        delegate = d
        numberLabel = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: width))
        numberLabel.textAlignment = NSTextAlignment.center
        numberLabel.minimumScaleFactor = 0.5
        numberLabel.font = delegate.fontForNumbers()
        
        super.init(frame: CGRect(x: position.x, y: position.y, width: width, height: width))
        addSubview(numberLabel)
        layer.cornerRadius = radius
        
        self.value = value
        
        backgroundColor = delegate.tileColor(Value: value)
        numberLabel.textColor = delegate.numberColor(value: value)
        numberLabel.text = "\(value)"
        
    }
}
