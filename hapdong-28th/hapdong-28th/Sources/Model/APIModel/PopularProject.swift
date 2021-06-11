//
//  popularProject.swift
//  hapdong-28th
//
//  Created by 초이 on 2021/06/11.
//

import Foundation

struct popularProject: Codable {
    let popular: [Popular]
}

struct Popular: Codable {
    let id: String
    let popularID: Int
    let category, writer, title: String
    let percent: Int
    let kind: String
    let image: String?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case popularID = "id"
        case category, writer, title, percent, kind, image
    }
}
