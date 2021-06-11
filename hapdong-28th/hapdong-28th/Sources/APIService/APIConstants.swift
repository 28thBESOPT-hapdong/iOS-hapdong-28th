//
//  APIConstants.swift
//  hapdong-28th
//
//  Created by 초이 on 2021/06/11.
//

import Foundation

struct APIConstants {
    static let baseURL = "http://3.35.49.237:5000/api"
    // 진행중인 기획전
    static let exhibition = baseURL + "/exhibition"
    // 에디터픽
    static let editorPick = baseURL + "/project/editor"
    // 공개예정 프로젝트
    static let openProject = baseURL + "/project/open"
    // 인기추천 프로젝트
    static let popularProject = baseURL + "/project/popular"
    // 신규추천 프로젝트
    static let newProject = baseURL + "/project/new"
    // 프론트배너
    static let banner = baseURL + "/banner"
    // 둘러보기
    static let detail = baseURL + "/detail"
}
