//
//  RMCharacterCell+Constraints.swift
//  RickAndMortyAPI
//
//  Created by Álvaro Ferrández Gómez on 3/1/24.
//

import UIKit

extension RMCharacterCell {
    func setupCharacterImageViewConstraints() {
        NSLayoutConstraint.activate([
            characterImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: Constants.topBottomDistance),
            characterImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            characterImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            characterImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
    }

    func setupCharacterNameViewConstraint() {
        NSLayoutConstraint.activate([
            characterNameView.heightAnchor.constraint(equalToConstant: Constants.nameViewHeight),
            characterNameView.leadingAnchor.constraint(equalTo: characterImageView.leadingAnchor),
            characterNameView.trailingAnchor.constraint(equalTo: characterImageView.trailingAnchor),
            characterNameView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -Constants.topBottomDistance),
        ])
    }

    func setupCharacterNameLabelConstraint() {
        NSLayoutConstraint.activate([
            characterNameLabel.topAnchor.constraint(equalTo: characterNameView.topAnchor),
            characterNameLabel.leadingAnchor.constraint(equalTo: characterNameView.leadingAnchor),
            characterNameLabel.trailingAnchor.constraint(equalTo: characterNameView.trailingAnchor),
            characterNameLabel.bottomAnchor.constraint(equalTo: characterNameView.bottomAnchor),
        ])
    }
}
