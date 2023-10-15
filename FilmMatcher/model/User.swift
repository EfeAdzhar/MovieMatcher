//
//  User.swift
//  FilmMatcher
//
//  Created by Efe on 11.10.2023.
//

import Foundation

struct User {
    private var id : Int
    private var email : String
    private var name : String
    private var selectedMovies : SelectedMovies
}

extension User {
    public var userId: Int {
        get {
            return id
        }
        set {
            id = newValue
        }
    }
    
    public var userEmail: String {
        get {
            return email
        }
        set {
            email = newValue
        }
    }
    
    public var userName: String {
        get {
            return name
        }
        set {
            name = newValue
        }
    }
    
    public var selected : SelectedMovies {
        get {
            return selectedMovies
        }
    }
}
