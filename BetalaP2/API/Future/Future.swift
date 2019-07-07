//
//  Future.swift
//  Shared
//
//  Created by Karl Söderberg on 2018-12-15.
//  Copyright © 2018 Karl Söderberg. All rights reserved.
//

import Foundation

public typealias GetResult<T> = () throws -> (T)
public typealias GetVoid = () throws -> ()

struct VoidResult {}

public class Future<T> {
    private let request: () throws -> T
    private var onSuccess: [(T) -> Void] = []
    private var onError: [(Error) -> Void] = []
    private var errorMapper: (Error) -> Error = { return $0 }
    private var isInvalidated: Bool = false

    public init(result: @escaping () throws -> T) {
        self.request = result
    }

    public func invalidate() {
        isInvalidated = true
    }

    public static func failingFuture<T>(_ error: Error) -> Future<T> {
        return Future<T>(result: { throw error })
    }

    @discardableResult public func onSuccess(_ block: @escaping (T) -> Void) -> Future<T> {
        self.onSuccess.append(block)
        return self
    }
    @discardableResult public func onError(_ block: @escaping (Error) -> Void) -> Future<T> {
        self.onError.append(block)
        return self
    }

    public func run() {
        self.run { _ in }
    }

    public func run(_ block: @escaping (GetResult<T>) -> Void) {
        DispatchQueue.global().async {
            do {
                let result = try self.request()
                DispatchQueue.main.async {
                    self.onSuccess.forEach { $0(result) }
                    if !self.isInvalidated {
                        block({ return result })
                    }
                }
            } catch {
                DispatchQueue.main.async {
                    self.onError.forEach { $0(error) }
                    if !self.isInvalidated {
                        block({ throw error })
                    }
                }
            }
        }
    }

    public func runSynchronous() throws -> T {
        do {
            let result = try self.request()
            DispatchQueue.main.async {
                self.onSuccess.forEach { $0(result) }
            }
            return result
        } catch {
            DispatchQueue.main.async {
                self.onError.forEach { $0(error) }
            }
            throw error
        }
    }

    public func map<E>(transform: @escaping (T) throws -> E) -> Future<E> {
        return Future<E> {
            do {
                let result = try self.request()
                DispatchQueue.main.async {
                    self.onSuccess.forEach { $0(result) }
                }
                return try transform(result)
            } catch {
                DispatchQueue.main.async {
                    self.onError.forEach { $0(error) }
                }
                throw error
            }
        }
    }

    @discardableResult public func mapError(transform: @escaping (Error) -> Error) -> Future<T> {
        self.errorMapper = transform
        return self
    }
}
