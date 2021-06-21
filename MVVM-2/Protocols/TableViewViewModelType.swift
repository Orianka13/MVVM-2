//
//  TableViewModelType.swift
//  MVVM-2
//
//  Created by Олеся Егорова on 21.06.2021.
//

import Foundation

protocol TableViewViewModelType {
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?
}
