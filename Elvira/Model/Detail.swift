// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let detail = try? newJSONDecoder().decode(Detail.self, from: jsonData)

import Foundation

// MARK: - Detail
struct Detail: Codable {
    let from: String
    let dep: String
    let depReal: String
    let platform: String
    let trainInfo: DetailTrainInfo?
    let services: [DetailService]?
    let originalWay: [String]?

    enum CodingKeys: String, CodingKey {
        case from = "from"
        case dep = "dep"
        case depReal = "dep_real"
        case platform = "platform"
        case trainInfo = "train_info"
        case services = "services"
        case originalWay = "original_way"
    }
}
