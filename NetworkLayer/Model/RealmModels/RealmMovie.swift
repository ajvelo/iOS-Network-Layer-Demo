//
//  RealmMovie.swift
//  NetworkLayer
//
//  Created by Andreas Velounias on 24/01/2019.
//  Copyright © 2019 Malcolm Kumwenda. All rights reserved.
//

import Foundation
import RealmSwift

struct Movie {
    let id: Int
    let posterPath: String
    let backdrop: String
    let title: String
    let releaseDate: String
    let rating: Double
    let overview: String
}
