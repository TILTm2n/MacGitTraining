//
//  YellowViewController.swift
//  TVProj
//
//  Created by Eugene on 29.11.2021.
//

import UIKit

class YellowViewController: UIViewController {

    @IBAction func GoToGreen(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "GreenViewController") as! GreenViewController
        navigationController?.pushViewController(newVC, animated: true)
        
        
    }
    
    
    @IBOutlet weak var greenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        greenButton.addBorder(side: .Bottom, color: UIColor.red, width: 2.0)
        greenButton.addBorder(side: .Left, color: UIColor.blue, width: 2.0)
        
        navigationController?.hidesBarsOnSwipe = true
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
