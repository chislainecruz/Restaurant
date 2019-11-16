//
//  OrderConfirmationViewController.swift
//  Restaurant
//
//  Created by Chislaine Cruz on 10/26/19.
//  Copyright © 2019 Chislaine Cruz. All rights reserved.
//

import UIKit

class OrderConfirmationViewController: UIViewController {
    var orderMinutes = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeRemainingLabel.text = "Thank you for your order! Your wait time is approximately \(minutes!) minutes."

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var timeRemainingLabel: UILabel!
    var minutes : Int!
    
    @IBAction func unwindToOrderList(segue: UIStoryboardSegue){
        if segue.identifier == "DismissConfirmation" {
            MenuController.shared.order.menuItems.removeAll()
        }
    }
    
    
    @IBAction func submitTapped(_ sender: Any) {
        let orderTotal = MenuController.shared.order.menuItems.reduce(0.0) {(result, menuItem) -> Double in
            return result + menuItem.price
            }
        let formattedOrder = String(format: "$%.2f", orderTotal)
        
        let alert = UIAlertController(title: "Confirm Order", message: "You are about to submit your order with a total of \(formattedOrder)", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
            
    }
    

    func uploadOrder() {
        let menuIds = MenuController.shared.order.menuItems.map {$0.id}
        MenuController.shared.submitOrder(forMenuIDs: menuIds) { (minutes) in
            DispatchQueue.main.async {
                if let minutes = minutes {
                    self.orderMinutes = minutes
                    self.performSegue(withIdentifier: "ConfirmationSegue", sender: nil)
                }
            }
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ConfirmationSegue" {
            let orderConfirmationViewController = segue.destination as! OrderConfirmationViewController
            orderConfirmationViewController.minutes = orderMinutes
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
