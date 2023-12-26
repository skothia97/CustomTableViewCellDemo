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
    var arrayImg = ["srikant","srikant2","srikant"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblView.register(UINib(nibName: "DataTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        tblView.delegate = self
    }
}


extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(arrayName.count)
        return arrayName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! DataTableViewCell
        cell.lblData.text = arrayName[indexPath.row]
        cell.img.image = UIImage(named: arrayImg[indexPath.row])
        //cell.img.image = UIImage(named: "srikant")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 99.0
    }
    
}




