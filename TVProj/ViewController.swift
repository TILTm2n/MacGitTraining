//
//  ViewController.swift
//  TVProj
//
//  Created by Eugene on 18.11.2021.
//

import UIKit

class ViewController: UIViewController {

    //var myTableView = UITableView()
    //let identifier = "MyCell"
    //var array = ["1","2","3","4","5"]
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    let identifier = "MyCell"
    
    var array = ["1","2","3","4","5"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //createTable()
        
    }
    
    /*
    func createTable(){
        self.myTableView = UITableView(frame: view.bounds, style: .plain)
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
        myTableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        view.addSubview(myTableView)
    }
    
    //UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        let number = array[indexPath.row]
        
        cell.textLabel?.text = number
        
        return cell
    }
    
    
    //UITableViewDelegate
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        print("Accesory path = ", indexPath)
        
        let ounerCell = tableView.cellForRow(at: indexPath)
        
        print("Cell title =", ounerCell?.textLabel?.text ?? "nil")
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let number = array[indexPath.row]
        print(number)
    }
     */

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

