//
//  HomeViewController.swift
//  Bellagio Coffee
//
//  Created by new on 31/1/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var categoties: [DishCategory] = [
    
        .init(id: "id1", name: "Kyrgyz Dish", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Kyrgyz Dish2", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Kyrgyz Dish3", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Kyrgyz Dish4", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Kyrgyz Dish5", image: "https://picsum.photos/100/200")

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
    }

}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
        
        cell.setUp(category: categoties[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoties.count
    }
    
    
}

