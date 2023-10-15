//
//  CrudProtocol.swift
//  FilmMatcher
//
//  Created by Efe on 12.10.2023.
//

import Foundation

protocol CrudProtocol {
    associatedtype Entity
    func add(_ entity : Entity)
    func read(_ id : Int) -> Optional<Entity>
    func update(_ id: Int, _ newEntity: Entity)
    func delete(_ indexOf: Int)
}
