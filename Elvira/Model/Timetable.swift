// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let timetable = try? newJSONDecoder().decode(Timetable.self, from: jsonData)

import Foundation

// MARK: - Timetable
struct Timetable: Codable, Identifiable {
    let id = UUID()
    let type: String?
    let starttime: String
    let start: String
    let destinationtime: String
    let destination: String
    let change: String
    let totaltime: String
    let distance: String
    let cost1St: String
    let cost2Nd: String
    let timetableClass: String
    let className: String
    let details: [Detail]
    let trainInfo: TimetableTrainInfo?

    enum CodingKeys: String, CodingKey {
        case type = "type"
        case starttime = "starttime"
        case start = "start"
        case destinationtime = "destinationtime"
        case destination = "destination"
        case change = "change"
        case totaltime = "totaltime"
        case distance = "distance"
        case cost1St = "cost1st"
        case cost2Nd = "cost2nd"
        case timetableClass = "class"
        case className = "class_name"
        case details = "details"
        case trainInfo = "train_info"
    }
}
