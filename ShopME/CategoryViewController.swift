//
//  CategoryViewController.swift
//  ShopME
//
//  Created by Trevor A Cohen on 3/8/18.
//  Copyright © 2018 Trevor A Cohen. All rights reserved.
//

import UIKit

class Item {
    var itemImage: UIImage
    var itemName: String
    var itemPrice: Float
    var itemDescription: String
    
    init(img: UIImage, name: String, price: Float, desc: String) {
        itemImage = img
        itemName = name
        itemPrice = price
        itemDescription = desc
    }
}

class CategoryViewController: UITableViewController {
    
    var allItems = [Item]()
    var categoryIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        determine_category(index: categoryIndex)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allItems.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "item", for: indexPath) as? ItemViewCell {
            cell.itemImage.image = allItems[indexPath.item].itemImage
            cell.itemName.text = allItems[indexPath.item].itemName
            cell.itemDescription.text = allItems[indexPath.item].itemDescription
            cell.itemPrice.text = "$" + String(allItems[indexPath.item].itemPrice)
            return cell
        }


        return UITableViewCell()
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func determine_category(index: Int) {
        if index == 0 {
            return
        }
        else if index == 1 {
            return
        }
        else if index == 2 {
            make_grocery()
            return
        }
        else if index == 3 {
            make_clothing()
            return
        }
        else if index == 4 {
            make_movies()
            return
        }
        else if index == 5 {
            make_garden()
            return
        }
        else if index == 6 {
            make_electronics()
            return
        }
        else if index == 7 {
            make_books()
            return
        }
        else if index == 8 {
            make_appliances()
            return
            
        }
        else if index == 9 {
            make_toys()
            return
        }
    }
    
    func make_grocery() {
        allItems.append(Item(img: UIImage(named: "grocery-1-tomatoes")!, name: "Tomatoes, per lb", price: 2.45, desc: "Freshly picked"))
        allItems.append(Item(img: UIImage(named: "grocery-2-bananas")!, name: "Banana, per lb", price: 1.50, desc: "Not bruised!"))
        allItems.append(Item(img: UIImage(named: "grocery-3-gala")!, name: "Apple", price: 1.00, desc: "So sweet"))
        allItems.append(Item(img: UIImage(named: "grocery-4-lettuce")!, name: "Lettuce", price: 2.00, desc: "Lettuce be friends"))
        allItems.append(Item(img: UIImage(named: "grocery-5-broccoli")!, name: "Brocooli", price: 3.30, desc: "I'm a little tree"))
        allItems.append(Item(img: UIImage(named: "grocery-6-milk")!, name: "Milk", price: 3.50, desc: "Got me?"))
        allItems.append(Item(img: UIImage(named: "grocery-7-bread")!, name: "Bread", price: 3.10, desc: "Artisan"))
        allItems.append(Item(img: UIImage(named: "grocery-8-eggs")!, name: "Eggs", price: 1.90, desc: "What came first?"))
    }
    
    func make_clothing() {
        
    }
    
    func make_movies() {
        
    }
    
    func make_garden() {
        allItems.append(Item(img: UIImage(named: "garden-1-shovel")!, name: "Shovel", price: 10.00, desc: "Garden use only"))
        allItems.append(Item(img: UIImage(named: "garden-2-tomato-plant")!, name: "Tomato Plant", price: 2.13, desc: "Planting made easy"))
        allItems.append(Item(img: UIImage(named: "garden-3-mower")!, name: "Mower", price: 99.99, desc: "Wear shoes!"))
        allItems.append(Item(img: UIImage(named: "garden-4-garden-soil")!, name: "Garden Soil", price: 9.99, desc: "Dirt don't hurt."))
        allItems.append(Item(img: UIImage(named: "garden-5-fruit-tree")!, name: "Fruit Tree", price: 5.99, desc: "Mystery fruit inside"))
        allItems.append(Item(img: UIImage(named: "garden-6-leaves-rake")!, name: "Rake", price: 6.50, desc: "For making your yard tidy"))
    }
    
    func make_electronics() {
        
    }
    
    func make_books() {
        
    }
    
    func make_appliances() {
        
    }
    
    func make_toys() {
        
    }

}
