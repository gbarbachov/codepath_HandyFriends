//
//  FeedViewController.swift
//  HandyBuddy
//
//  Created by Grigori on 12/5/20.
//

import UIKit
import Parse
import AlamofireImage


class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
       
    @IBOutlet weak var tableView: UITableView!
    
    var tasks = [PFObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLogoutButton(_ sender: Any) {
        PFUser.logOut()
        let main = UIStoryboard(name: "Main", bundle: nil)
        let loginViewController = main.instantiateViewController(identifier: "LoginViewController")
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let delegate = windowScene.delegate as? SceneDelegate
        else {return}
        delegate.window?.rootViewController = loginViewController
    }
    
    override func viewDidAppear(_ animated: Bool) {
                super.viewDidAppear(animated)
                let query = PFQuery(className: "Task")
                query.includeKeys(["description" , "title"])
                query.order(byDescending: "createdAt")
                query.limit = 20
        
                query.findObjectsInBackground{ (tasks, error) in
                    if (tasks != nil){
                        self.tasks = tasks!
        
                        self.tableView.reloadData()
                    }
                }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for:indexPath) as! TaskCell
        let task = tasks[indexPath.row]
        
        cell.taskTitleLabel.text = task["title"] as? String
        cell.taskTitleLabel.sizeToFit()
        
        cell.taskDescriptionLabel.text = task["description"] as? String
        cell.taskDescriptionLabel.sizeToFit()
        cell.taskDescriptionLabel.textAlignment = .left
        cell.taskDescriptionLabel.textAlignment = .justified
   
        
              
        if let imageFile = task["image"] as? PFFileObject{
            let urlString = (imageFile.url)!
        let url = URL(string: urlString)!
        cell.photoView.af.setImage(withURL: url)
        //To make round corners of the image
        cell.photoView.layer.cornerRadius = 10
        cell.photoView.clipsToBounds = true
        }
   
        
        return cell
        }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let cell = sender as! UITableViewCell
        let indexPath = tableView.indexPath(for: cell)
        let task = tasks[indexPath!.row]
        let detailsViewController = segue.destination as! TaskDetailsViewController
        detailsViewController.task = task
        
        tableView.deselectRow(at: indexPath!, animated: true)
    }
    

}
