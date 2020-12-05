//
//  PostTaskViewController.swift
//  HandyBuddy
//
//  Created by Grigori on 12/5/20.
//

import UIKit
import AlamofireImage
import Parse

class PostTaskViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var taskDescriptionField: UITextField!
    @IBOutlet weak var taskNameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //GB comment
    }
    
    @IBAction func onCreateButton(_ sender: Any) {
        let task = PFObject(className: "Task")
        
        task["title"] = taskNameField.text!
        task["description"] = taskDescriptionField.text!
       // task["companyName"] = PFUser.current()!
        task["client"] = PFUser.current()!
        
        let imageData = imageView.image!.pngData()
        let file = PFFileObject(data: imageData!)
        task["image"] = file
        
        task.saveInBackground{(success, error) in
            if success{
                self.dismiss(animated: true, completion: nil)
                print("######## Saved task")
            }
            else{
                print("######## Not saved task")
            }
        }
    }
    @IBAction func onImageTap(_ sender: Any) {
        let picker = UIImagePickerController()
                picker.delegate = self
                picker.allowsEditing = true
                
                if UIImagePickerController.isSourceTypeAvailable(.camera){
                    picker.sourceType = .camera
                    
                }else {
                    picker.sourceType = .photoLibrary
                }
                present(picker, animated: true, completion: nil)
                }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
          let image = info [.editedImage] as! UIImage
          let size = CGSize(width: 300, height: 300)
          let scaledImage = image.af_imageScaled(to: size)
          
          imageView.image = scaledImage
          //dismiss camera view
          dismiss(animated: true, completion: nil)
    }
    
    
    /*
     @IBAction func onPistureTapGesture(_ sender: Any) {
     }
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
