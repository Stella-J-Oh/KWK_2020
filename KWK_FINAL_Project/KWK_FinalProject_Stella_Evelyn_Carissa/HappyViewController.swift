//
//  HappyViewController.swift
//  KWK_FinalProject_Stella_Evelyn_Carissa
//
//  Created by Evelyn Ma on 7/30/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class HappyViewController: UIViewController {

    @IBOutlet weak var happy1View: UIImageView!
    @IBOutlet weak var happy2View: UIImageView!
    @IBOutlet weak var happy3View: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        happy1View.loadGif(name: "happy1")
        happy2View.loadGif(name: "happy2")
        happy3View.loadGif(name: "happy3")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
