//
//  SadViewController.swift
//  KWK_FinalProject_Stella_Evelyn_Carissa
//
//  Created by Evelyn Ma on 7/30/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class SadViewController: UIViewController {

    @IBOutlet weak var sad1View: UIImageView!
    @IBOutlet weak var sad2View: UIImageView!
    @IBOutlet weak var sad3View: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        sad1View.loadGif(name: "sad1")
        sad2View.loadGif(name: "sad2")
        sad3View.loadGif(name: "sad3")
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
