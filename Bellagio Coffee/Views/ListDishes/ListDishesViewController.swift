//
//  ListDishesViewController.swift
//  Bellagio Coffee
//
//  Created by new on 2/2/23.
//

import UIKit

class ListDishesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var category: DishCategory!
    
    var dishes: [Dish] = [
    
        .init(id: "id1", name: "Borsok", image: "https://picsum.photos/100/200", description: "This is the best I have ever tasted,This is the best I have ever tasted,This is the best I have ever tasted,This is the best I have ever tasted,This is the best I have ever tasted,This is the best I have ever tasted,This is the best I have ever tasted,", calories: 345),
        .init(id: "id1", name: "New York", image: "https://picsum.photos/100/200", description: "This is the best I have ever tasted", calories: 145),
        .init(id: "id1", name: "Pizza", image: "https://picsum.photos/100/200", description: "This is the best I have ever tasted", calories: 3435),
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = category.name
        registerCells()
    }
    
    
    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.idetifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.idetifier)
    }


}


extension ListDishesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count

    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.idetifier) as! DishListTableViewCell
        
        cell.setUp(dish: dishes[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = dishes[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
    
}
