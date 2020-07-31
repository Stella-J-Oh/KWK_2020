//
//  NeutralViewController.swift
//  KWK_FinalProject_Stella_Evelyn_Carissa
//
//  Created by Evelyn Ma on 7/30/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class NeutralViewController: UIViewController {

    @IBOutlet weak var neutral1View: UIImageView!
    @IBOutlet weak var neutral2View: UIImageView!
    @IBOutlet weak var neutral3View: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        neutral1View.loadGif(name: "neutral1")
        neutral2View.loadGif(name: "neutral2")
        neutral3View.loadGif(name: "neutral3")
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
