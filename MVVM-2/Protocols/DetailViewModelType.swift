//
//  DetailViewModelType.swift
//  MVVM-2
//
//  Created by Олеся Егорова on 22.06.2021.
//

import Foundation

protocol DetailViewModelType {
    var description: String { get }
    var age: Box<String?> { get }
}
