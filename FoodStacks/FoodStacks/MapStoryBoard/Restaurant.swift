//
//  Restaurant.swift
//  Yelpy
//
//

import Foundation
import UIKit
import MapKit

// Lab 6: TODO: add MapKit framework --> import MapKit


class Restaurant {
    

    var imageURL: URL?
    var url: URL?
    var name: String
    var mainCategory: String
    var phone: String
    var rating: Double
    var reviews: Int
    var coordinates: [String:Double]
    
    // MARK: Lab 6:  Refactor Restaurant Model
    
    

    init(dict: [String: Any]) {
        imageURL = URL(string: dict["image_url"] as! String)
        name = dict["name"] as! String
        rating = dict["rating"] as! Double
        reviews = dict["review_count"] as! Int
        phone = dict["display_phone"] as! String
        url = URL(string: dict["url"] as! String)
        mainCategory = Restaurant.getMainCategory(dict: dict)
        coordinates = dict["coordinates"] as! [String:Double]
        // LAB 6
        
    }
    
    // Helper function to get First category from restaurant
    static func getMainCategory(dict: [String:Any]) -> String {
        let categories = dict["categories"] as! [[String: Any]]
        return categories[0]["title"] as! String
    }

    
}
