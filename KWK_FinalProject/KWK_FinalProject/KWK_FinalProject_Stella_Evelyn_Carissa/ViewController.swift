//
//  ViewController.swift
//  KWK_FinalProject_Stella_Evelyn_Carissa
//
//  Created by Apple on 7/28/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var angryEmoji: UIButton!
    @IBOutlet weak var sadEmoji: UIButton!
    @IBOutlet weak var tiredEmoji: UIButton!
    @IBOutlet weak var neutralEmoji: UIButton!
    @IBOutlet weak var happyEmoji: UIButton!
    @IBOutlet weak var excitedEmoji: UIButton!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var textLabel: UIButton!
    @IBOutlet weak var noButton: UIButton!
    @IBOutlet weak var profileButton: UIButton!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.isHidden = true
        yesButton.isHidden = true
        noButton.isHidden = true
    }
    
    @IBAction func angryButton(_ sender: Any) {
        textLabel.isHidden = false
        yesButton.isHidden = false
        noButton.isHidden = false
    }
    
    @IBAction func sadButton(_ sender: Any) {
        textLabel.isHidden = false
        yesButton.isHidden = false
        noButton.isHidden = false
    }
    
    @IBAction func tiredButton(_ sender: Any) {
        textLabel.isHidden = false
        yesButton.isHidden = false
        noButton.isHidden = false
    }
    
    @IBAction func neutralButton(_ sender: Any) {
        textLabel.isHidden = false
        yesButton.isHidden = false
        noButton.isHidden = false
    }
    
    @IBAction func happyButton(_ sender: Any) {
        textLabel.isHidden = false
        yesButton.isHidden = false
        noButton.isHidden = false
    }
    
    @IBAction func excitedButton(_ sender: Any) {
        textLabel.isHidden = false
        yesButton.isHidden = false
        noButton.isHidden = false
    }
    
    
}

