//
//  MusicModel.swift
//  5주차 위클리미션
//
//  Created by 제민우 on 11/10/23.
//

import Foundation

// MARK: - MusicMetaData
struct MusicMetaData: Codable {
    let resultCount: Int
    let results: [MusicModel]
}

// MARK: - MusicModel
struct MusicModel: Codable {
    let songName: String?
    let artistName: String?
    let albumName: String?
    let previewUrl: String?
    let imageURL: String?
    private let releaseDate: String?
    
    enum CodingKeys: String, CodingKey {
        case songName = "trackName"
        case artistName
        case albumName = "collectionName"
        case previewUrl
        case imageURL = "artworkUrl100"
        case releaseDate
    }
    
    var releaseDateString: String? {
        guard let isoDate = ISO8601DateFormatter().date(from: releaseDate ?? "") else {
            return ""
        }
        let myFormmater = DateFormatter()
        myFormmater.dateFormat = "yyyy-MM-dd"
        let dateString = myFormmater.string(from: isoDate)
        return dateString
    }
}
