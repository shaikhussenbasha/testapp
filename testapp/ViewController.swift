//
//  ViewController.swift
//  testapp
//
//  Created by Shaikhussen Basha on 08/02/22.
//

import UIKit
import GooglePlaces
class ViewController:UITableViewController {

    var arrayData = [Property]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
           let data =   NetworkManager.shared.fetchData()
        tableView.register(TableViewCell1.nib1, forCellReuseIdentifier: TableViewCell1.identifier1)
        arrayData = data
    }
    
    
    
    
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
        
        print("Some")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell1.identifier1, for: indexPath) as! TableViewCell1
        
        let celldata = arrayData[indexPath.row]
        
        
        if let url = URL(string: celldata.mainImage)
        {
            do {
                     let urldata =    try Data(contentsOf: url)
                cell.image1.image = UIImage(data: urldata)
            } catch let err {
                print(err)
            }
           
        }
        
        cell.label2.text = celldata.place
        
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200000
    }
}

