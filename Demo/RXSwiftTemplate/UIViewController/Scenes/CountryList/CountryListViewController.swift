//
//  CountryListViewController.swift
//  RXSwiftTemplate
//
//  Created by Alessandro Garcez on 28/07/18.
//  Copyright (c) 2018 Alessandro Garcez. All rights reserved.
//

import UIKit
import RxSwift

private var cellIdentifier: String { return "UITableViewCell" }

class CountryListViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    var interactor: CountryListInteractor?
    private let bag = DisposeBag()
    
    private var tableData: [TableRow<Country, String>] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        bind()
    }

    private func setup(){
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    private func bind() {
        
        guard let _interactor = interactor else { return }
        
        bag << _interactor.titleObservable.subscribe(onNext: { [weak self] data in
            self?.updateTitle(data)
        })
        
        bag << _interactor.tableDataObservable.subscribe(onNext: { [weak self] data in
            self?.updateUI(data)
        })
    
    }
    
    private func updateUI(_ data: [TableRow<Country, String>]) {
        tableData = data
        DispatchQueue.main.async { self.tableView.reloadData() }
    }

    private func updateTitle(_ title: String) {
        DispatchQueue.main.async { self.title = title }
    }
    
}

extension CountryListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) else {
            return UITableViewCell()
        }
        cell.selectionStyle = .none
        
        switch tableData[indexPath.row] {
        case .success(let country):
            cell.selectionStyle = .none
            cell.textLabel?.text = country.name
            cell.imageView?.image = UIImage(named: country.image)
        case .failure(let error):
            cell.textLabel?.text = error
        case .placeholder(let message):
            cell.textLabel?.text = message
        }
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        interactor?.rowSelected(index: indexPath.row)
    }
    
}
