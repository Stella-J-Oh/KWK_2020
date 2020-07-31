//
//  JournalEntryViewController.swift
//  KWK_FinalProject_Stella_Evelyn_Carissa
//
//  Created by Stella Oh on 7/28/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit
import CoreData

class JournalEntryViewController: UIViewController, UITextViewDelegate {

        override func viewDidLoad() {
            super.viewDidLoad()
            
            //border of entry
            var borderColor : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            entry.layer.borderWidth = 0.5
            entry.layer.borderColor = borderColor.cgColor
            entry.layer.cornerRadius = 5.0
        }
    
    var previousEntryTVC = JournalEntryTableViewController()

    @IBOutlet weak var entry: UITextView!
    
    @IBAction func finishedButton(_ sender: UIButton) {
        guard let accessToCoreData =
            UIApplication.shared.delegate as? AppDelegate else {
        return
        }
        
        let dataFromCoreData = accessToCoreData.persistentContainer.viewContext
        
        let newResponse = JournalCD(context : dataFromCoreData)
        
        newResponse.responseCD = entry.text
        
        accessToCoreData.saveContext()
        
        navigationController?.popViewController(animated: true)
        }

        /*let newResponse = JournalClass()
         
        if let checkForInput = entry.text {
             newResponse.response = checkForInput
         }
        previousEntryTVC.listOfEntries.append(newResponse)
                previousEntryTVC.tableView.reloadData()
                navigationController?.popViewController(animated: true)
         */
        
        

    
  
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
