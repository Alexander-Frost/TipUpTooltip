//
//  ToolTipView.swift
//  TipUpTooltip
//
//  Created by Hector on 10/19/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit

class ToolTipView: UIViewController {

    @IBOutlet var tableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.delegate = self
    }
}



extension ToolTipView: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        return  cell
    }
}
