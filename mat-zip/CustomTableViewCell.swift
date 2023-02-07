//
//  CustomTableViewCell.swift
//  mat-zip
//
//  Created by 라효은 on 2023/02/07.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var myEx: UILabel!
    @IBOutlet weak var myName: UILabel!
    @IBOutlet weak var myImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
