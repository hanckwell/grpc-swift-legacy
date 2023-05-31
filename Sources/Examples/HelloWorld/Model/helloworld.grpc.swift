//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: helloworld.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// The greeting service definition.
///
/// Usage: instantiate `Helloworld_GreeterClient`, then call methods of this protocol to make API calls.
public protocol Helloworld_GreeterClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Helloworld_GreeterClientInterceptorFactoryProtocol? { get }

  func sayHello(
    _ request: Helloworld_HelloRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Helloworld_HelloRequest, Helloworld_HelloReply>
}

extension Helloworld_GreeterClientProtocol {
  public var serviceName: String {
    return "helloworld.Greeter"
  }

  /// Sends a greeting.
  ///
  /// - Parameters:
  ///   - request: Request to send to SayHello.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func sayHello(
    _ request: Helloworld_HelloRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Helloworld_HelloRequest, Helloworld_HelloReply> {
    return self.makeUnaryCall(
      path: Helloworld_GreeterClientMetadata.Methods.sayHello.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSayHelloInterceptors() ?? []
    )
  }
}

@available(*, deprecated)
extension Helloworld_GreeterClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Helloworld_GreeterNIOClient")
public final class Helloworld_GreeterClient: Helloworld_GreeterClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Helloworld_GreeterClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Helloworld_GreeterClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the helloworld.Greeter service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Helloworld_GreeterClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Helloworld_GreeterNIOClient: Helloworld_GreeterClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Helloworld_GreeterClientInterceptorFactoryProtocol?

  /// Creates a client for the helloworld.Greeter service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Helloworld_GreeterClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// The greeting service definition.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Helloworld_GreeterAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Helloworld_GreeterClientInterceptorFactoryProtocol? { get }

  func makeSayHelloCall(
    _ request: Helloworld_HelloRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Helloworld_HelloRequest, Helloworld_HelloReply>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Helloworld_GreeterAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Helloworld_GreeterClientMetadata.serviceDescriptor
  }

  public var interceptors: Helloworld_GreeterClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeSayHelloCall(
    _ request: Helloworld_HelloRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Helloworld_HelloRequest, Helloworld_HelloReply> {
    return self.makeAsyncUnaryCall(
      path: Helloworld_GreeterClientMetadata.Methods.sayHello.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSayHelloInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Helloworld_GreeterAsyncClientProtocol {
  public func sayHello(
    _ request: Helloworld_HelloRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Helloworld_HelloReply {
    return try await self.performAsyncUnaryCall(
      path: Helloworld_GreeterClientMetadata.Methods.sayHello.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSayHelloInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Helloworld_GreeterAsyncClient: Helloworld_GreeterAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Helloworld_GreeterClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Helloworld_GreeterClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public protocol Helloworld_GreeterClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'sayHello'.
  func makeSayHelloInterceptors() -> [ClientInterceptor<Helloworld_HelloRequest, Helloworld_HelloReply>]
}

public enum Helloworld_GreeterClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "Greeter",
    fullName: "helloworld.Greeter",
    methods: [
      Helloworld_GreeterClientMetadata.Methods.sayHello,
    ]
  )

  public enum Methods {
    public static let sayHello = GRPCMethodDescriptor(
      name: "SayHello",
      path: "/helloworld.Greeter/SayHello",
      type: GRPCCallType.unary
    )
  }
}

/// The greeting service definition.
///
/// To build a server, implement a class that conforms to this protocol.
public protocol Helloworld_GreeterProvider: CallHandlerProvider {
  var interceptors: Helloworld_GreeterServerInterceptorFactoryProtocol? { get }

  /// Sends a greeting.
  func sayHello(request: Helloworld_HelloRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Helloworld_HelloReply>
}

extension Helloworld_GreeterProvider {
  public var serviceName: Substring {
    return Helloworld_GreeterServerMetadata.serviceDescriptor.fullName[...]
  }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "SayHello":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Helloworld_HelloRequest>(),
        responseSerializer: ProtobufSerializer<Helloworld_HelloReply>(),
        interceptors: self.interceptors?.makeSayHelloInterceptors() ?? [],
        userFunction: self.sayHello(request:context:)
      )

    default:
      return nil
    }
  }
}

/// The greeting service definition.
///
/// To implement a server, implement an object which conforms to this protocol.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Helloworld_GreeterAsyncProvider: CallHandlerProvider, Sendable {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Helloworld_GreeterServerInterceptorFactoryProtocol? { get }

  /// Sends a greeting.
  func sayHello(
    request: Helloworld_HelloRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> Helloworld_HelloReply
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Helloworld_GreeterAsyncProvider {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Helloworld_GreeterServerMetadata.serviceDescriptor
  }

  public var serviceName: Substring {
    return Helloworld_GreeterServerMetadata.serviceDescriptor.fullName[...]
  }

  public var interceptors: Helloworld_GreeterServerInterceptorFactoryProtocol? {
    return nil
  }

  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "SayHello":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Helloworld_HelloRequest>(),
        responseSerializer: ProtobufSerializer<Helloworld_HelloReply>(),
        interceptors: self.interceptors?.makeSayHelloInterceptors() ?? [],
        wrapping: { try await self.sayHello(request: $0, context: $1) }
      )

    default:
      return nil
    }
  }
}

public protocol Helloworld_GreeterServerInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when handling 'sayHello'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeSayHelloInterceptors() -> [ServerInterceptor<Helloworld_HelloRequest, Helloworld_HelloReply>]
}

public enum Helloworld_GreeterServerMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "Greeter",
    fullName: "helloworld.Greeter",
    methods: [
      Helloworld_GreeterServerMetadata.Methods.sayHello,
    ]
  )

  public enum Methods {
    public static let sayHello = GRPCMethodDescriptor(
      name: "SayHello",
      path: "/helloworld.Greeter/SayHello",
      type: GRPCCallType.unary
    )
  }
}
