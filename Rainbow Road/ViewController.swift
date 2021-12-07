//
//  ViewController.swift
//  Rainbow Road
//
//  Created by administrator on 07/12/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var colors:[UIColor]=[.red,
                          .green,
                          .yellow,
                          .systemTeal,
                          .blue,
                          .purple]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
}

extension ViewController: UITableViewDataSource , UITableViewDelegate{
    //Datasource
    // How many cells are we going to need?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return an integer that indicates how many rows (cells) to draw
        return colors.count
    }
    
    // How should I create each cell?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            
            return 120
        }
    
}
