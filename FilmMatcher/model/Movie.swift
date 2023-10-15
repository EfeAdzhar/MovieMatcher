//
//  Movie.swift
//  FilmMatcher
//
//  Created by Efe on 11.10.2023.
//

import Foundation

struct Movie {
    public var id : Int
    public var name : String
    public var rating : Float
    public var description : Description
    public var genres : [Genre]
}

//extension Movie {
//
//    public var movieId: Int {
//        get {
//            return id
//        }
//        set {
//            id = newValue
//        }
//    }
//
//    public var movieName: String {
//        get {
//            return name
//        }
//        set {
//            name = newValue
//        }
//    }
//
//    public var movieRating: Float {
//        get {
//            return rating
//        }
//        set {
//            rating = newValue
//        }
//    }
//
//    public var movieDescription: Description {
//        get {
//            return description
//        }
//        set {
//            description = newValue
//        }
//    }
//
//    public var movieGenres: [Genre] {
//        get {
//            return genres
//        }
//        set {
//            genres = newValue
//        }
//    }
//}
