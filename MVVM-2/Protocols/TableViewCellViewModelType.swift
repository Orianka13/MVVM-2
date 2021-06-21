//
//  TableViewCellViewModelType.swift
//  MVVM-2
//
//  Created by Олеся Егорова on 21.06.2021.
//

import Foundation

protocol TableViewCellViewModelType: AnyObject {
    var fullName: String { get }
    var age: String { get }
}
