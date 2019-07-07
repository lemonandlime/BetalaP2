//
// Created by Karl Söderberg on 2019-01-28.
// Copyright (c) 2019 Karl Söderberg. All rights reserved.
//

import Foundation

enum ApiError: Error {
    case unknown
    case decodingError
    case cancelled
}

class ApiClient {

    static func get<T: Decodable>(request: URLRequest) throws -> T {
        var sessionData: Data?
        var sessionError: Error?
        let group = DispatchGroup()

        group.enter()
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            sessionData = data
            sessionError = error
            group.leave()
        }
        task.resume()
        group.wait()

        if let error = sessionError {
            throw error
        } else if let data = sessionData as? T {
            return data
        } else if let data = sessionData {
            return try NetworkDecoder().decode(T.self, from: data)
        } else {
            throw ApiError.unknown
        }
    }
}
