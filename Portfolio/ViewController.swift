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
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func setupView() {
        self.name.text = "Harsh Raj"
        self.profile.text = "iOS Developer"
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Tapped")
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "skillCell", for: indexPath)
        cell.textLabel?.text = "Harsh"
        return cell
    }
    
    
}
