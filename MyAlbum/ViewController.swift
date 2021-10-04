//
//  ViewController.swift
//  MyAlbum
//
//  Created by 조대호 on 2021/10/03.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 0
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func priceConfirm(_ sender: Any) {
        let alert = UIAlertController(title: "랜덤 가격표", message: "얼마일까?", preferredStyle: .alert)
        let action = UIAlertAction(title: "알려주세요.", style: .default, handler: {alert in
            self.randomPrice()
        })
        
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func randomPrice() {
        let price = arc4random_uniform(10000) + 1
        currentValue = Int(price)
        priceLabel.text = "₩\(currentValue)"
    }
    
}

