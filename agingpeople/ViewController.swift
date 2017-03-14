//
//  ViewController.swift
//  agingpeople
//
//  Created by Nishant Patel on 3/14/17.
//  Copyright © 2017 Nishant Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let people = ["Nishant", "Anu", "Arpit", "Marcus", "Sam", "Parth","Himal"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath)
        cell.textLabel?.text = self.people[indexPath.row]
        
        let age = arc4random_uniform(90) + 5
        cell.detailTextLabel?.text = "\(age) years old"
        return cell
    }
}
