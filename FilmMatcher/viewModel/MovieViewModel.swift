//
//  MoviesViewController.swift
//  FilmMatcher
//
//  Created by Efe on 12.10.2023.
//

import UIKit

class MovieViewModel {
    private var movie : Movie
    
    init(movie : Movie) {
        self.movie = movie
    }
    
    public func createMovie(movie : Movie) {
        self.movie = movie
    }
    
    public func getMovie() -> Movie {
        return self.movie
    }
}
