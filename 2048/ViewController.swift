//
//  ViewController.swift
//  2048
//
//  Created by Edric De Mesa and Ethan Lin on 3/20/17.
//  Copyright © 2017 Edric De Mesa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func startGameButton(sender: UIButton) {
        let game = GameViewController(dimension: 8, threshold: 2048)
        
        self.presentViewController(UIViewController, animated: true, completion: nil)
    }
}

