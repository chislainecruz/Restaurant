//
//  OrderConfirmationViewController.swift
//  Restaurant
//
//  Created by Chislaine Cruz on 10/26/19.
//  Copyright © 2019 Chislaine Cruz. All rights reserved.
//

import UIKit

class OrderConfirmationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var timeRemainingLabel: UILabel!
    var minutes : Int!
    
    @IBAction func unwindToOrderList(segue: UIStoryboardSegue){
        
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
