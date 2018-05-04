//
//  TableViewSource.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 06.04.2018.
//

import UIKit

class PlaceListTableViewDataSource: NSObject, UITableViewDataSource {
    
    var places : [Place]!

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard places != nil else {
            return 0
        }
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PlaceListTableViewCell.reuseIdentifier!, for: indexPath)
        cell.selectionStyle = .none
        (cell as! PlaceListTableViewCell).setForPlace(place: places[indexPath.row])
        return cell
    }
    
}
