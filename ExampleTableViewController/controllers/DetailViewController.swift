//
//  DetailViewController.swift
//  ExampleTableViewController
//
//  Created by Kevin Faulhaber on 12/11/2018.
//  Copyright © 2018 Julia. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var yearLabel: UILabel!
    
    var game: Game!
    
    override func viewDidLoad() {
        yearLabel.text = String(game.year)
    }
    
    
}
