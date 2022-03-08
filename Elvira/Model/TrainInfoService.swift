// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let trainInfoService = try? newJSONDecoder().decode(TrainInfoService.self, from: jsonData)

import Foundation

// MARK: - TrainInfoService
struct TrainInfoService: Codable {
    let icon: JSONNull?
    let key: String
    let text: String

    enum CodingKeys: String, CodingKey {
        case icon = "icon"
        case key = "key"
        case text = "text"
    }
}
