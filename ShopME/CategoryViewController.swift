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
        allItems.append(Item(img: UIImage(named: "clothing-1-shirt")!, name: "Shirt", price: 3.33, desc: "Stylish"))
        allItems.append(Item(img: UIImage(named: "clothing-2-socks")!, name: "Socks", price: 4.49, desc: "Cotton"))
        allItems.append(Item(img: UIImage(named: "clothing-3-ski-bib")!, name: "Ski Bib", price: 45.99, desc: "Keep your butt dry"))
        allItems.append(Item(img: UIImage(named: "clothing-4-beanie")!, name: "Beanie", price: 4.59, desc: "Be the hipster you wanted to be"))
        allItems.append(Item(img: UIImage(named: "clothing-5-gloves")!, name: "Gloves", price: 5.60, desc: "One size fits all"))
    }
    
    func make_movies() {
        allItems.append(Item(img: UIImage(named: "movies-1-shawshank")!, name: "The Shawshank Redemption", price: 9.99, desc: "An epic starring Tim Robbins and Morgan Freeman"))
        allItems.append(Item(img: UIImage(named: "movies-2-lord-of-the-rings")!, name: "Lord of the Rings", price: 9.99, desc: "A mythical journey starring elves, dwarves, and orcs oh my"))
        allItems.append(Item(img: UIImage(named: "movies-3-godfather")!, name: "The Godfather", price: 9.99, desc: "Say hello to my  little...wait wrong movie"))
        allItems.append(Item(img: UIImage(named: "movies-4-baby-driver")!, name: "Baby Driver", price: 9.99, desc: "Music, Car chases, and adrenaline"))
        allItems.append(Item(img: UIImage(named: "movies-5-pulp-fiction")!, name: "Pulp Fiction", price: 9.99, desc: "Say what again"))
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
        allItems.append(Item(img: UIImage(named: "electronics-1-iphone")!, name: "iPhone", price: 299.99, desc: "The most wonderful invention of all time.  This is not biased"))
        allItems.append(Item(img: UIImage(named: "electronics-2-apple-watch")!, name: "Apple Watch", price: 299.99, desc: "The future on your wrist"))
        allItems.append(Item(img: UIImage(named: "electronics-3-amazon-echo")!, name: "Amazon Echo", price: 99.99, desc: "Weild the power of Alexa"))
        allItems.append(Item(img: UIImage(named: "electronics-4-thinkpad")!, name: "ThinkPad", price: 350.99, desc: "A well made laptop that you will eventually put linux on"))
        allItems.append(Item(img: UIImage(named: "electronics-5-xbox-one")!, name: "Xbox One", price: 499.99, desc: "Don't buy this"))
    }
    
    func make_books() {
        allItems.append(Item(img: UIImage(named: "books-1-a-game-of-thrones")!, name: "A Game of Thrones", price: 5.99, desc: "The book that started the HBO cultural phenomenon"))
        allItems.append(Item(img: UIImage(named: "books-2-harry-potter")!, name: "Harry Potter", price: 6.99, desc: "You're a wizard Arry"))
        allItems.append(Item(img: UIImage(named: "books-3-the-hobbit")!, name: "The Hobbit", price: 7.99, desc: "A care-free adventure by Tolkien"))
        allItems.append(Item(img: UIImage(named: "books-4-animal-farm")!, name: "Animal Farm", price: 8.99, desc: "Poor Boxer"))
        allItems.append(Item(img: UIImage(named: "books-5-lord-of-the-flies")!, name: "Lord of the Flies", price: 3.99, desc: "I never read this book"))
    }
    
    func make_appliances() {
        allItems.append(Item(img: UIImage(named: "appliances-1-coffee-maker")!, name: "Coffee Maker", price: 10.99, desc: "Treat yourself"))
        allItems.append(Item(img: UIImage(named: "appliances-2-blender")!, name: "Blender", price: 12.99, desc: "Milk Shakes for days"))
        allItems.append(Item(img: UIImage(named: "appliances-3-toaster")!, name: "Toaster", price: 6.99, desc: "The best thing since sliced bread"))
        allItems.append(Item(img: UIImage(named: "appliances-4-dishwasher")!, name: "Dishwasher", price: 220.99, desc: "Because we all want to be lazy"))
        allItems.append(Item(img: UIImage(named: "appliances-5-microwave")!, name: "Microwave", price: 60.99, desc: "For reheating leftovers"))
    }
    
    func make_toys() {
        allItems.append(Item(img: UIImage(named: "toys-1-action-figure")!, name: "Spiderman Action Figure", price: 15.99, desc: "With Web Slinging Action!"))
        allItems.append(Item(img: UIImage(named: "toys-2-legos")!, name: "Legos", price: 20.99, desc: "A barefoot's worst nightmare"))
        allItems.append(Item(img: UIImage(named: "toys-3-hot-wheels")!, name: "Hot Wheels", price: 9.99, desc: "Overpriced toy cars"))
        allItems.append(Item(img: UIImage(named: "toys-4-teddy-bear")!, name: "Teddy Bear", price: 6.99, desc: "Just a teddy bear"))
        allItems.append(Item(img: UIImage(named: "toys-5-train")!, name: "Toy Train", price: 9.99, desc: "Choo Choo"))
    }

}
