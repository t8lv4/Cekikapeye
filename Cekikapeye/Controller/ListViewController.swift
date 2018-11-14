//
//  ListViewController.swift
//  Cekikapeye
//
//  Created by Ambroise COLLON on 21/05/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    var spendings = Spending.all

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        spendings = Spending.all
        tableView.reloadData()
    }
}

extension ListViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return spendings.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SpendingCell", for: indexPath)

        let spending = spendings[indexPath.row]
        cell.textLabel?.text = spending.content
        cell.detailTextLabel?.text = "\(spending.amount) \(SettingsService.currency)"

        return cell
    }
}
