//
//  RickAndMortyAPI.swift
//  RickAndMortyAPI
//
//  Created by Álvaro Ferrández Gómez on 3/1/24.
//

import Foundation

open class RickAndMortyAPI: NSObject {
    public static var bundle: Bundle {
        if let ownBundle = Bundle(for: RickAndMortyAPI.self).url(forResource: "RickAndMortyAPI", withExtension: "bundle"),
           let bundle = Bundle(url: ownBundle)
        {
            return bundle
        } else {
            return Bundle(for: RickAndMortyAPI.self)
        }
    }
}
