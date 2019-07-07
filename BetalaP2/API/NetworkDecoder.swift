//
// Created by Karl Söderberg on 2019-01-28.
// Copyright (c) 2019 Karl Söderberg. All rights reserved.
//

import Foundation

class NetworkDecoder: JSONDecoder {
    static var shared = NetworkDecoder.init()
    override init() {
        super.init()
        self.dateDecodingStrategy = .iso8601
    }
}
class NetworkEncoder: JSONEncoder {
    static var shared = NetworkEncoder.init()
    override init() {
        super.init()
        self.dateEncodingStrategy = .iso8601
    }
}