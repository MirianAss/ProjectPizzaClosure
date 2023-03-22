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

        let urlImage = URL(string: rating?.imageURL ?? "")
        imagePizza.sd_setImage(with: urlImage)
        lblRatingPizza.text = "A pizza de \(rating?.name ?? "") possui a nota de: \(rating?.rating ?? 0)/5"
    }
    
    @IBAction func btBack(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
