//
//  ViewModel.swift
//  MVVM-2
//
//  Created by Олеся Егорова on 21.06.2021.
//

import Foundation

class ViewModel: TableViewModelType {
   
    var profiles = [Profile(name: "John", secondName: "Smith", age: 33),
                    Profile(name: "Piter", secondName: "Parker", age: 21),
                    Profile(name: "Capitan", secondName: "America", age: 35)]
    
    var numberOfRows: Int {
        return profiles.count
    }
}
