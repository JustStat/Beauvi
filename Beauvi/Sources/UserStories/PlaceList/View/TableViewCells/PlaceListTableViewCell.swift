//
//  PlaceListTableViewCell.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 06.04.2018.
//

import UIKit

class PlaceListTableViewCell: UITableViewCell {
    
    var placeImageView : UIImageView!;
    var placeNameLabel : UILabel!;
    
    
    class var reuseIdentifier: String? {
        return "PlaceListCell"
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureView() {
        
        let cellView = UIView()
        cellView.layer.cornerRadius = 10
        addSubview(cellView)
        
        cellView.autoPinEdgesToSuperviewEdges(with: UIEdgeInsetsMake(10, 20, 10, 20))
        
        placeImageView = UIImageView()
        cellView.addSubview(placeImageView)
        
        placeImageView.autoPinEdge(toSuperviewEdge: .left)
        placeImageView.autoPinEdge(toSuperviewEdge: .top)
        placeImageView.autoPinEdge(toSuperviewEdge: .right)
        placeImageView.autoAlignAxis(toSuperviewAxis: .vertical)
        placeImageView.autoMatch(.width, to: .width, of: cellView, withOffset: 0)
        placeImageView.autoSetDimension(.height, toSize: 140)
        placeImageView.backgroundColor = UIColor.green
        placeImageView.layer.cornerRadius = 10
        
        let infoView = UIView()
        cellView.addSubview(infoView)
        
        infoView.backgroundColor = UIColor.red
        infoView.autoPinEdge(toSuperviewEdge: .left)
        infoView.autoPinEdge(toSuperviewEdge: .bottom)
        infoView.autoPinEdge(toSuperviewEdge: .right)
        infoView.autoPinEdge(.top, to: .bottom, of: placeImageView, withOffset: -12)
        
        cellView.bringSubview(toFront: placeImageView)
        
        
    }

}
