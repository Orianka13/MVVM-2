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
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel?.age.bind(listener: { [unowned self] in
            guard let string = $0 else { return }//$0 это значение Т
            self.textLabel.text = string
        })
        
        delay(delay: 5) { [unowned self] in //через 5 сек после загрузки value изменит значение
            self.viewModel?.age.value = "some new value"
        }
    }
    
    //создадим метод который позволит перед исполнением кода(closure) осуществить отсрочку
    func delay(delay: Double, closure: @escaping () -> ()){
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + delay) {
            closure()
        }
    }
}
