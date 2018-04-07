//
//  PlaceListTableViewCell.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 06.04.2018.
//

import UIKit
import SDWebImage

class PlaceListTableViewCell: UITableViewCell {
    
    var placeImageView : UIImageView!
    var placeNameLabel : UILabel!
    var locationLabel : UILabel!
    var distanceLabel : UILabel!
    
    
    
    
    
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
        
        cellView.autoPinEdgesToSuperviewEdges(with: UIEdgeInsetsMake(10, 20, 0, 20))
        
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
        placeImageView.clipsToBounds = true
        
        let infoView = UIView()
        cellView.addSubview(infoView)
        
        infoView.backgroundColor = .beauviRed
        infoView.autoPinEdge(toSuperviewEdge: .left)
        infoView.autoPinEdge(toSuperviewEdge: .right)
        infoView.autoSetDimension(.height, toSize: 43)
        infoView.autoPinEdge(.top, to: .bottom, of: placeImageView, withOffset: -12)
        
        placeNameLabel = UILabel()
        infoView.addSubview(placeNameLabel)
        
        placeNameLabel.autoPinEdgesToSuperviewEdges(with: UIEdgeInsetsMake(19, 17, 9, 16))
        placeNameLabel.textColor = .white
        
        cellView.bringSubview(toFront: placeImageView)
        
        let location = UIView()
        cellView.addSubview(location)
        location.autoPinEdge(toSuperviewEdge: .left)
        location.autoPinEdge(toSuperviewEdge: .right)
        location.autoPinEdge(toSuperviewEdge: .bottom)
        location.autoPinEdge(.top, to: .bottom, of: infoView)
        
        let locationImage = UIImageView()
        location.addSubview(locationImage)
        locationImage.image = UIImage(named: "marker")
        locationImage.autoPinEdge(toSuperviewEdge: .left, withInset: 7)
        locationImage.autoPinEdge(toSuperviewEdge: .top, withInset: 4)
        locationImage.autoSetDimensions(to: CGSize(width: 13, height: 13))
        
        distanceLabel = UILabel()
        location.addSubview(distanceLabel)
        distanceLabel.autoPinEdge(toSuperviewEdge: .right, withInset: 10)
        distanceLabel.autoPinEdge(toSuperviewEdge: .top, withInset: 6)
        distanceLabel.autoPinEdge(toSuperviewEdge: .bottom, withInset: 3)
        distanceLabel.autoSetDimension(.width, toSize: 33)
        distanceLabel.font = UIFont(name: "Arial-ItalicMT", size: 9)
        distanceLabel.text = "2,73 КМ"
        
        locationLabel = UILabel()
        location.addSubview(locationLabel)
        
        locationLabel.text = "Мыс Токаревского"
        locationLabel.autoPinEdge(.left, to: .right, of: locationImage, withOffset: 2)
        locationLabel.autoPinEdge(toSuperviewEdge: .top, withInset: 6)
        locationLabel.autoPinEdge(toSuperviewEdge: .bottom, withInset: 3)
        locationLabel.autoPinEdge(.right, to: .left, of: distanceLabel, withOffset: 20)
        locationLabel.font = UIFont(name: "ArialMT", size: 9)
        
        
        
        
        
    }
    
    func setForPlace(place: Place) {
        placeImageView.sd_setImage(with: URL(string: (place.mainPhotoUrl?.url)!), completed: nil)
        placeNameLabel.text = place.title!
    }

}
