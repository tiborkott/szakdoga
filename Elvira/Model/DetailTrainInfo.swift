// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let detailTrainInfo = try? newJSONDecoder().decode(DetailTrainInfo.self, from: jsonData)

import Foundation

// MARK: - DetailTrainInfo
struct DetailTrainInfo: Codable {
    let href: String
    let url: String
    let geturl: String
    let code: String
    let text: String
    let info: String
    let type: String?
    let isLocalTransport: Bool
    let delayInfo: JSONNull?
    let havariaReason: JSONNull?
    let vszCode: String?

    enum CodingKeys: String, CodingKey {
        case href = "href"
        case url = "url"
        case geturl = "get_url"
        case code = "code"
        case text = "text"
        case info = "info"
        case type = "type"
        case isLocalTransport = "is_local_transport"
        case delayInfo = "delay_info"
        case havariaReason = "havaria_reason"
        case vszCode = "vsz_code"
    }
}
