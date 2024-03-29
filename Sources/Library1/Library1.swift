import Foundation

import HTTPTypes
import HTTPTypesFoundation

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif


public protocol Request {
  var method: HTTPRequest.Method { get }
  var url: URL { get }
  var headers: HTTPFields { get }
}

extension URLSession {
  public func data(for request: some Request) async throws -> (Data, HTTPResponse) {
    let request = HTTPRequest(
      method: request.method,
      url: request.url,
      headerFields: request.headers
    )
  
    return try await self.data(for: request)
  }
}
