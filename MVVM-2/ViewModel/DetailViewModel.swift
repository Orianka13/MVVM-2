//
//  DetailViewModel.swift
//  MVVM-2
//
//  Created by Олеся Егорова on 22.06.2021.
//

import Foundation

class DetailViewModel: DetailViewModelType {
    
    private var profile: Profile
    var description: String {
        return String("\(profile.name) \(profile.secondName) is \(profile.age) old")
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
