//
//  BasicTableViewCell.swift
//  ChencatustomUI
//
//  Created by chencatmail on 2025/5/13.
//

import UIKit

class BasicTableViewCell: UITableViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
