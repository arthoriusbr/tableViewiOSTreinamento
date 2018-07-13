//
//  ViewController.swift
//  ProjetoTableView
//
//  Created by administrador on 12/07/2018.
//  Copyright © 2018 administrador. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(cellType: AppleAndroidTableViewCell.self)
//        self.tableView.register(UINib(nibName: "AppleAndroidTableViewCell", bundle: nil), forCellReuseIdentifier: "cellAppleAndroid")
    }
}
//MARK: - TableView
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 //FIXME: Trocar para 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 230
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath) as AppleAndroidTableViewCell
        
        cell.backgroundColor = UIColor.brown
        
        cell.rowMultiplier.text = "< \(indexPath.row) x"
        
        return cell

    }

}

