//
//  Banners.swift
//  hapdong-28th
//
//  Created by 초이 on 2021/06/11.
//

import Foundation

struct Banners: Codable {
    let banner: [Banner]
}

struct Banner: Codable {
    let id: String
    let bannerID: Int
    let image: String
    let title, bannerDescription: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case bannerID = "id"
        case image, title
        case bannerDescription = "description"
    }
}
