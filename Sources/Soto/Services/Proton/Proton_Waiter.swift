//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

@_exported import SotoCore

import SotoCore

// MARK: Waiters

extension Proton {
    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilEnvironmentDeployed(
        _ input: GetEnvironmentInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("environment.deploymentStatus", expected: "SUCCEEDED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("environment.deploymentStatus", expected: "FAILED")),
            ],
            minDelayTime: .seconds(5),
            command: getEnvironment
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilEnvironmentTemplateVersionRegistered(
        _ input: GetEnvironmentTemplateVersionInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("environmentTemplateVersion.status", expected: "DRAFT")),
                .init(state: .success, matcher: try! JMESPathMatcher("environmentTemplateVersion.status", expected: "PUBLISHED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("environmentTemplateVersion.status", expected: "REGISTRATION_FAILED")),
            ],
            minDelayTime: .seconds(2),
            command: getEnvironmentTemplateVersion
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilServiceCreated(
        _ input: GetServiceInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("service.status", expected: "ACTIVE")),
                .init(state: .failure, matcher: try! JMESPathMatcher("service.status", expected: "CREATE_FAILED_CLEANUP_COMPLETE")),
                .init(state: .failure, matcher: try! JMESPathMatcher("service.status", expected: "CREATE_FAILED_CLEANUP_FAILED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("service.status", expected: "CREATE_FAILED")),
            ],
            minDelayTime: .seconds(5),
            command: getService
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilServiceDeleted(
        _ input: GetServiceInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSErrorCodeMatcher("ResourceNotFoundException")),
                .init(state: .failure, matcher: try! JMESPathMatcher("service.status", expected: "DELETE_FAILED")),
            ],
            minDelayTime: .seconds(5),
            command: getService
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilServiceInstanceDeployed(
        _ input: GetServiceInstanceInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("serviceInstance.deploymentStatus", expected: "SUCCEEDED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("serviceInstance.deploymentStatus", expected: "FAILED")),
            ],
            minDelayTime: .seconds(5),
            command: getServiceInstance
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilServicePipelineDeployed(
        _ input: GetServiceInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("service.pipeline.deploymentStatus", expected: "SUCCEEDED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("service.pipeline.deploymentStatus", expected: "FAILED")),
            ],
            minDelayTime: .seconds(10),
            command: getService
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilServiceTemplateVersionRegistered(
        _ input: GetServiceTemplateVersionInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("serviceTemplateVersion.status", expected: "DRAFT")),
                .init(state: .success, matcher: try! JMESPathMatcher("serviceTemplateVersion.status", expected: "PUBLISHED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("serviceTemplateVersion.status", expected: "REGISTRATION_FAILED")),
            ],
            minDelayTime: .seconds(2),
            command: getServiceTemplateVersion
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Poll resource until it reaches a desired state
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - maxWaitTime: Maximum amount of time to wait for waiter to be successful
    ///   - logger: Logger for logging output
    ///   - eventLoop: EventLoop to run waiter code on
    public func waitUntilServiceUpdated(
        _ input: GetServiceInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("service.status", expected: "ACTIVE")),
                .init(state: .failure, matcher: try! JMESPathMatcher("service.status", expected: "UPDATE_FAILED_CLEANUP_COMPLETE")),
                .init(state: .failure, matcher: try! JMESPathMatcher("service.status", expected: "UPDATE_FAILED_CLEANUP_FAILED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("service.status", expected: "UPDATE_FAILED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("service.status", expected: "UPDATE_COMPLETE_CLEANUP_FAILED")),
            ],
            minDelayTime: .seconds(5),
            command: getService
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}
