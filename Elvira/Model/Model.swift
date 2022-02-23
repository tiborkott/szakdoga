//
//  Model.swift
//  Elvira
//
//  Created by Kött Tibor on 2022. 02. 23..
//

import Foundation

// MARK: - Welcome
struct Timetables: Codable {
    let timetable: [Timetable]
    let date, route: String
}

// MARK: - Timetable
struct Timetable: Codable {
    let type: TypeEnum?
    let starttime, start, destinationtime, destination: String
    let change: String
    let totaltime: Totaltime
    let distance: Distance
    let cost1St, cost2Nd: Cost
    let timetableClass, className: Class
    let details: [Detail]
    let trainInfo: TimetableTrainInfo?

    enum CodingKeys: String, CodingKey {
        case type, starttime, start, destinationtime, destination, change, totaltime, distance
        case cost1St = "cost1st"
        case cost2Nd = "cost2nd"
        case timetableClass = "class"
        case className = "class_name"
        case details
        case trainInfo = "train_info"
    }
}

enum Class: String, Codable {
    case the1 = "1."
    case the2 = "2."
}

enum Cost: String, Codable {
    case empty = "---"
}

// MARK: - Detail
struct Detail: Codable {
    let from: From
    let dep, depReal, platform: String
    let trainInfo: DetailTrainInfo?
    let services: [DetailService]?
    let originalWay: [OriginalWay]?

    enum CodingKeys: String, CodingKey {
        case from, dep
        case depReal = "dep_real"
        case platform
        case trainInfo = "train_info"
        case services
        case originalWay = "original_way"
    }
}

enum From: String, Codable {
    case cegléd = "Cegléd"
    case zugló = "Zugló"
}

enum OriginalWay: String, Codable {
    case nagykõrösBudapestNyugati = "Nagykõrös - Budapest-Nyugati"
    case szolnokBudapestNyugati = "Szolnok - Budapest-Nyugati"
    case záhonyBudapestNyugati = "Záhony - Budapest-Nyugati"
}

// MARK: - DetailService
struct DetailService: Codable {
    let icon: Icon
    let code: Int
    let key: PurpleKey
}

enum Icon: String, Codable {
    case the319GIF = "319.gif"
}

enum PurpleKey: String, Codable {
    case wheelchairWLift = "WHEELCHAIR_W_LIFT"
}

// MARK: - DetailTrainInfo
struct DetailTrainInfo: Codable {
    let href: String
    let url, getURL: String
    let code, text, info: String
    let type: TypeEnum?
    let isLocalTransport: Bool
    let delayInfo, havariaReason: JSONNull?
    let vszCode: VszCode?

    enum CodingKeys: String, CodingKey {
        case href, url
        case getURL = "get_url"
        case code, text, info, type
        case isLocalTransport = "is_local_transport"
        case delayInfo = "delay_info"
        case havariaReason = "havaria_reason"
        case vszCode = "vsz_code"
    }
}

enum TypeEnum: String, Codable {
    case fast = "fast"
    case passenger = "passenger"
    case through = "through"
}

enum VszCode: String, Codable {
    case g50 = "G50"
    case s50 = "S50"
    case z50 = "Z50"
}

enum Distance: String, Codable {
    case the68KM = "68 km"
}

enum Totaltime: String, Codable {
    case the045 = "0:45"
    case the049 = "0:49"
    case the053 = "0:53"
    case the101 = "1:01"
    case the109 = "1:09"
    case the111 = "1:11"
}

// MARK: - TimetableTrainInfo
struct TimetableTrainInfo: Codable {
    let services: [TrainInfoService]
}

// MARK: - TrainInfoService
struct TrainInfoService: Codable {
    let icon: JSONNull?
    let key: FluffyKey
    let text: Text
}

enum FluffyKey: String, Codable {
    case plusticket = "PLUSTICKET"
}

enum Text: String, Codable {
    case pótjegy = "Pótjegy"
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}
