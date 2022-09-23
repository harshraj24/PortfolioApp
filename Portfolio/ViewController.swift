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
    @IBOutlet weak var skillTableView: UITableView!
    @IBOutlet weak var toolTableView: UITableView!
    
    let skillSet = ["Swift", "UIKit", "SwiftUI", "Agile (Scrum)", "XCTestCases", "XCUITestCases", "HTML5", "CSS3", "C/C++"]
    
    let toolSet = ["Xcode", "JIRA", "SharePoint", "SourceTree", "Postman", "Robo 3T", "Push Notifications"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
        skillTableView.delegate = self
        skillTableView.dataSource = self
        toolTableView.delegate = self
        toolTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func setupView() {
        self.name.text = "Harsh Raj"
        self.profile.text = "iOS Developer"
        skillTableView.backgroundColor = .black
        toolTableView.backgroundColor = .black
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Tapped")
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableView == skillTableView ? skillSet.count : toolSet.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == skillTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "skillCell", for: indexPath)
            cell.backgroundColor = .black
            cell.textLabel?.textColor = .white
            cell.textLabel?.text = skillSet[indexPath.row]
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "toolCell", for: indexPath)
            cell.backgroundColor = .black
            cell.textLabel?.textColor = .white
            cell.textLabel?.text = toolSet[indexPath.row]
            return cell
        }
    }
    
    
}
