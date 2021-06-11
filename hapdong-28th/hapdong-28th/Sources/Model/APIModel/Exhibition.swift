//
//  ExhibitionModel.swift
//  hapdong-28th
//
//  Created by 초이 on 2021/06/11.
//

import Foundation

struct Exhibition: Codable {
    let id: Int
    let email, password, passwordSalt: String
    let isAlarmSet: Bool
    let alarmTime, tempPassword, tempPasswordCreatedAt: String
    let tempPasswordIssueCount: Int
    let createdAt, updatedAt, deletedAt: String
}
