//
//  CharacterDetailViewModel.swift
//  RickAndMortyAPI
//
//  Created by Álvaro Ferrández Gómez on 3/1/24.
//

import Foundation

protocol CharacterDetailViewModelInput {}

protocol CharacterDetailViewModelOutput {}

typealias CharacterDetailViewModel = CharacterDetailViewModelInput & CharacterDetailViewModelOutput

final class DefaultCharacterDetailViewModel: CharacterDetailViewModel {
    init() {}
}
