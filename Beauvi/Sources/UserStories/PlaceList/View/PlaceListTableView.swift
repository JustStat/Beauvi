//
//  PlaceListTableView.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 06.04.2018.
//

import UIKit

class PlaceListTableView: UITableView {
    
    init() {
        super.init(frame:CGRect.zero, style: UITableViewStyle.plain)
        register(PlaceListTableViewCell.classForCoder(), forCellReuseIdentifier: PlaceListTableViewCell.reuseIdentifier!)
        self.separatorStyle = .none
        self.contentInset = UIEdgeInsetsMake(0, 0, 10, 0)
        self.showsVerticalScrollIndicator = false
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(frame: CGRect) {
        super.init(frame: frame, style: UITableViewStyle.plain)
    }
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
