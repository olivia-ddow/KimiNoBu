//
//  TeaViewController.swift
//  BubbleTea
//
//  Created by Olivia Crepin on 03/03/2021.
//  Copyright © 2021 Olivia Crepin. All rights reserved.
//

import UIKit

class TeaViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    @IBOutlet weak var titreLabel: UILabel!
    @IBOutlet weak var imageTeaView: UIImageView!
    @IBOutlet weak var descTableView: UITableView!
    var teaColor: UIColor!
	var tea: Tea?
    var descTeaList: [String]?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
		titreLabel.text = tea?.name
        imageTeaView.image = UIImage(named: tea!.imageName)
        teaColor = tea?.color
        self.view.backgroundColor = teaColor
        
        let descTab = tea?.desc
        descTeaList = descTab
        
        descTableView.delegate = self
        descTableView.dataSource = self
        
        
        
    }
    
    
    
    //MARK: - Events Table View
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return descTeaList!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = descTableView.dequeueReusableCell(withIdentifier: "descCell", for: indexPath) as! TeaDescViewCell
        cell.descListLabel.text  = descTeaList![indexPath.row]
        return cell
    }
	
}
