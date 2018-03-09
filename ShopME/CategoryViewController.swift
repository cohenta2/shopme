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
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
    
    func make_grocery() {
        allItems.append(Item(img: UIImage(named: "grocery-1-tomatoes")!, name: "Tomatoes, per lb", price: 2.45, desc: "Freshly picked"))
        allItems.append(Item(img: UIImage(named: "grocery-2-bananas")!, name: "Banana, per lb", price: 1.50, desc: "Not bruised!"))
        allItems.append(Item(img: UIImage(named: "grocery-3-gala")!, name: "Apple", price: 1.00, desc: "So sweet"))
        allItems.append(Item(img: UIImage(named: "grocery-4-lettuce")!, name: "Lettuce", price: 2.00, desc: "Lettuce be friends"))
        allItems.append(Item(img: UIImage(named: "grocery-5-broccoli")!, name: "Brocooli", price: 3.30, desc: "I'm a little tree"))
        allItems.append(Item(img: UIImage(named: "grocery-6-milk")!, name: "Milk", price: 3.50, desc: "Got me?"))
        allItems.append(Item(img: UIImage(named: "grocery-7-bread")!, name: "Bread", price: 3.10, desc: "Artisan"))
        allItems.append(Item(img: UIImage(named: "grocery-8-tomatoes")!, name: "Eggs", price: 1.90, desc: "What came first?"))
    }

}
