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
Client object for interacting with AWS IoT1ClickProjects service.

The AWS IoT 1-Click Projects API Reference
*/
public struct IoT1ClickProjects {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the IoT1ClickProjects client
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
            service: "projects.iot1click",
            signingName: "iot1click",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-05-14",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [IoT1ClickProjectsErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Associates a physical device with a placement.
    public func associateDeviceWithPlacement(_ input: AssociateDeviceWithPlacementRequest) -> EventLoopFuture<AssociateDeviceWithPlacementResponse> {
        return client.send(operation: "AssociateDeviceWithPlacement", path: "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", httpMethod: "PUT", input: input)
    }

    ///  Creates an empty placement.
    public func createPlacement(_ input: CreatePlacementRequest) -> EventLoopFuture<CreatePlacementResponse> {
        return client.send(operation: "CreatePlacement", path: "/projects/{projectName}/placements", httpMethod: "POST", input: input)
    }

    ///  Creates an empty project with a placement template. A project contains zero or more placements that adhere to the placement template defined in the project.
    public func createProject(_ input: CreateProjectRequest) -> EventLoopFuture<CreateProjectResponse> {
        return client.send(operation: "CreateProject", path: "/projects", httpMethod: "POST", input: input)
    }

    ///  Deletes a placement. To delete a placement, it must not have any devices associated with it.  When you delete a placement, all associated data becomes irretrievable. 
    public func deletePlacement(_ input: DeletePlacementRequest) -> EventLoopFuture<DeletePlacementResponse> {
        return client.send(operation: "DeletePlacement", path: "/projects/{projectName}/placements/{placementName}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a project. To delete a project, it must not have any placements associated with it.  When you delete a project, all associated data becomes irretrievable. 
    public func deleteProject(_ input: DeleteProjectRequest) -> EventLoopFuture<DeleteProjectResponse> {
        return client.send(operation: "DeleteProject", path: "/projects/{projectName}", httpMethod: "DELETE", input: input)
    }

    ///  Describes a placement in a project.
    public func describePlacement(_ input: DescribePlacementRequest) -> EventLoopFuture<DescribePlacementResponse> {
        return client.send(operation: "DescribePlacement", path: "/projects/{projectName}/placements/{placementName}", httpMethod: "GET", input: input)
    }

    ///  Returns an object describing a project.
    public func describeProject(_ input: DescribeProjectRequest) -> EventLoopFuture<DescribeProjectResponse> {
        return client.send(operation: "DescribeProject", path: "/projects/{projectName}", httpMethod: "GET", input: input)
    }

    ///  Removes a physical device from a placement.
    public func disassociateDeviceFromPlacement(_ input: DisassociateDeviceFromPlacementRequest) -> EventLoopFuture<DisassociateDeviceFromPlacementResponse> {
        return client.send(operation: "DisassociateDeviceFromPlacement", path: "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", httpMethod: "DELETE", input: input)
    }

    ///  Returns an object enumerating the devices in a placement.
    public func getDevicesInPlacement(_ input: GetDevicesInPlacementRequest) -> EventLoopFuture<GetDevicesInPlacementResponse> {
        return client.send(operation: "GetDevicesInPlacement", path: "/projects/{projectName}/placements/{placementName}/devices", httpMethod: "GET", input: input)
    }

    ///  Lists the placement(s) of a project.
    public func listPlacements(_ input: ListPlacementsRequest) -> EventLoopFuture<ListPlacementsResponse> {
        return client.send(operation: "ListPlacements", path: "/projects/{projectName}/placements", httpMethod: "GET", input: input)
    }

    ///  Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.
    public func listProjects(_ input: ListProjectsRequest) -> EventLoopFuture<ListProjectsResponse> {
        return client.send(operation: "ListProjects", path: "/projects", httpMethod: "GET", input: input)
    }

    ///  Lists the tags (metadata key/value pairs) which you have assigned to the resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", input: input)
    }

    ///  Creates or modifies tags for a resource. Tags are key/value pairs (metadata) that can be used to manage a resource. For more information, see AWS Tagging Strategies.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input)
    }

    ///  Removes one or more tags (metadata key/value pairs) from a resource.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", input: input)
    }

    ///  Updates a placement with the given attributes. To clear an attribute, pass an empty value (i.e., "").
    public func updatePlacement(_ input: UpdatePlacementRequest) -> EventLoopFuture<UpdatePlacementResponse> {
        return client.send(operation: "UpdatePlacement", path: "/projects/{projectName}/placements/{placementName}", httpMethod: "PUT", input: input)
    }

    ///  Updates a project associated with your AWS account and region. With the exception of device template names, you can pass just the values that need to be updated because the update request will change only the values that are provided. To clear a value, pass the empty string (i.e., "").
    public func updateProject(_ input: UpdateProjectRequest) -> EventLoopFuture<UpdateProjectResponse> {
        return client.send(operation: "UpdateProject", path: "/projects/{projectName}", httpMethod: "PUT", input: input)
    }
}
