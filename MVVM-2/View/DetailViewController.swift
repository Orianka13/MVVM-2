//
//  DetailViewController.swift
//  MVVM-2
//
//  Created by Олеся Егорова on 22.06.2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    var viewModel: DetailViewModelType?
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        self.textLabel.text = viewModel.description
    }

}
