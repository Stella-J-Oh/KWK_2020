//
//  AngryViewController.swift
//  KWK_FinalProject_Stella_Evelyn_Carissa
//
//  Created by Evelyn Ma on 7/30/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class AngryViewController: UIViewController {

    @IBOutlet weak var angry1View: UIImageView!
    @IBOutlet weak var angry2View: UIImageView!
    @IBOutlet weak var angry3View: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        angry1View.loadGif(name: "angry")
        angry2View.loadGif(name: "angry2")
        angry3View.loadGif(name: "angry3")
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
