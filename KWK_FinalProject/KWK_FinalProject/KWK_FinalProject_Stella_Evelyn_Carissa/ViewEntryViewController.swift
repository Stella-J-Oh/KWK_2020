//
//  ViewEntryViewController.swift
//  KWK_FinalProject_Stella_Evelyn_Carissa
//
//  Created by Evelyn Ma on 7/29/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewEntryViewController: UIViewController {

    var previousEntryTVC = JournalEntryTableViewController()
    var selectedEntry : JournalCD?
    
    @IBOutlet weak var entryDisplay: UILabel!
    
    override func viewDidLoad() {
        entryDisplay.text = selectedEntry?.responseCD
        super.viewDidLoad()
            }
    
    @IBAction func deleteEntry(_ sender: UIButton) {
        guard let accessToCoreData =
            UIApplication.shared.delegate as? AppDelegate else {
           return
        }

        let dataFromCoreData = accessToCoreData.persistentContainer.viewContext

        if let entryToDelete = selectedEntry {
            dataFromCoreData.delete(entryToDelete)
            navigationController?.popViewController(animated: true)
        }
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
