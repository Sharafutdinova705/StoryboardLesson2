//
//  ViewController.swift
//  NewProject
//
//  Created by Гузель on 17.09.2018.
//  Copyright © 2018 Гузель. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var profilImage: UIImageView!
    @IBOutlet weak var cityYearsOld: UILabel!
    @IBOutlet weak var info: UIButton!
    //user's photos
    @IBOutlet weak var photo1: UIImageView!
    @IBOutlet weak var photo2: UIImageView!
    @IBOutlet weak var photo3: UIImageView!
    @IBOutlet weak var photo4: UIImageView!
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var scroll: UIScrollView!
    
    
    
    var userNames:[String] = ["Amelia Dammer", "Alina Rathner", "Elis Mark", "Marie Zoline"]
    var currentStatus:[String] = ["Online •", "Online(phone) •", "Offline", "last seen 40 minutes ago"]
    var photos:[UIImage] = [#imageLiteral(resourceName: "girl1"), #imageLiteral(resourceName: "girl3"), #imageLiteral(resourceName: "girl4"), #imageLiteral(resourceName: "girl5")]
    var photos2:[UIImage] = [#imageLiteral(resourceName: "girl1"), #imageLiteral(resourceName: "girl3"), #imageLiteral(resourceName: "girl4"), #imageLiteral(resourceName: "girl5"), #imageLiteral(resourceName: "img"), #imageLiteral(resourceName: "iii")]
    var yearsOldCity:[String] = ["18 years old, NY", "23 years old, Boston", "19 years old, Moskow", "19 years old, Kazan"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profilImage.clipsToBounds = true
        ScrollView.contentSize.height = 1600
        scroll.contentSize.width = 720
        random()
        profilImage.layer.cornerRadius = profilImage.frame.size.width / 2
        profilImage.clipsToBounds = true
        //profilImage.layer.cornerRadius = 20
        //profilImage.clipsToBounds = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    func random() {
        profilImage.image = photos[Int(arc4random_uniform(UInt32(photos.count)))]
        
        name.text = userNames[Int(arc4random_uniform(UInt32(userNames.count)))]
        status.text = currentStatus[Int(arc4random_uniform(UInt32(currentStatus.count)))]
        cityYearsOld.text =  yearsOldCity[Int(arc4random_uniform(UInt32(yearsOldCity.count)))]
        photo1.image = photos2[Int(arc4random_uniform(UInt32(photos2.count)))]
        photo2.image = photos2[Int(arc4random_uniform(UInt32(photos2.count)))]
        photo3.image = photos2[Int(arc4random_uniform(UInt32(photos2.count)))]
        photo4.image = photos2[Int(arc4random_uniform(UInt32(photos2.count)))]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

