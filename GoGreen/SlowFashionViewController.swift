//
//  SlowFashionViewController.swift
//  GoGreen
//
//  Created by scholar on 7/19/22.
//

import UIKit
class SlowFashionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func imgURL(_ sender: UIButton) {
        UIApplication.shared.openURL(URL(string: "https://christydawn.com/")!)
    }
    
    
    @IBAction func whims(_ sender: UIButton) {
        UIApplication.shared.openURL(URL(string: "https://whimsyandrow.com/")!)
    }
    
    @IBAction func marine(_ sender: UIButton) {
        UIApplication.shared.openURL(URL(string: "https://www.marinelayer.com/")!)
    }
    
    
    
    @IBAction func ever(_ sender: UIButton) {
        UIApplication.shared.openURL(URL(string: "https://www.everlane.com/")!)
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
