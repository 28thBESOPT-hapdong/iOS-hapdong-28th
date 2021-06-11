//
//  EditorPick.swift
//  hapdong-28th
//
//  Created by 초이 on 2021/06/11.
//

import Foundation

struct EditorPick: Codable {
    let editor: [Editor]
}

struct Editor: Codable {
    let id: String
    let editorID: Int
    let image: String?
    let category, writer, title: String
    let percent: Int
    let kind: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case editorID = "id"
        case image, category, writer, title, percent, kind
    }
}
