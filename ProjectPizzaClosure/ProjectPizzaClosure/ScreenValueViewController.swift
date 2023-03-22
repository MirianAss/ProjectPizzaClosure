//
//  ScreenValueViewController.swift
//  ProjectPizzaClosure
//
//  Created by Mirian Santana on 22/03/23.
//

import UIKit

class ScreenValueViewController: UIViewController {
    
    var value: PizzaElement?

    @IBOutlet weak var imagePizza: UIImageView!
    @IBOutlet weak var lblPizzaP: UILabel!
    @IBOutlet weak var lblPizzaM: UILabel!
    @IBOutlet weak var lblPizzaG: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlImage = URL(string: value?.imageURL ?? "")
        imagePizza.sd_setImage(with: urlImage)
        lblPizzaP.text = "PEQUENA: \(value?.priceP ?? 0.0)"
        lblPizzaM.text = "MÉDIA: \(value?.priceM ?? 0.0)"
        lblPizzaG.text = "GRANDE: \(value?.priceG ?? 0.0)"
    }
    
    @IBAction func btAdvance(_ sender: Any) {
        if let screen = self.storyboard?.instantiateViewController(withIdentifier: "rating") as? ScreenRatingViewController {
            
            screen.rating = self.value
            
            self.navigationController?.pushViewController(screen, animated: true)
        }
    }
    
    @IBAction func btBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
