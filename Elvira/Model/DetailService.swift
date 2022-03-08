// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let detailService = try? newJSONDecoder().decode(DetailService.self, from: jsonData)

import Foundation

// MARK: - DetailService
struct DetailService: Codable {
    let icon: String
    let code: Int
    let key: String

    enum CodingKeys: String, CodingKey {
        case icon = "icon"
        case code = "code"
        case key = "key"
    }
}
