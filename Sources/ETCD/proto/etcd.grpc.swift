//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: etcd.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Usage: instantiate `Etcdserverpb_KVClient`, then call methods of this protocol to make API calls.
internal protocol Etcdserverpb_KVClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Etcdserverpb_KVClientInterceptorFactoryProtocol? { get }

  func range(
    _ request: Etcdserverpb_RangeRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Etcdserverpb_RangeRequest, Etcdserverpb_RangeResponse>
}

extension Etcdserverpb_KVClientProtocol {
  internal var serviceName: String {
    return "etcdserverpb.KV"
  }

  /// Unary call to Range
  ///
  /// - Parameters:
  ///   - request: Request to send to Range.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func range(
    _ request: Etcdserverpb_RangeRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Etcdserverpb_RangeRequest, Etcdserverpb_RangeResponse> {
    return self.makeUnaryCall(
      path: Etcdserverpb_KVClientMetadata.Methods.range.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeRangeInterceptors() ?? []
    )
  }
}

@available(*, deprecated)
extension Etcdserverpb_KVClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Etcdserverpb_KVNIOClient")
internal final class Etcdserverpb_KVClient: Etcdserverpb_KVClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Etcdserverpb_KVClientInterceptorFactoryProtocol?
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  internal var interceptors: Etcdserverpb_KVClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the etcdserverpb.KV service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Etcdserverpb_KVClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

internal struct Etcdserverpb_KVNIOClient: Etcdserverpb_KVClientProtocol {
  internal var channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Etcdserverpb_KVClientInterceptorFactoryProtocol?

  /// Creates a client for the etcdserverpb.KV service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Etcdserverpb_KVClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
internal protocol Etcdserverpb_KVAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Etcdserverpb_KVClientInterceptorFactoryProtocol? { get }

  func makeRangeCall(
    _ request: Etcdserverpb_RangeRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Etcdserverpb_RangeRequest, Etcdserverpb_RangeResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Etcdserverpb_KVAsyncClientProtocol {
  internal static var serviceDescriptor: GRPCServiceDescriptor {
    return Etcdserverpb_KVClientMetadata.serviceDescriptor
  }

  internal var interceptors: Etcdserverpb_KVClientInterceptorFactoryProtocol? {
    return nil
  }

  internal func makeRangeCall(
    _ request: Etcdserverpb_RangeRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Etcdserverpb_RangeRequest, Etcdserverpb_RangeResponse> {
    return self.makeAsyncUnaryCall(
      path: Etcdserverpb_KVClientMetadata.Methods.range.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeRangeInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Etcdserverpb_KVAsyncClientProtocol {
  internal func range(
    _ request: Etcdserverpb_RangeRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Etcdserverpb_RangeResponse {
    return try await self.performAsyncUnaryCall(
      path: Etcdserverpb_KVClientMetadata.Methods.range.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeRangeInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
internal struct Etcdserverpb_KVAsyncClient: Etcdserverpb_KVAsyncClientProtocol {
  internal var channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Etcdserverpb_KVClientInterceptorFactoryProtocol?

  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Etcdserverpb_KVClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

internal protocol Etcdserverpb_KVClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'range'.
  func makeRangeInterceptors() -> [ClientInterceptor<Etcdserverpb_RangeRequest, Etcdserverpb_RangeResponse>]
}

internal enum Etcdserverpb_KVClientMetadata {
  internal static let serviceDescriptor = GRPCServiceDescriptor(
    name: "KV",
    fullName: "etcdserverpb.KV",
    methods: [
      Etcdserverpb_KVClientMetadata.Methods.range,
    ]
  )

  internal enum Methods {
    internal static let range = GRPCMethodDescriptor(
      name: "Range",
      path: "/etcdserverpb.KV/Range",
      type: GRPCCallType.unary
    )
  }
}

/// To build a server, implement a class that conforms to this protocol.
internal protocol Etcdserverpb_KVProvider: CallHandlerProvider {
  var interceptors: Etcdserverpb_KVServerInterceptorFactoryProtocol? { get }

  func range(request: Etcdserverpb_RangeRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Etcdserverpb_RangeResponse>
}

extension Etcdserverpb_KVProvider {
  internal var serviceName: Substring {
    return Etcdserverpb_KVServerMetadata.serviceDescriptor.fullName[...]
  }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "Range":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Etcdserverpb_RangeRequest>(),
        responseSerializer: ProtobufSerializer<Etcdserverpb_RangeResponse>(),
        interceptors: self.interceptors?.makeRangeInterceptors() ?? [],
        userFunction: self.range(request:context:)
      )

    default:
      return nil
    }
  }
}

/// To implement a server, implement an object which conforms to this protocol.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
internal protocol Etcdserverpb_KVAsyncProvider: CallHandlerProvider, Sendable {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Etcdserverpb_KVServerInterceptorFactoryProtocol? { get }

  func range(
    request: Etcdserverpb_RangeRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> Etcdserverpb_RangeResponse
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Etcdserverpb_KVAsyncProvider {
  internal static var serviceDescriptor: GRPCServiceDescriptor {
    return Etcdserverpb_KVServerMetadata.serviceDescriptor
  }

  internal var serviceName: Substring {
    return Etcdserverpb_KVServerMetadata.serviceDescriptor.fullName[...]
  }

  internal var interceptors: Etcdserverpb_KVServerInterceptorFactoryProtocol? {
    return nil
  }

  internal func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "Range":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Etcdserverpb_RangeRequest>(),
        responseSerializer: ProtobufSerializer<Etcdserverpb_RangeResponse>(),
        interceptors: self.interceptors?.makeRangeInterceptors() ?? [],
        wrapping: { try await self.range(request: $0, context: $1) }
      )

    default:
      return nil
    }
  }
}

internal protocol Etcdserverpb_KVServerInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when handling 'range'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeRangeInterceptors() -> [ServerInterceptor<Etcdserverpb_RangeRequest, Etcdserverpb_RangeResponse>]
}

internal enum Etcdserverpb_KVServerMetadata {
  internal static let serviceDescriptor = GRPCServiceDescriptor(
    name: "KV",
    fullName: "etcdserverpb.KV",
    methods: [
      Etcdserverpb_KVServerMetadata.Methods.range,
    ]
  )

  internal enum Methods {
    internal static let range = GRPCMethodDescriptor(
      name: "Range",
      path: "/etcdserverpb.KV/Range",
      type: GRPCCallType.unary
    )
  }
}
