//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Stephen Chalker on 5/31/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var splitAmount: Float = 0.0
    var numOfPeople = 0
    var tipPercentage: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(splitAmount)
        settingsLabel.text = "Split Between \(numOfPeople) people, with \(tipPercentage * 100)% tip."
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
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
