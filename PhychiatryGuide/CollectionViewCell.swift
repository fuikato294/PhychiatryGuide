//
//  CollectionViewCell.swift
//  PhychiatryGuide
//
//  Created by fumitaka katou on 2021/07/03.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var topicImageView: UIImageView!
    @IBOutlet weak var cellTopic: UILabel!
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        // cellの枠の太さ
        self.layer.borderWidth = 1.0
        // cellの枠の色
        self.layer.borderColor = UIColor.black.cgColor
        // cellを丸くする
        self.layer.cornerRadius = 8.0
    }
    
}
