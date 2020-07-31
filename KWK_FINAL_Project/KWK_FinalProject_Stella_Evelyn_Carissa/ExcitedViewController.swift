//
//  ExcitedViewController.swift
//  KWK_FinalProject_Stella_Evelyn_Carissa
//
//  Created by Evelyn Ma on 7/30/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ExcitedViewController: UIViewController {

    @IBOutlet weak var excited1View: UIImageView!
    @IBOutlet weak var excited2View: UIImageView!
    @IBOutlet weak var excited3View: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        excited1View.loadGif(name: "excited1")
        excited2View.loadGif(name: "excited2")
        excited3View.loadGif(name: "excited3")
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
