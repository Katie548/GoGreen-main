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
    
    
    @IBAction func cdURL(_ sender: UIButton) {
        UIApplication.shared.openURL(URL(string: "https://christydawn.com/collections/all?utm_medium=cpc&utm_source=cpc-branded&utm_campaign=BrandedUS&gclid=Cj0KCQjwlemWBhDUARIsAFp1rLVNBQ_EjmutPw2TfXvg7l_VkGR_zTyRUALDmjtQXQj-Ctg1IdUV_o0aAmBXEALw_wcB&gclsrc=aw.ds")!)
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
