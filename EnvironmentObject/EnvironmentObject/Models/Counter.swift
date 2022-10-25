//
//  Counter.swift
//  EnvironmentObject
//
//  Created by Ilona Sellenberkova on 25/10/2022.
//

import Foundation
import Combine

class Counter: ObservableObject {
    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
    
    @Published var name: String
    @Published var number: Int
}
