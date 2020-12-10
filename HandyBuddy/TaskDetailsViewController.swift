//
//  TaskDetailsViewController.swift
//  HandyBuddy
//
//  Created by Grigori on 12/5/20.
//

import UIKit
import Parse

class TaskDetailsViewController: UIViewController {
    
    var task: PFObject!
    
    @IBOutlet weak var contractorDescription: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var contractorLabel: UILabel!
    @IBOutlet weak var taskDescription: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var taskLabel: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    
    @IBAction func onEdit(_ sender: Any) {
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let contentWidth = scrollView.bounds.width
        let contentHeight = scrollView.bounds.height * 3
        scrollView.contentSize = CGSize(width: contentWidth, height: contentHeight)
        
        taskLabel.text = task["title"] as! String
        taskDescription.text = task["description"] as? String
        
        // add text to add pictures
        
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
