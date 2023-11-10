//
//  NextViewController.swift
//  5주차 위클리미션
//
//  Created by 제민우 on 11/9/23.
//

import UIKit

class NextViewController: UIViewController {

    private let searchController = UISearchController()
    
    private var musicTableView = UITableView()
    
    var musicArrays: [MusicModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

// MARK: Configure Initial Settings

extension NextViewController {
    
    private func configureInitialSetting() {
        musicTableView.delegate = self
        musicTableView.dataSource = self
    }
}

// MARK: Implement TableView Delegate
extension NextViewController: UITableViewDelegate {
    
}

// MARK: Implement TableView Delegate

extension NextViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
