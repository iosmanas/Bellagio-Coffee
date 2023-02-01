//
//  HomeViewController.swift
//  Bellagio Coffee
//
//  Created by new on 31/1/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    
    
    
    var categoties: [DishCategory] = [
    
        .init(id: "id1", name: "Kyrgyz Dish", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Kyrgyz Dish2", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Kyrgyz Dish3", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Kyrgyz Dish4", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Kyrgyz Dish5", image: "https://picsum.photos/100/200")

    ]
    
    var populars: [Dish] = [
    
        .init(id: "id1", name: "Borsok", image: "https://picsum.photos/100/200", description: "This is the best I have ever tasted", calories: 345),
        .init(id: "id1", name: "New York", image: "https://picsum.photos/100/200", description: "This is the best I have ever tasted", calories: 145),
        .init(id: "id1", name: "Pizza", image: "https://picsum.photos/100/200", description: "This is the best I have ever tasted", calories: 3435),
    
    ]
    
    var specials: [Dish] = [
    
        .init(id: "id1", name: "Kuurdak", image: "https://picsum.photos/100/200", description: "This is my favourite dish", calories: 145),
        .init(id: "id1", name: "Shorpo", image: "https://picsum.photos/100/200", description: "This is the best I have ever tasted", calories: 3435),
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        
        
        
//        MARK: Private function register cells
        registerCells()
        
    }
    
    //        MARK: Private function register cells

    private func registerCells() {
        
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        
        popularCollectionView.register(UINib(nibName: DishPortraitCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishPortraitCollectionViewCell.identifier)
        
        
    }

}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView {
            
        case categoryCollectionView:
            return categoties.count
            
        case popularCollectionView:
            return populars.count
            
        
            
        default: return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
            
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            
            cell.setUp(category: categoties[indexPath.row])
            
            return cell
            
        case popularCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishPortraitCollectionViewCell.identifier, for: indexPath) as! DishPortraitCollectionViewCell
            
            cell.setUp(dish: populars[indexPath.row])
            
            return cell
            
        
            
        default: return UICollectionViewCell()
            
        }
        
        
        
        
        
    }
    
    
}

