//
//  ListOrdersViewController.swift
//  Bellagio Coffee
//
//  Created by new on 2/2/23.
//

import UIKit

class ListOrdersViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var orders: [Order] = [
    
        .init(id: "id", name: "Manas Duishoev", dish: .init(id: "id1", name: "Pizza", image: "https://picsum.photos/100/200", description: "This is the best I have ever tasted", calories: 3435)),
    
        .init(id: "id", name: "Sanjar Akparaliev", dish: .init(id: "id1", name: "Pizza", image: "https://picsum.photos/100/200", description: "This is the best I have ever tasted", calories: 3435)),
        
        .init(id: "id", name: "Adinay Djadieva", dish: .init(id: "id1", name: "Pizza", image: "https://picsum.photos/100/200", description: "This is the best I have ever tasted", calories: 3435)),
        
        .init(id: "id", name: "Zarina Kamalova", dish: .init(id: "id1", name: "Pizza", image: "https://picsum.photos/100/200", description: "This is the best I have ever tasted", calories: 3435)),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Orders"
        registerCells()
    }
    

    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.idetifier, bundle: nil),  forCellReuseIdentifier: DishListTableViewCell.idetifier)
    }
    

}


extension ListOrdersViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.idetifier) as! DishListTableViewCell
        
        cell.setUp(order: orders[indexPath.row])
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = orders[indexPath.row].dish
        navigationController?.pushViewController(controller, animated: true)
    }
}
