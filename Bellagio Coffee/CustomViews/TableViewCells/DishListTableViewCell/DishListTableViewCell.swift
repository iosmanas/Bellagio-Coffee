//
//  DishListTableViewCell.swift
//  Bellagio Coffee
//
//  Created by new on 2/2/23.
//

import UIKit

class DishListTableViewCell: UITableViewCell {

    static let idetifier = "DishListTableViewCell"
    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    func setUp(dish: Dish) {
        dishImageView.kf.setImage(with:  dish.image?.asUrl)
        titleLbl.text = dish.name
        descriptionLbl.text = dish.description
    }
}
