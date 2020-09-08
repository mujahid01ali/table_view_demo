//
//  ViewController.swift
//  tilesDemo
//
//  Created by Mujahid on 08/09/20.
//  Copyright © 2020 Mujahid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setuptable()
    }
    func setuptable() {
        tableView.register(UINib(nibName: "TableViewCell2", bundle: nil), forCellReuseIdentifier: "TableViewCell2")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
        
    }

}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell2", for: indexPath) as! TableViewCell2
    
    
        
        var length = indexPath.row >= 4 ? indexPath.row - 3 : 4 - indexPath.row
        if length == 0{
            length = 1
        }
       cell.numRow = length


        return cell
    }
}
