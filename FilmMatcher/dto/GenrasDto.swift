//
//  GenrasDto.swift
//  FilmMatcher
//
//  Created by Efe on 15.10.2023.
//

import Foundation
import UIKit

class GenrasDto {
    public static func convertGenras(_ genras : [Genre]) -> String {
        var genrasString : String = ""
        for genra in genras {
            genrasString += "[\(genra)] "
        }
        return genrasString
    }
}
