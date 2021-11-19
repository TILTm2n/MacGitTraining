//
//  ViewController.swift
//  TVProj
//
//  Created by Eugene on 18.11.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myTableView: UITableView!
    
    let identifier = "MyCell"
    
    var array = ["1","2","3","4","5"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}

//commit!

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        let number = array[indexPath.row]
        
        cell.textLabel?.text = number
        
        return cell
        
    }
}

