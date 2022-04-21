//
//  MapViewController.swift
//  FoodStacks
//
//  Created by Sergio Zavala on 4/19/22.
//

import UIKit
import Foundation
import MapKit

class MapViewController: UIViewController {


    
    @IBOutlet weak var findButton: UIButton!
    
    @IBOutlet weak var restuarantLable: UILabel!
    
    var r: Restaurant!
    
    var restuarantsData: [[String:Any]]?
    var res: [String:Any]?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //call the api
        callAPi()
        // Do any additional setup after loading the view.
    }
    func callAPi(){
        API.getRestaurants { data in
            self.restuarantsData = data
        }
    }
    @IBAction func onFindRandom(_ sender: Any) {
        if let restuarantsData = restuarantsData {
            let randIndex = Int.random(in: 0...restuarantsData.count)
            
            let chosenRestaurant = restuarantsData[randIndex]
            res = chosenRestaurant
            print(chosenRestaurant)
            
            //perform the segue to next storyboard
            //self.performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //pass chosen resurant to nnext controler
        
        //create view controller
        //let viewcontroller =
        
        //set next viewcontroller resutrant
        //ViewController.restuarant = res
        
        
    }
    
//    func configureOutlets() {
//        restuarantLable.text = r.name
//        print(restuarantLable)
//    }
        
    
//    @IBAction func findRes(_ sender: Any) {
//        
//        restuarantLable.text = r.name
//        print(restuarantLable)
//
//    }
//
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
