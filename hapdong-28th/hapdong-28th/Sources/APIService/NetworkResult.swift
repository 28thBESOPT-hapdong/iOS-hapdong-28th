//
//  NetworkResult.swift
//  hapdong-28th
//
//  Created by 초이 on 2021/06/11.
//

import Foundation

enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
