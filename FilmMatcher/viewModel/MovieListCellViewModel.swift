//
//  MovieListCellViewModel.swift
//  FilmMatcher
//
//  Created by Efe on 15.10.2023.
//

import Foundation

class MovieListCellViewModel : MovieListTableViewCellViewModelType {
    private var movie : Movie
    
    init(movie : Movie) {
        self.movie = movie
    }
    
    var movieNameLabelText: String {
        return movie.name
    }
    var ratingLabelText: String {
        return String(describing: movie.rating)
    }
    var genrasLabelText: String {
        return GenrasDto.convertGenras(movie.genres)
    }
}
