//
//  EpisodesModel.swift
//  RickAndMortyAPI
//
//  Created by Álvaro Ferrández Gómez on 3/1/24.
//

import Foundation

struct EpisodesModel {
    var episodes: [EpisodeModel]
}

struct EpisodeModel {
    var name: String?
    var airDate: String?
    var episode: String?
}
