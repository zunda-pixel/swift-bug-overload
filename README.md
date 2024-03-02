## Swift overload bug on Linux?

This project be build in macOS, but not Linux(Ubuntu).

```shell
/swift-bug-same-argument/Sources/Library1/Library1.swift:25:27: error: instance method 'data(for:)' requires that 'HTTPRequest' conform to 'Request'
    return try await self.data(for: request)
                          ^
/swift-bug-same-argument/Sources/Library1/Library1.swift:18:15: note: where 'some Request' = 'HTTPRequest'
  public func data(for request: some Request) async throws -> (Data, HTTPResponse) {
              ^
error: fatalError
Error: Process completed with exit code 1.
```
