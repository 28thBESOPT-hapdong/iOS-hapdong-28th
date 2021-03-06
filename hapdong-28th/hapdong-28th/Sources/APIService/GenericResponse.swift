//
//  GenericResponse.swift
//  hapdong-28th
//
//  Created by 초이 on 2021/06/11.
//

import Foundation

struct GenericResponse<T: Codable>: Codable {
    var message: String
    var data: T?
    
    enum CodingKeys: String, CodingKey {
        case message = "message"
        case data = "data"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        message = (try? values.decode(String.self, forKey: .message)) ?? ""
        data = (try? values.decode(T.self, forKey: .data)) ?? nil
    }
}
