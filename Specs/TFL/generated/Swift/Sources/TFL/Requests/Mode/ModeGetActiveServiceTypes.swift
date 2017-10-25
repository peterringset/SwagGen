//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TFL.Mode {

    public enum ModeGetActiveServiceTypes {

        public static let service = APIService<Response>(id: "Mode_GetActiveServiceTypes", tag: "Mode", method: "GET", path: "/Mode/ActiveServiceTypes", hasBody: false)

        public final class Request: APIRequest<Response> {

            public init() {
                super.init(service: ModeGetActiveServiceTypes.service)
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = [ActiveServiceType]

            /** OK */
            case status200([ActiveServiceType])

            public var success: [ActiveServiceType]? {
                switch self {
                case .status200(let response): return response
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                }
            }

            public init(statusCode: Int, data: Data, decoder: JSONDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode([ActiveServiceType].self, from: data))
                default: throw APIError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
