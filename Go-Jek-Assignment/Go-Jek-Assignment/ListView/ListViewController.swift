//
//  ListViewController.swift
//  Go-Jek-Assignment
//
//  Created by Rikky Chavhan on 21/02/20.
//  Copyright © 2020 L&T. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    private let viewModel: ListViewModel! = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension ListViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSections()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfContacts(for: section)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath) as! ListViewTableViewCell
        return cell
    }
}
