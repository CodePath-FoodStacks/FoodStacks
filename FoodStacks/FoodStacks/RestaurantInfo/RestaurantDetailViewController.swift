//
//  RestaurantViewController.swift
//  FoodStacks
//
//  Created by Socheata Hour on 4/6/22.
//

import UIKit

class RestaurantDetailViewController: UIViewController {

    // ––––– TODO: Configure outlets
    @IBOutlet weak var starView: UIImageView!
    @IBOutlet weak var reviewsLabel: UILabel!
    @IBOutlet weak var tryAgainButton: UIButton!
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var restaurantNameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    // Initialize restaurant variable
    var restaurant: Restaurant!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func configureOutlets() {
        restaurantNameLabel.text =
        reviewsLabel.text = 
        starView.image =
        imageView.image =
    }
    
    
    
    
    
    
    //*********************
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
