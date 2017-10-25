//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class PostcodeInput: Codable {

    public var postcode: String?

    public init(postcode: String? = nil) {
        self.postcode = postcode
    }

    private enum CodingKeys: String, CodingKey {
        case postcode
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        postcode = try container.decodeIfPresent(.postcode)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(postcode, forKey: .postcode)
    }
}
