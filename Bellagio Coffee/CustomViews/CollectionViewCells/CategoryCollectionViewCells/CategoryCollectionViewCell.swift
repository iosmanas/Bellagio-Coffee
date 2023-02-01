//
//  CategoryCollectionViewCell.swift
//  Bellagio Coffee
//
//  Created by new on 1/2/23.
//

import UIKit
import Kingfisher


class CategoryCollectionViewCell: UICollectionViewCell {

    static let identifier = String(describing: CategoryCollectionViewCell.self)
    
    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryTitleLbl: UILabel!
    
    
    func setUp(category: DishCategory) {
        categoryTitleLbl.text = category.name
        categoryImageView.kf.setImage(with: category.image.asUrl)
    }

}
