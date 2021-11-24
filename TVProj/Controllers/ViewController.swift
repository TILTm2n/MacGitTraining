//
//  ViewController.swift
//  TVProj
//
//  Created by Eugene on 18.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private var currentIndex = 1
    
    @IBOutlet weak var CustomTableView: UITableView!
    @IBOutlet weak var CameraLine: UIView!
    @IBOutlet weak var DoorLine: UIView!
    
    
    @IBAction func CameraButton(_ sender: Any) {
        if currentIndex != 1{
            currentIndex = 1
            changeCurrentWindow()
        }
    }
    
    @IBAction func DoorButton(_ sender: Any) {
        if currentIndex != 2{
            currentIndex = 2
            changeCurrentWindow()
        }
    }
    
    func changeCurrentWindow(){
        if currentIndex == 1{
            CameraLine.isHidden = false
            DoorLine.isHidden = true
        }
        else{
            CameraLine.isHidden = true
            DoorLine.isHidden = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeCurrentWindow()
        
        
    }
    
    
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyCustomTableViewCell
        
        
        cell.contentBlock.layer.cornerRadius = 20
        
        
        return cell
    }
    

    
}

