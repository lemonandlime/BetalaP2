//
//  EasyparkAPI.swift
//  BetalaP2
//
//  Created by Karl Söderberg on 2019-07-03.
//  Copyright © 2019 Karl Söderberg. All rights reserved.
//

import Foundation


fileprivate enum EasyparkEndPoint {
    case getProfile
//    case activities(Date, Date)

    static private var baseUrl = URL(string: "https://sthlm.easyparksystem.net")!

    var url: URL {
        switch self {
            case .getProfile:
                return Self.baseUrl.appendingPathExtension("/rest/resources/parkingusers/profile")
//                return URL(string: "\(Self.baseUrl)/rest/resources/parkingusers/profile")!
//            case let .activities(from, to):
//                return URL(string: "\(Endpoint.baseUrl)/activities?from=\(from.toApiString())&to=\(to.toApiString())")!
        }
    }
}

class EasyparkAPI {

    private var username: String?
    private var password: String?
    
    func setCredentials(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    func getProfile() -> Future<Profile> {
        return Future {
            return try ApiClient.get(request: self.newRequest(.getProfile))
        }
    }
    
    private func newRequest(_ endpoint: EasyparkEndPoint) -> URLRequest {
        var request = URLRequest(url: endpoint.url)
        
        if let password = self.password, let username = self.username {
            let loginString = "\(username):\(password)"
            let base64LoginString = loginString.data(using: String.Encoding.utf8)!.base64EncodedString()
            
            request.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
            request.addValue(username, forHTTPHeaderField: "")
        }
        
        return request
    }
}
//
//var qapitalApi = QapitaliOSTestApi()

//class QapitaliOSTestApi {
//    func getImage(url: URL) -> Future<UIImage> {
//        return Future {
//            let imageData: Data = try ApiClient.get(url: url, ignoreCache: false)
//            guard let image = UIImage(data: imageData) else {
//                throw ApiError.decodingError
//            }
//            return image
//        }
//    }
//
//    func getUser(userId: Int) -> Future<UserModel> {
//        return Future {
//            return try ApiClient.get(url: Endpoint.user(userId).url)
//        }
//    }
//
//    func getActivities(from: Date, to: Date) -> Future<([ActivityModel], Bool)> {
//        return Future {
//            let responseModel: ActivitiesResponseModel = try ApiClient.get(url: Endpoint.activities(from, to).url)
//            return (responseModel.activities, responseModel.oldest.timeIntervalSince(from) > 0)
//        }
//    }
//
//    private struct ActivitiesResponseModel: Decodable {
//        let oldest: Date
//        let activities: [ActivityModel]
//    }
//}
