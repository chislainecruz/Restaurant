//
//  MenuItemDetailViewController.swift
//  Restaurant
//
//  Created by Chislaine Cruz on 10/23/19.
//  Copyright © 2019 Chislaine Cruz. All rights reserved.
//

import UIKit

class MenuItemDetailViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var detailTextLabel: UILabel!
    @IBOutlet weak var addtoOrderButton: UIButton!
    
    var menuItem: MenuItem!

    override func viewDidLoad() {
        super.viewDidLoad()

        addtoOrderButton.layer.cornerRadius = 7.0
        updateUI()
    }
    
    func updateUI() {
        titleLabel.text = menuItem.name
        priceLabel.text = String(format: "$%.2f", menuItem.price)
        detailTextLabel.text = menuItem.detailText
    }
    
    @IBAction func orderButtonTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.addtoOrderButton.transform = CGAffineTransform(scaleX: 2.5, y: 2.5)
            self.addtoOrderButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
