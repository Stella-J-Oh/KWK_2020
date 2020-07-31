//
//  JournalEntryTableViewController.swift
//  KWK_FinalProject_Stella_Evelyn_Carissa
//
//  Created by Evelyn Ma on 7/28/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class JournalEntryTableViewController: UITableViewController {


    var listOfEntries : [JournalCD] = []
    
    func getEntries() {
         if let accessToCoreData = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            if let dataFromCoreData = try?
                accessToCoreData.fetch(JournalCD.fetchRequest()) as? [JournalCD]
            {
            
            listOfEntries = dataFromCoreData
            tableView.reloadData()
            }

        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

   /*override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
 */

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listOfEntries.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let eachEntry = listOfEntries[indexPath.row]
        
        cell.textLabel?.text = eachEntry.responseCD
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

         let eachEntry = listOfEntries[indexPath.row]
         
        performSegue(withIdentifier: "moveToViewEntryVC", sender: eachEntry)
    }

    override func viewWillAppear(_ animated: Bool) {
       getEntries()
    }
    
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            if let nextNewResponseVC = segue.destination as? JournalEntryViewController {
            nextNewResponseVC.previousEntryTVC = self
        }
                if let nextViewResponseVC = segue.destination as? ViewEntryViewController {
                    if let chosenEntry = sender as? JournalCD {
                    nextViewResponseVC.selectedEntry = chosenEntry
                    nextViewResponseVC.previousEntryTVC = self
                }
                
                
        }
        

    }

}

