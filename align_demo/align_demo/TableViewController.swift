//
//  TableViewController.swift
//  align_demo
//
//  Created by Allen Spicer on 8/1/18.
//  Copyright © 2018 surfbreak. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var tableData = [Animal]()

    override func viewDidLoad() {
        super.viewDidLoad()

        let dataRequest = DataRequest.init()
        guard let data = dataRequest.dataObject else {return}
        tableData = data
        print(tableData)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    
    
}

extension TableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = ViewController()
//        let VC1 = self.storyboard!.instantiateViewControllerWithIdentifier("MyViewController") as! ViewController
        self.navigationController?.pushViewController(viewController, animated: true)
        
        
//        navigationController?.present(viewController, animated: true, completion: {})
    }
}



extension TableViewController{

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tableData.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let animal = tableData[indexPath.row]
        cell.textLabel?.text = animal.type
        cell.detailTextLabel?.text = animal.sizeType

        return cell
    }

}
