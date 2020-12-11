//
//  TaskDetailsViewController.swift
//  HandyBuddy
//
//  Created by Grigori on 12/5/20.
//

import UIKit
import Parse
import AlamofireImage

class TaskDetailsViewController: UIViewController {
    
    var task: PFObject!
    
    @IBOutlet weak var contractorDescription: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var taskImage: UIImageView!
    
    @IBOutlet weak var contractorImage: UIImageView!
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
        // if figure out autolayout, take this away
        taskLabel.sizeToFit()
        taskDescription.text = task["description"] as? String
        // if figure out autolayout, take this away
        taskDescription.sizeToFit()
        
        dateLabel.sizeToFit()
        moneyLabel.sizeToFit()
        locationLabel.sizeToFit()
        
        if let imageFile = task["image"] as? PFFileObject{
            let urlString = (imageFile.url)!
        let url = URL(string: urlString)!
        taskImage.af.setImage(withURL: url)
        taskImage.layer.masksToBounds = true
        taskImage.layer.cornerRadius = taskImage.bounds.width / 2
        //To make round corners of the image
        //taskImage.layer.cornerRadius = 10
        taskImage.clipsToBounds = true
        
        // add text to add pictures
        // add contractor info
        // add sum of money
                // adapt formating so that shows dollar sign
        // add date 
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
}
