//
// Created by Karl Söderberg on 2019-01-29.
// Copyright (c) 2019 Karl Söderberg. All rights reserved.
//

import Foundation
import UIKit

//fileprivate enum Endpoint {
//    case user(Int)
//    case activities(Date, Date)
//
//    static private var baseUrl = "http://qapital-ios-testtask.herokuapp.com"
//
//    var url: URL {
//        switch self {
//            case let .user(id):
//                return URL(string: "\(Endpoint.baseUrl)/users/\(id.description)")!
//            case let .activities(from, to):
//                return URL(string: "\(Endpoint.baseUrl)/activities?from=\(from.toApiString())&to=\(to.toApiString())")!
//        }
//    }
//}
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
