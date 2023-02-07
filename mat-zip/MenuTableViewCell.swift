//
//  MenuTableViewCell.swift
//  mat-zip
//
//  Created by 라효은 on 2023/02/07.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet weak var menuImg: UIImageView!
    @IBOutlet weak var menuPrice: UILabel!
    @IBOutlet weak var menuTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
