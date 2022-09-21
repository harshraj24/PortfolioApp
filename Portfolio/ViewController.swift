//
//  ViewController.swift
//  Portfolio
//
//  Created by Harsh Raj on 25/08/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var profile: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var selfImage: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        // Do any additional setup after loading the view.
    }
    
    func setupView() {
        self.name.text = "Harsh Raj"
        self.profile.text = "iOS Developer"
    }


}

