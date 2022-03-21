// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let timetableTrainInfo = try? newJSONDecoder().decode(TimetableTrainInfo.self, from: jsonData)

import Foundation

// MARK: - TimetableTrainInfo
struct TimetableTrainInfo: Codable {
    let services: [TrainInfoService]

    enum CodingKeys: String, CodingKey {
        case services = "services"
    }
}
