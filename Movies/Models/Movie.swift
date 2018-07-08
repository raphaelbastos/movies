//
//  Movie.swift
//  Movies
//
//  Created by Yves Bastos on 08/07/2018.
//  Copyright © 2018 Yves Bastos. All rights reserved.
//

import ObjectMapper

class Movie: Mappable {
    var id: Int?
    var title: String?
    var poster: String?
    var backdrop: String?
    var voteAverage: Double?
    var budget: Int?
    
    init() { }
    
    required init?(map: Map) { }
    
    func mapping(map: Map) {
        self.id <- map["id"]
        self.budget <- map["budget"]
        self.title <- map["title"]
        self.poster <- map["poster_path"]
        self.backdrop <- map["backdrop_path"]
        self.voteAverage <- map["vote_average"]
    }
}
