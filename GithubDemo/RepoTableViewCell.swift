//
//  RepoTableViewCell.swift
//  GithubDemo
//
//  Created by Nguyen T Do on 3/16/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class RepoTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var byLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    
    var repo:GithubRepo? {
        didSet{
            nameLabel.text = repo!.name
            byLabel.text = repo!.ownerHandle
            descriptionLabel.text = repo!.repoDescription
            starLabel.text = String(repo!.stars!)
            // cell.starLabel.
            forkLabel.text = String(repo!.forks!)
            
            avatarImageView.setImageWithURL(NSURL(string:repo!.ownerAvatarURL!  )!)

        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
