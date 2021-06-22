//
//  Box.swift
//  MVVM-2
//
//  Created by Олеся Егорова on 22.06.2021.
//

import Foundation

class Box<T> {
    typealias Listener = (T) -> ()
    var listener: Listener?
    
    var value: T {
        didSet {
            listener?(value) //при изменении значения передаем это значения
        }
    }
    
    //свяжем свойство с наблюдателем
    func bind(listener: @escaping Listener) {
        self.listener = listener //передаем наблюдател в это свойство
        listener(value) //передали новое значение
    }
    
    init(_ value: T) {
        self.value = value
    }
}
