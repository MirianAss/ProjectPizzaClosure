//
//  ScreenRatingViewController.swift
//  ProjectPizzaClosure
//
//  Created by Mirian Santana on 22/03/23.
//

import UIKit

class ScreenRatingViewController: UIViewController {
    
    var rating: PizzaElement?
    
    @IBOutlet weak var lblRatingPizza: UILabel!
    @IBOutlet weak var imagePizza: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btBack(_ sender: Any) {
        
    }
    
}
