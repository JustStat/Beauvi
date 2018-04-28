//
//  PlaceListBVMPlaceListViewController.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 06/04/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit
import PureLayout

class PlaceListViewController: UIViewController, PlaceListViewInput, UISearchBarDelegate, PlaceListTableViewUIDelegate {

    var output: PlaceListViewOutput!
    
    var tableView : PlaceListTableView!
    var filterBar: UIStackView!
    var searchBarView: UIView!
    
    let tableViewDataSource = PlaceListTableViewDataSource()
    let tableViewDelegate = PlaceListTableViewDelegate()
    
    

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        PlaceListModuleConfigurator().configureModuleForViewInput(viewInput: self);
        output.viewIsReady()
    }
    
    // MARK: Setup UI
    
    func addSearchBar() {
        searchBarView = UIView()
        self.view.addSubview(searchBarView)
        searchBarView.backgroundColor = .beauviGrey
        searchBarView.autoPinEdge(toSuperviewEdge: .top)
        searchBarView.autoPinEdge(toSuperviewEdge: .left)
        searchBarView.autoPinEdge(toSuperviewEdge: .right)
        searchBarView.autoSetDimension(.height, toSize: 100)
        
        let logoView = UIImageView(image: UIImage(named: "logo"))
        logoView.contentMode = .right
        searchBarView.addSubview(logoView)
        logoView.autoPinEdge(toSuperviewEdge: .top, withInset: 20)
        logoView.autoPinEdge(toSuperviewEdge: .right)
        logoView.autoPinEdge(toSuperviewEdge: .left)
        logoView.autoSetDimension(.height, toSize: 37)
        
        let searchBar = UISearchBar()
        searchBar.delegate = self
        searchBarView.addSubview(searchBar)
        searchBar.autoPinEdge(toSuperviewEdge: .right)
        searchBar.autoPinEdge(toSuperviewEdge: .left)
        searchBar.autoPinEdge(toSuperviewEdge: .bottom)
        searchBar.autoPinEdge(.top, to: .bottom, of: logoView)
        searchBar.autoSetDimension(.height, toSize: 43)
        searchBar.barTintColor = UIColor(red:0.27, green:0.27, blue:0.27, alpha:1.0)
        searchBar.placeholder = "Search"
    }
    
    func addFilterBar() {
        filterBar = UIStackView()
        filterBar.axis = .horizontal
        filterBar.alignment = .center
        filterBar.distribution = .fillEqually
        filterBar.spacing = 9
        view.addSubview(filterBar)
        filterBar.autoPinEdge(toSuperviewEdge: .right, withInset: 15)
        filterBar.autoPinEdge(toSuperviewEdge: .left, withInset: 15)
        filterBar.autoPinEdge(.top, to: .bottom, of: searchBarView)
        filterBar.autoMatch(.height, to: .width, of: view, withMultiplier: 0.27)
        
        for i in 1...6 {
            let button: UIButton = addFilterButton(filterIcon: UIImage(named: "filter0\(i)"), filterLabel: "Test", filterType: "Test", action: Selector(("filterButtonTap")))
            filterBar.addArrangedSubview(button)
        }
    }
    
    func addFilterButton(filterIcon: UIImage!, filterLabel: String, filterType: String,  action: Selector) -> UIButton {
        let button = FilterButton(image: filterIcon, label: filterLabel, filter: filterType, action: action)
        
        return button
    }
    
    func filterButtonTap() {
        
    }
    
    func addTableView() {
        tableView = PlaceListTableView()
        view.addSubview(tableView)
        
        tableView.autoPinEdge(toSuperviewEdge: .right)
        tableView.autoPinEdge(toSuperviewEdge: .left)
        tableView.autoPinEdge(toSuperviewEdge: .bottom)
        tableView.autoPinEdge(.top, to: .bottom, of: filterBar)
        tableView.dataSource = tableViewDataSource
        tableView.delegate = tableViewDelegate
        tableView.viewDelegate = self
    }
    
    


    // MARK: PlaceListViewInput
    func setupInitialState() {
        view.backgroundColor = UIColor.white
        addSearchBar()
        addFilterBar()
        addTableView()
    }
    
    func updateTableWithPlaces(places: [Place]) {
        tableViewDataSource.places = places
        tableView.reloadData()
    }
    
    // MARK: PlaceListTableViewUIDelegate
    func didSelectItemAtIndex(indexPath: IndexPath) {
        let place = (tableView.dataSource as! PlaceListTableViewDataSource).places[indexPath.row]
        output.didSelectItemWithPlace(place: place)
    }
}
