//
//  Details.swift
//  hapdong-28th
//
//  Created by 초이 on 2021/06/11.
//

import Foundation

struct Details: Codable {
    let detail: [Detail]
}

struct Detail: Codable {
    let id: String
    let detailID: Int
    let image: String
    let category, writer, title, detailDescription: String
    let price: String
    let percent, dDay: Int

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case detailID = "id"
        case image, category, writer, title
        case detailDescription = "description"
        case price, percent, dDay
    }
}
