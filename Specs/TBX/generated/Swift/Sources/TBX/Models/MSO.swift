//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class MSO: Codable {

    public var countryCode: String

    public var country: String

    public var idp: [XAny]

    public init(countryCode: String, country: String, idp: [XAny]) {
        self.countryCode = countryCode
        self.country = country
        self.idp = idp
    }

    private enum CodingKeys: String, CodingKey {
        case countryCode
        case country
        case idp
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        countryCode = try container.decode(.countryCode)
        country = try container.decode(.country)
        idp = try container.decodeAny(.idp)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(countryCode, forKey: .countryCode)
        try container.encode(country, forKey: .country)
        try container.encodeAny(idp, forKey: .idp)
    }
}
