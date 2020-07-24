//
//  FirstQuestion.swift
//  MiniProject2
//
//  Created by Stella Oh on 7/23/20.
//  Copyright © 2020 KWK. All rights reserved.
//

import UIKit

class FirstQuestion: UIViewController {

    @IBOutlet weak var beMyManager: UILabel!
    
    @IBOutlet weak var withTheFlow: UILabel!
    
    @IBOutlet weak var lifeOnTheEdge: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        beMyManager.isHidden = true
        withTheFlow.isHidden = true
        lifeOnTheEdge.isHidden = true
    }
    
    @IBAction func roughList(_ sender: Any) {
        beMyManager.isHidden = true
        withTheFlow.isHidden = false
        lifeOnTheEdge.isHidden = true
    }
    
    @IBAction func itinerary(_ sender: Any) {
        beMyManager.isHidden = false
        withTheFlow.isHidden = true
        lifeOnTheEdge.isHidden = true
    }
    
    @IBAction func whatPlans(_ sender: Any) {
        beMyManager.isHidden = true
        withTheFlow.isHidden = true
        lifeOnTheEdge.isHidden = false
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
