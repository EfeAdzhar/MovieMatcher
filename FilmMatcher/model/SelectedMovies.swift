//
//  SelectedMovies.swift
//  FilmMatcher
//
//  Created by Efe on 11.10.2023.
//

import Foundation

struct SelectedMovies {
    private var savedMovies : [Movie]
}

extension SelectedMovies {
    public var selectedMoviesList : [Movie] {
        get {
            return savedMovies
        }
        set {
            savedMovies.append(contentsOf: newValue)
        }
    }
}
