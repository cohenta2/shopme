//
//  CategoriesViewController.swift
//  ShopME
//
//  Created by Trevor A Cohen on 3/8/18.
//  Copyright © 2018 Trevor A Cohen. All rights reserved.
//

import UIKit

private let reuseIdentifier = "category"

class Category {
    var categoryImage: UIImage
    var categoryName: String
    
    init(name: String, img: UIImage) {
        categoryName = name
        categoryImage = img
    }
}

class CategoriesViewController: UICollectionViewController {

    var allCategories = [Category]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        make_categories()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        if segue.identifier == "toTableSegue" {
            if let tvc = segue.destination as? CategoryViewController {
                tvc.categoryIndex = (sender as? Int)!
            }
        }
    }

    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedIndex = indexPath.item
        self.performSegue(withIdentifier: "toTableSegue", sender: selectedIndex)
    }
 
    
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return allCategories.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? CategoryViewCell {
            cell.categoryLabel.text = allCategories[indexPath.item].categoryName
            cell.categoryImageView.image = allCategories[indexPath.item].categoryImage
            return cell
        }
        return UICollectionViewCell()
    }
    
    func make_categories() {
        allCategories.append(Category(name: "Recent", img: UIImage(named: "category-1-recent")!))
        allCategories.append(Category(name: "Cart", img: UIImage(named: "category-2-cart")!))
        allCategories.append(Category(name: "Grocery", img: UIImage(named: "category-3-grocery")!))
        allCategories.append(Category(name: "Clothing", img: UIImage(named: "category-4-clothing")!))
        allCategories.append(Category(name: "Movies", img: UIImage(named: "category-5-movies")!))
        allCategories.append(Category(name: "Garden", img: UIImage(named: "category-6-garden")!))
        allCategories.append(Category(name: "Electronics", img: UIImage(named: "category-7-electronics")!))
        allCategories.append(Category(name: "Books", img: UIImage(named: "category-8-books")!))
        allCategories.append(Category(name: "Appliances", img: UIImage(named: "category-9-appliances")!))
        allCategories.append(Category(name: "Toys", img: UIImage(named: "category-10-toys")!))
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
