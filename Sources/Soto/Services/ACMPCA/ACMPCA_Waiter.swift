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

extension ACMPCA {
    public func AuditReportCreatedWaiter(
        _ input: DescribeCertificateAuthorityAuditReportRequest,
        maxWaitTime: TimeAmount,
        logger: Logger,
        on eventLoop: EventLoop
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSPathMatcher(path: \DescribeCertificateAuthorityAuditReportResponse.auditReportStatus, expected: .success)),
                .init(state: .failure, matcher: AWSPathMatcher(path: \DescribeCertificateAuthorityAuditReportResponse.auditReportStatus, expected: .failed)),
            ],
            command: describeCertificateAuthorityAuditReport
        )
        return self.client.wait(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func CertificateAuthorityCSRCreatedWaiter(
        _ input: GetCertificateAuthorityCsrRequest,
        maxWaitTime: TimeAmount,
        logger: Logger,
        on eventLoop: EventLoop
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .retry, matcher: AWSErrorCodeMatcher("RequestInProgressException")),
            ],
            command: getCertificateAuthorityCsr
        )
        return self.client.wait(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func CertificateIssuedWaiter(
        _ input: GetCertificateRequest,
        maxWaitTime: TimeAmount,
        logger: Logger,
        on eventLoop: EventLoop
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .retry, matcher: AWSErrorCodeMatcher("RequestInProgressException")),
            ],
            command: getCertificate
        )
        return self.client.wait(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}
