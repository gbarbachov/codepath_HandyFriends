//
//  TaskCell.swift
//  HandyBuddy
//
//  Created by Grigori on 12/5/20.
//

import UIKit

class TaskCell: UITableViewCell {

    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var taskDescriptionLabel: UILabel!
    @IBOutlet weak var taskTitleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
