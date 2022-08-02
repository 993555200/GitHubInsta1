//
//  PostTableViewCell.swift
//  GitHubInsta1
//
//  Created by Habibulloh on 01/08/22.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var postImage: UIImageView!
    
    
    @IBOutlet weak var postImage1: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
