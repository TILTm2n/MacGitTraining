//
//  ViewController.swift
//  TVProj
//
//  Created by Eugene on 18.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private var currentIndex = 1
    var numberOfRows = 1
    
    
    @IBOutlet weak var CameraLine: UIView!
    @IBOutlet weak var DoorLine: UIView!
    
    @IBAction func GoToYellow(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "YellowViewController")
        navigationController?.pushViewController(newVC!, animated: true)
    }
    
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

//extension ViewController: UITableViewDataSource, UITableViewDelegate{
//
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return numberOfRows
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyCustomTableViewCell
//
//        //mask for rounding
//        let path1 = UIBezierPath(roundedRect:cell.myMainImage.bounds,
//                                byRoundingCorners:[.topRight, .topLeft],
//                                cornerRadii: CGSize(width: 20, height:  20))
//        let path2 = UIBezierPath(roundedRect:cell.titleIconView.bounds,
//                                 byRoundingCorners:[.bottomLeft, .bottomRight],
//                                cornerRadii: CGSize(width: 20, height:  20))
//
//
//        let maskLayer1 = CAShapeLayer()
//        let maskLayer2 = CAShapeLayer()
//
//        maskLayer1.path = path1.cgPath
//        maskLayer2.path = path2.cgPath
//
//        cell.myMainImage.layer.mask = maskLayer1
//        cell.titleIconView.layer.mask = maskLayer2
//
//        cell.contentBlock.layer.cornerRadius = 20
//
//        return cell
//        return nil
//    }
//
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            tableView.deleteRows(at: [indexPath], with: .fade)
//            self.numberOfRows -= 1
//        }
//
//        tableView.reloadData()
//    }
//
//
//}

