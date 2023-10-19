//
//  Box.swift
//  FilmMatcher
//
//  Created by Efe on 19.10.2023.
//

import Foundation
class Box<T> {
    typealias Listener = (T) -> ()
    var listener : Listener?
    
    var value : T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ value : T) {
        self.value = value
    }
    
    public func bind(listener : @escaping Listener) {
        self.listener = listener
        listener(value)
    }
}
