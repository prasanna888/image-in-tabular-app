# image-in-tabular-app
/
//  ViewController.swift
//  tableviewex5
//
//  Created by R.M.K CET on 01/03/17.
//  Copyright © 2017 R.M.K CET. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate , UITableViewDataSource {
    

    
    @IBOutlet var tableview: UITableView!
    let studentList = ["arun","sudha","sandy","hari","sathish"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = studentList[indexPath.row]
        cell?.imageView?.image = #imageLiteral(resourceName: "pics") //image name
        cell?.detailTextLabel?.text = "roommates"
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.00
    }
}

