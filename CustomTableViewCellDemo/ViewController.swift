//
//  ViewController.swift
//  CustomTableViewCellDemo
//
//  Created by Srikanta Kumar Kothia on 26/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tblView: UITableView!
    
    var arrayName = ["A","B","C"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblView.register(UINib(nibName: "DataTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
}


extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(arrayName.count)
        return arrayName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! DataTableViewCell
        cell.lblData.text = arrayName[indexPath.row]
        return cell
    }
}




