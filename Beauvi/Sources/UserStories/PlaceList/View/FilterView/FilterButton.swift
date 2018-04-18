//
//  FilterButton.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 09.04.2018.
//

import UIKit

class FilterButton: UIButton {
    
    let filterImageView = UIImageView()
    let filterLabel = UILabel()

    init(image: UIImage, label: String, filter: String, action: Selector) {
        super.init(frame: CGRect.zero)
        addSubview(filterImageView)
        filterImageView.image = image
        filterImageView.autoPinEdge(toSuperviewEdge: .left)
        filterImageView.autoPinEdge(toSuperviewEdge: .top)
        filterImageView.autoPinEdge(toSuperviewEdge: .right)
        filterImageView.contentMode = .scaleAspectFit
        
        addSubview(filterLabel)
        filterLabel.autoPinEdge(toSuperviewEdge: .left)
        filterLabel.autoPinEdge(toSuperviewEdge: .bottom)
        filterLabel.autoPinEdge(toSuperviewEdge: .right)
        filterLabel.autoPinEdge(.top, to: .bottom, of: filterImageView, withOffset: 8)
        filterLabel.text = label
        filterLabel.textAlignment = .center
        addTarget(self.superview, action: action, for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
