//
//  TeaTableViewController.swift
//  BubbleTea
//
//  Created by Olivia Crepin on 23/02/2021.
//  Copyright © 2021 Olivia Crepin. All rights reserved.
//

import UIKit

class TeaTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var teaTableView: UITableView!
    
    var teas: [Tea]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
		self.view.backgroundColor = UIColor (red: 0.8784, green: 0.9882, blue: 0.9608, alpha: 1.0)
        
		let t1 = Tea(name:"Peach BubbleTea", imageName:"T1", desc:["Ingredients :","1 Green Tea Bag", "1/4 Maple Syrup", "2 Peache, pitted and peeled", "1/2 Cup of Ice", "1/2 Cup of Black Tapioca Pearls"], color: UIColor (red: 1, green: 0.9686, blue: 0.8863, alpha: 1.0))
        let t2 = Tea(name:"Apple BubbleTea", imageName:"t2", desc:["Ingredients :","1 Green Tea Bag", "2 Tablespoons Green Apple Syrup", "3 Teaspoons Fructose", "1/2 Cup of Ice", "1/2 Cup of Black Tapioca Pearls"], color: UIColor(red: 0.9686, green: 1, blue: 0.949, alpha: 1.0))
        let t3 = Tea(name:"Strawberry BubbleTea", imageName:"T3", desc:["Ingredients :","1 Green Tea Bag", "2 Tablespoons simple Syrup", "4 Cups of Strawberry Milk", "1/2 Cup of Ice", "1/2 Cup of Black Tapioca Pearls"], color: UIColor(red: 0.98, green: 0.93, blue: 0.95, alpha: 1.00))
        
        teas = [t1, t2, t3]
        
		teaTableView.delegate = self
		teaTableView.dataSource = self
        
    }
    
    //MARK: - UITableViewDelegate, UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teas?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
        let cell = teaTableView.dequeueReusableCell(withIdentifier: "teaCell", for: indexPath) as! TeaTableViewCell
        cell.teaNameLabel.text = teas![indexPath.row].name
        cell.teaImageView.image = UIImage(named: teas![indexPath.row].imageName)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		if let selectedTea = teas?[indexPath.row] {
			pushViewController(selectedTea)
			teaTableView.deselectRow(at: indexPath, animated: true)
		}
    }
    
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return UITableView.automaticDimension
	}
	
    func pushViewController(_ tea: Tea) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
		let teaViewController = storyboard.instantiateViewController(withIdentifier: "teaViewController") as! TeaViewController
		teaViewController.tea = tea
        self.navigationController?.pushViewController(teaViewController, animated: true)
    }
    
    
    
}
