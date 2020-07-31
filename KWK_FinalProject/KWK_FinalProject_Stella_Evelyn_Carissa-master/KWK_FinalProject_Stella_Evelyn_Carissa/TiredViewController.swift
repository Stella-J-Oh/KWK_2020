//
//  TiredViewController.swift
//  KWK_FinalProject_Stella_Evelyn_Carissa
//
//  Created by Evelyn Ma on 7/30/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class TiredViewController: UIViewController {

    @IBOutlet weak var tired1View: UIImageView!
    @IBOutlet weak var tired2View: UIImageView!
    @IBOutlet weak var tired3View: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tired1View.loadGif(name: "tired1")
        tired2View.loadGif(name: "tired2")
        tired3View.loadGif(name: "tired3")
        
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
