//
//  ViewController.swift
//  rainbowRoad
//
//  Created by Maria Teresa Rojo on 1/12/18.
//  Copyright © 2018 Maria Rojo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let colors = [
        UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green,
        UIColor.blue, UIColor.purple
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 120
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
//        cell.backgroundColor = .yellow
        return cell
    }
}
