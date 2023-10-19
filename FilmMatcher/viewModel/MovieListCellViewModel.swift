//
//  MovieListCellViewModel.swift
//  FilmMatcher
//
//  Created by Efe on 15.10.2023.
//

import Foundation

class MovieListCellViewModel : MovieListTableViewCellViewModelType {
    private var movie : Movie

    var movieNameLabelText: Box<String?> = Box(nil)
    var ratingLabelText: Box<String?> = Box(nil)
    var genrasLabelText: Box<String?> = Box(nil)
    var imageViewImage: Box<String?> = Box(nil)
        
    init(movie : Movie) {
        self.movie = movie
        self.movieNameLabelText.value = movie.name
        self.ratingLabelText.value = String(movie.rating)
        self.genrasLabelText.value = GenrasDto.convertGenras(movie.genres)
        self.imageViewImage.value = movie.image
    }
}
