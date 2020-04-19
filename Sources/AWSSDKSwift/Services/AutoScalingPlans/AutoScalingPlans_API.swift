//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS AutoScalingPlans service.

AWS Auto Scaling Use AWS Auto Scaling to quickly discover all the scalable AWS resources for your application and configure dynamic scaling and predictive scaling for your resources using scaling plans. Use this service in conjunction with the Amazon EC2 Auto Scaling, Application Auto Scaling, Amazon CloudWatch, and AWS CloudFormation services.  Currently, predictive scaling is only available for Amazon EC2 Auto Scaling groups. For more information about AWS Auto Scaling, including information about granting IAM users required permissions for AWS Auto Scaling actions, see the AWS Auto Scaling User Guide.
*/
public struct AutoScalingPlans {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the AutoScalingPlans client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "AnyScaleScalingPlannerFrontendService",
            service: "autoscaling-plans",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-01-06",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [AutoScalingPlansErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a scaling plan.
    public func createScalingPlan(_ input: CreateScalingPlanRequest) -> EventLoopFuture<CreateScalingPlanResponse> {
        return client.send(operation: "CreateScalingPlan", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified scaling plan. Deleting a scaling plan deletes the underlying ScalingInstruction for all of the scalable resources that are covered by the plan. If the plan has launched resources or has scaling activities in progress, you must delete those resources separately.
    public func deleteScalingPlan(_ input: DeleteScalingPlanRequest) -> EventLoopFuture<DeleteScalingPlanResponse> {
        return client.send(operation: "DeleteScalingPlan", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the scalable resources in the specified scaling plan.
    public func describeScalingPlanResources(_ input: DescribeScalingPlanResourcesRequest) -> EventLoopFuture<DescribeScalingPlanResourcesResponse> {
        return client.send(operation: "DescribeScalingPlanResources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes one or more of your scaling plans.
    public func describeScalingPlans(_ input: DescribeScalingPlansRequest) -> EventLoopFuture<DescribeScalingPlansResponse> {
        return client.send(operation: "DescribeScalingPlans", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the forecast data for a scalable resource. Capacity forecasts are represented as predicted values, or data points, that are calculated using historical data points from a specified CloudWatch load metric. Data points are available for up to 56 days. 
    public func getScalingPlanResourceForecastData(_ input: GetScalingPlanResourceForecastDataRequest) -> EventLoopFuture<GetScalingPlanResourceForecastDataResponse> {
        return client.send(operation: "GetScalingPlanResourceForecastData", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the specified scaling plan. You cannot update a scaling plan if it is in the process of being created, updated, or deleted.
    public func updateScalingPlan(_ input: UpdateScalingPlanRequest) -> EventLoopFuture<UpdateScalingPlanResponse> {
        return client.send(operation: "UpdateScalingPlan", path: "/", httpMethod: "POST", input: input)
    }
}
