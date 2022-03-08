// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let timetables = try? newJSONDecoder().decode(Timetables.self, from: jsonData)

import Foundation

// MARK: - Timetables
struct Timetables: Codable {
    let timetable: [Timetable]
    let date: String
    let route: String

    enum CodingKeys: String, CodingKey {
        case timetable = "timetable"
        case date = "date"
        case route = "route"
    }
}
