//
//  CompletedToDoViewController.swift
//  ToDoList
//
//  Created by Stella Oh on 7/28/20.
//  Copyright © 2020 KWK. All rights reserved.
//

import UIKit

class CompletedToDoViewController: UIViewController {

    @IBOutlet weak var toDoDisplay: UILabel!
    var previousToDoTVC = ToDoTableViewController()
    var selectedToDo = ToDoClass()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toDoDisplay.text = selectedToDo.description
    }
    
    @IBAction func completeTapped(_ sender: UIButton) {
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
