//
//  ViewController.swift
//  BubbleTea
//
//  Created by Olivia Crepin on 11/02/2021.
//  Copyright © 2021 Olivia Crepin. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var titreLabel: UILabel!
    
    @IBOutlet weak var imageTea: UIImageView!
    @IBOutlet weak var imageMap: UIImageView!
    
    @IBAction func showTableView(_ sender:UIButton){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let teaTableViewController = storyboard.instantiateViewController(withIdentifier: "teaTableViewController") as! TeaTableViewController
        self.navigationController?.pushViewController(teaTableViewController, animated: true)
    }
    
    @IBAction func showMapView(_ sender:UIButton){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mapViewController = storyboard.instantiateViewController(withIdentifier: "mapViewController") as! MapViewController
        self.navigationController?.pushViewController(mapViewController, animated: true)
    }
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titreLabel.text = "Kimi No Bu"
        imageTea.alpha = 0.75
        imageMap.alpha = 0.75
        self.view.backgroundColor = UIColor (red: 0.8784, green: 0.9882, blue: 0.9608, alpha: 1.0)

    }
    

}

