//
//  SecondViewController.swift
//  NewProject
//
//  Created by Гузель on 22.09.2018.
//  Copyright © 2018 Гузель. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var scrollinfo: UIScrollView!
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var vklink: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var textFieldStatus: UITextField!
    
    
    var numbers:[String] = ["89274635768", "89274656868", "89274735789", "89274098765", "89274101010"]
    var vk:[String] = ["vk.com/catcat", "vk.com/lovecars", "vk.com/doc", "vk.com/white_cat"]
    
    override func viewDidLoad() {
        scrollinfo.contentSize.height = 1000
        super.viewDidLoad()
        randomize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    func randomize() {
    
        phoneNumber.text = numbers[Int(arc4random_uniform(UInt32(numbers.count)))]
        vklink.text = vk[Int(arc4random_uniform(UInt32(vk.count)))]
    
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
