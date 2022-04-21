//
//  MapUiViewController.swift
//  FoodStacks
//
//  Created by Sergio Zavala on 4/13/22.
//

import Foundation
import UIKit
import MapKit

class MapUiViewController: UIViewController {

    @IBOutlet weak var findButton: UIButton!
    
    
    var name: String
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    init(dict: [String: Any]) {
       
        name = dict["name"] as! String
    }
    
    
    
}
