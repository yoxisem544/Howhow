//
//  MainCollectionViewCell.swift
//  Howhow
//
//  Created by David on 2016/10/23.
//  Copyright © 2016年 David. All rights reserved.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
	
	@IBOutlet weak var avatarImageView: UIImageView!
	
	@IBOutlet weak var usernameLabel: UILabel!
	@IBOutlet weak var timeLabel: UILabel!
	
	@IBOutlet weak var photoImageView: UIImageView!
	
	@IBOutlet weak var postContnetLabel: UILabel!
    
    @IBOutlet weak var likeButton: DOFavoriteButton!
	
	override func awakeFromNib() {
		super.awakeFromNib()
		
		// configuration
		avatarImageView.layer.cornerRadius = avatarImageView.bounds.width / 2
		avatarImageView.clipsToBounds = true
		
		photoImageView.clipsToBounds = true
        
        likeButton.addTarget(self, action: #selector(tapped(sender:)), for: .touchUpInside)
	}
    
    func tapped(sender: DOFavoriteButton) {
        if sender.isSelected {
            // deselect
            sender.deselect()
        } else {
            // select with animation
            sender.select()
        }
    }
	
}
