//
//  CarsViewController.swift
//  TableViewPractice
//
//  Created by Elexie Munyeneh on 11/9/18.
//  Copyright © 2018 Elexie Munyeneh. All rights reserved.
//

import Foundation
import UIKit
private let cars = CarsAPI.getCars()
let carsTableView = UITableView()

class CarsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    override func viewDidLoad() {
        
        func setUpNavigation() {
            self.navigationItem.title = "Cars"
            self.navigationController?.navigationBar.titleTextAttributes =
                [NSAttributedStringKey.foregroundColor: UIColor.red,
                 NSAttributedStringKey.font: UIFont(name: "mplus-1c-regular", size: 21)!]
            
        }
        
        view.backgroundColor = .red // note : place .backgroundColor before super.viewDidLoad()
        
        super.viewDidLoad()
        
        carsTableView.dataSource = self
        carsTableView.delegate = self
        carsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "carCell")
        
        view.addSubview(carsTableView)

        carsTableView.translatesAutoresizingMaskIntoConstraints = false
        carsTableView.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor).isActive = true
        carsTableView.leadingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        carsTableView.trailingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        carsTableView.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return cars.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "carCell", for: indexPath)
        cell.textLabel?.text = cars[indexPath.row].make
        return cell
    }

}
