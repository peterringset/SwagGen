//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension PetstoreTest.User {

    /** This can only be done by the logged in user. */
    public enum UpdateUser {

        public static let service = APIService<Response>(id: "updateUser", tag: "user", method: "PUT", path: "/user/{username}", hasBody: true)

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** name that need to be deleted */
                public var username: String

                public init(username: String) {
                    self.username = username
                }
            }

            public var options: Options

            public var body: User

            public init(body: User, options: Options) {
                self.body = body
                self.options = options
                super.init(service: UpdateUser.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(username: String, body: User) {
                let options = Options(username: username)
                self.init(body: body, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "username" + "}", with: "\(self.options.username)")
            }

            public override var jsonBody: Encodable? {
                return body
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** Invalid user supplied */
            case status400

            /** User not found */
            case status404

            public var success: Void? {
                switch self {
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status400: return 400
                case .status404: return 404
                }
            }

            public var successful: Bool {
                switch self {
                case .status400: return false
                case .status404: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: JSONDecoder) throws {
                switch statusCode {
                case 400: self = .status400
                case 404: self = .status404
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
