//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Model for testing reserved words */
public class Return: Codable {

    public var `return`: Int?

    public init(`return`: Int? = nil) {
        self.`return` = `return`
    }

    private enum CodingKeys: String, CodingKey {
        case `return` = "return"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        `return` = try container.decodeIfPresent(.`return`)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(`return`, forKey: .`return`)
    }
}
