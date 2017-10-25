//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class TimetableResponse: Codable {

    public var direction: String?

    public var disambiguation: Disambiguation?

    public var lineId: String?

    public var lineName: String?

    public var pdfUrl: String?

    public var stations: [MatchedStop]?

    public var statusErrorMessage: String?

    public var stops: [MatchedStop]?

    public var timetable: Timetable?

    public init(direction: String? = nil, disambiguation: Disambiguation? = nil, lineId: String? = nil, lineName: String? = nil, pdfUrl: String? = nil, stations: [MatchedStop]? = nil, statusErrorMessage: String? = nil, stops: [MatchedStop]? = nil, timetable: Timetable? = nil) {
        self.direction = direction
        self.disambiguation = disambiguation
        self.lineId = lineId
        self.lineName = lineName
        self.pdfUrl = pdfUrl
        self.stations = stations
        self.statusErrorMessage = statusErrorMessage
        self.stops = stops
        self.timetable = timetable
    }

    private enum CodingKeys: String, CodingKey {
        case direction
        case disambiguation
        case lineId
        case lineName
        case pdfUrl
        case stations
        case statusErrorMessage
        case stops
        case timetable
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        direction = try container.decodeIfPresent(.direction)
        disambiguation = try container.decodeIfPresent(.disambiguation)
        lineId = try container.decodeIfPresent(.lineId)
        lineName = try container.decodeIfPresent(.lineName)
        pdfUrl = try container.decodeIfPresent(.pdfUrl)
        stations = try container.decodeIfPresent(.stations)
        statusErrorMessage = try container.decodeIfPresent(.statusErrorMessage)
        stops = try container.decodeIfPresent(.stops)
        timetable = try container.decodeIfPresent(.timetable)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(direction, forKey: .direction)
        try container.encode(disambiguation, forKey: .disambiguation)
        try container.encode(lineId, forKey: .lineId)
        try container.encode(lineName, forKey: .lineName)
        try container.encode(pdfUrl, forKey: .pdfUrl)
        try container.encode(stations, forKey: .stations)
        try container.encode(statusErrorMessage, forKey: .statusErrorMessage)
        try container.encode(stops, forKey: .stops)
        try container.encode(timetable, forKey: .timetable)
    }
}
