//
//  openProject.swift
//  hapdong-28th
//
//  Created by 초이 on 2021/06/11.
//

import Foundation

struct openProject: Codable {
    let dataOpen: [Open]

    enum CodingKeys: String, CodingKey {
        case dataOpen = "open"
    }
}

struct Open: Codable {
    let id: String
    let openID: Int
    let image: String
    let category, writer, title: String
    let notify: Int
    let kind: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case openID = "id"
        case image, category, writer, title, notify, kind
    }
}
