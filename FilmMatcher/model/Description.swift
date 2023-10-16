//
//  Description.swift
//  FilmMatcher
//
//  Created by Efe on 12.10.2023.
//

import Foundation

public struct Description {
    public var filmId: Int
    public var summary: String
    public var director: String
    public var releaseDate: ReleaseDate
    public var duration: Duration
}

public struct ReleaseDate {
    public var day : Int
    public var month : String
    public var year : Int
}

public struct Duration {
    public var hours : Int
    public var minutes : Int
}
