//
//  TaskDetailsViewController.swift
//  HandyBuddy
//
//  Created by Grigori on 12/5/20.
//

import UIKit

class TaskDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var taskLabel: UILabel!
    
    @IBOutlet weak var contractorLabel: UILabel!
    @IBOutlet weak var taskDescription: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBAction func onEdit(_ sender: Any) {
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
