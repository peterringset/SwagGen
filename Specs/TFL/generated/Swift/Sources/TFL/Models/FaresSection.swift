//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class FaresSection: Codable {

    public var header: String?

    public var index: Int?

    public var messages: [Message]?

    public var rows: [FareDetails]?

    public init(header: String? = nil, index: Int? = nil, messages: [Message]? = nil, rows: [FareDetails]? = nil) {
        self.header = header
        self.index = index
        self.messages = messages
        self.rows = rows
    }

    private enum CodingKeys: String, CodingKey {
        case header
        case index
        case messages
        case rows
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        header = try container.decodeIfPresent(.header)
        index = try container.decodeIfPresent(.index)
        messages = try container.decodeIfPresent(.messages)
        rows = try container.decodeIfPresent(.rows)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(header, forKey: .header)
        try container.encode(index, forKey: .index)
        try container.encode(messages, forKey: .messages)
        try container.encode(rows, forKey: .rows)
    }
}
