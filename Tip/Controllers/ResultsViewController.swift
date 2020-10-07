//
//  ResultsViewController.swift
//  Tip
//
//  Created by Chris Yarosh on 07/10/2020.
//  Copyright © 2020 Chris Yarosh Development. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var text:Float = 0.00
    var people:Int = 2
    var tip:String = "0%"

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(format:"%.2f", text)
        settingsLabel.text = "Split between \(people) people, with \(tip) tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
