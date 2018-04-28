//
//  PlaceListTableViewDelegate.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 06.04.2018.
//

import UIKit

class PlaceListTableViewDelegate: NSObject, UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        (tableView as! PlaceListTableView).viewDelegate?.didSelectItemAtIndex(indexPath: indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200;
    }
}
