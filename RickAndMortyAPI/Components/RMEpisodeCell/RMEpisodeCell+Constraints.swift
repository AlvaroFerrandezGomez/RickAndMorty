//
//  RMEpisodeCell+Constraints.swift
//  RickAndMortyAPI
//
//  Created by Álvaro Ferrández Gómez on 3/1/24.
//

import UIKit

extension RMEpisodeCell {
    func setupEpisodeNameViewLabelConstraint() {
        NSLayoutConstraint.activate([
            episodeNameViewLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            episodeNameViewLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            episodeNameViewLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            episodeNameViewLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
        ])
    }

    func setupEpisodeNameLabelConstraint() {
        NSLayoutConstraint.activate([
            episodeNameLabel.topAnchor.constraint(equalTo: episodeNameViewLabel.topAnchor, constant: 8),
            episodeNameLabel.leadingAnchor.constraint(equalTo: episodeNameViewLabel.leadingAnchor, constant: 8),
            episodeNameLabel.trailingAnchor.constraint(equalTo: episodeNameViewLabel.trailingAnchor, constant: -8),
            episodeNameLabel.bottomAnchor.constraint(equalTo: episodeNameViewLabel.bottomAnchor, constant: -8),
        ])
    }
}
