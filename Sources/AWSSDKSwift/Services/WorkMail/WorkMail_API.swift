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
Client object for interacting with AWS WorkMail service.

Amazon WorkMail is a secure, managed business email and calendaring service with support for existing desktop and mobile email clients. You can access your email, contacts, and calendars using Microsoft Outlook, your browser, or other native iOS and Android email applications. You can integrate WorkMail with your existing corporate directory and control both the keys that encrypt your data and the location in which your data is stored. The WorkMail API is designed for the following scenarios:   Listing and describing organizations     Managing users     Managing groups     Managing resources   All WorkMail API operations are Amazon-authenticated and certificate-signed. They not only require the use of the AWS SDK, but also allow for the exclusive use of AWS Identity and Access Management users and roles to help facilitate access, trust, and permission policies. By creating a role and allowing an IAM user to access the WorkMail site, the IAM user gains full administrative visibility into the entire WorkMail organization (or as set in the IAM policy). This includes, but is not limited to, the ability to create, update, and delete users, groups, and resources. This allows developers to perform the scenarios listed above, as well as give users the ability to grant access on a selective basis using the IAM model.
*/
public struct WorkMail {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the WorkMail client
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
            amzTarget: "WorkMailService",
            service: "workmail",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-10-01",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [WorkMailErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Adds a member (user or group) to the resource's set of delegates.
    public func associateDelegateToResource(_ input: AssociateDelegateToResourceRequest) -> EventLoopFuture<AssociateDelegateToResourceResponse> {
        return client.send(operation: "AssociateDelegateToResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds a member (user or group) to the group's set.
    public func associateMemberToGroup(_ input: AssociateMemberToGroupRequest) -> EventLoopFuture<AssociateMemberToGroupResponse> {
        return client.send(operation: "AssociateMemberToGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds an alias to the set of a given member (user or group) of Amazon WorkMail.
    public func createAlias(_ input: CreateAliasRequest) -> EventLoopFuture<CreateAliasResponse> {
        return client.send(operation: "CreateAlias", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a group that can be used in Amazon WorkMail by calling the RegisterToWorkMail operation.
    public func createGroup(_ input: CreateGroupRequest) -> EventLoopFuture<CreateGroupResponse> {
        return client.send(operation: "CreateGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new Amazon WorkMail resource. 
    public func createResource(_ input: CreateResourceRequest) -> EventLoopFuture<CreateResourceResponse> {
        return client.send(operation: "CreateResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a user who can be used in Amazon WorkMail by calling the RegisterToWorkMail operation.
    public func createUser(_ input: CreateUserRequest) -> EventLoopFuture<CreateUserResponse> {
        return client.send(operation: "CreateUser", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an access control rule for the specified WorkMail organization.
    public func deleteAccessControlRule(_ input: DeleteAccessControlRuleRequest) -> EventLoopFuture<DeleteAccessControlRuleResponse> {
        return client.send(operation: "DeleteAccessControlRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Remove one or more specified aliases from a set of aliases for a given user.
    public func deleteAlias(_ input: DeleteAliasRequest) -> EventLoopFuture<DeleteAliasResponse> {
        return client.send(operation: "DeleteAlias", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a group from Amazon WorkMail.
    public func deleteGroup(_ input: DeleteGroupRequest) -> EventLoopFuture<DeleteGroupResponse> {
        return client.send(operation: "DeleteGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes permissions granted to a member (user or group).
    public func deleteMailboxPermissions(_ input: DeleteMailboxPermissionsRequest) -> EventLoopFuture<DeleteMailboxPermissionsResponse> {
        return client.send(operation: "DeleteMailboxPermissions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified resource. 
    public func deleteResource(_ input: DeleteResourceRequest) -> EventLoopFuture<DeleteResourceResponse> {
        return client.send(operation: "DeleteResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a user from Amazon WorkMail and all subsequent systems. Before you can delete a user, the user state must be DISABLED. Use the DescribeUser action to confirm the user state. Deleting a user is permanent and cannot be undone. WorkMail archives user mailboxes for 30 days before they are permanently removed.
    public func deleteUser(_ input: DeleteUserRequest) -> EventLoopFuture<DeleteUserResponse> {
        return client.send(operation: "DeleteUser", path: "/", httpMethod: "POST", input: input)
    }

    ///  Mark a user, group, or resource as no longer used in Amazon WorkMail. This action disassociates the mailbox and schedules it for clean-up. WorkMail keeps mailboxes for 30 days before they are permanently removed. The functionality in the console is Disable.
    public func deregisterFromWorkMail(_ input: DeregisterFromWorkMailRequest) -> EventLoopFuture<DeregisterFromWorkMailResponse> {
        return client.send(operation: "DeregisterFromWorkMail", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the data available for the group.
    public func describeGroup(_ input: DescribeGroupRequest) -> EventLoopFuture<DescribeGroupResponse> {
        return client.send(operation: "DescribeGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides more information regarding a given organization based on its identifier.
    public func describeOrganization(_ input: DescribeOrganizationRequest) -> EventLoopFuture<DescribeOrganizationResponse> {
        return client.send(operation: "DescribeOrganization", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the data available for the resource.
    public func describeResource(_ input: DescribeResourceRequest) -> EventLoopFuture<DescribeResourceResponse> {
        return client.send(operation: "DescribeResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides information regarding the user.
    public func describeUser(_ input: DescribeUserRequest) -> EventLoopFuture<DescribeUserResponse> {
        return client.send(operation: "DescribeUser", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a member from the resource's set of delegates.
    public func disassociateDelegateFromResource(_ input: DisassociateDelegateFromResourceRequest) -> EventLoopFuture<DisassociateDelegateFromResourceResponse> {
        return client.send(operation: "DisassociateDelegateFromResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a member from a group.
    public func disassociateMemberFromGroup(_ input: DisassociateMemberFromGroupRequest) -> EventLoopFuture<DisassociateMemberFromGroupResponse> {
        return client.send(operation: "DisassociateMemberFromGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the effects of an organization's access control rules as they apply to a specified IPv4 address, access protocol action, or user ID. 
    public func getAccessControlEffect(_ input: GetAccessControlEffectRequest) -> EventLoopFuture<GetAccessControlEffectResponse> {
        return client.send(operation: "GetAccessControlEffect", path: "/", httpMethod: "POST", input: input)
    }

    ///  Requests a user's mailbox details for a specified organization and user.
    public func getMailboxDetails(_ input: GetMailboxDetailsRequest) -> EventLoopFuture<GetMailboxDetailsResponse> {
        return client.send(operation: "GetMailboxDetails", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the access control rules for the specified organization.
    public func listAccessControlRules(_ input: ListAccessControlRulesRequest) -> EventLoopFuture<ListAccessControlRulesResponse> {
        return client.send(operation: "ListAccessControlRules", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a paginated call to list the aliases associated with a given entity.
    public func listAliases(_ input: ListAliasesRequest) -> EventLoopFuture<ListAliasesResponse> {
        return client.send(operation: "ListAliases", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns an overview of the members of a group. Users and groups can be members of a group.
    public func listGroupMembers(_ input: ListGroupMembersRequest) -> EventLoopFuture<ListGroupMembersResponse> {
        return client.send(operation: "ListGroupMembers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns summaries of the organization's groups.
    public func listGroups(_ input: ListGroupsRequest) -> EventLoopFuture<ListGroupsResponse> {
        return client.send(operation: "ListGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the mailbox permissions associated with a user, group, or resource mailbox.
    public func listMailboxPermissions(_ input: ListMailboxPermissionsRequest) -> EventLoopFuture<ListMailboxPermissionsResponse> {
        return client.send(operation: "ListMailboxPermissions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns summaries of the customer's non-deleted organizations.
    public func listOrganizations(_ input: ListOrganizationsRequest) -> EventLoopFuture<ListOrganizationsResponse> {
        return client.send(operation: "ListOrganizations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the delegates associated with a resource. Users and groups can be resource delegates and answer requests on behalf of the resource.
    public func listResourceDelegates(_ input: ListResourceDelegatesRequest) -> EventLoopFuture<ListResourceDelegatesResponse> {
        return client.send(operation: "ListResourceDelegates", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns summaries of the organization's resources.
    public func listResources(_ input: ListResourcesRequest) -> EventLoopFuture<ListResourcesResponse> {
        return client.send(operation: "ListResources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the tags applied to an Amazon WorkMail organization resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns summaries of the organization's users.
    public func listUsers(_ input: ListUsersRequest) -> EventLoopFuture<ListUsersResponse> {
        return client.send(operation: "ListUsers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds a new access control rule for the specified organization. The rule allows or denies access to the organization for the specified IPv4 addresses, access protocol actions, and user IDs. Adding a new rule with the same name as an existing rule replaces the older rule.
    public func putAccessControlRule(_ input: PutAccessControlRuleRequest) -> EventLoopFuture<PutAccessControlRuleResponse> {
        return client.send(operation: "PutAccessControlRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets permissions for a user, group, or resource. This replaces any pre-existing permissions.
    public func putMailboxPermissions(_ input: PutMailboxPermissionsRequest) -> EventLoopFuture<PutMailboxPermissionsResponse> {
        return client.send(operation: "PutMailboxPermissions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Registers an existing and disabled user, group, or resource for Amazon WorkMail use by associating a mailbox and calendaring capabilities. It performs no change if the user, group, or resource is enabled and fails if the user, group, or resource is deleted. This operation results in the accumulation of costs. For more information, see Pricing. The equivalent console functionality for this operation is Enable.  Users can either be created by calling the CreateUser API operation or they can be synchronized from your directory. For more information, see DeregisterFromWorkMail.
    public func registerToWorkMail(_ input: RegisterToWorkMailRequest) -> EventLoopFuture<RegisterToWorkMailResponse> {
        return client.send(operation: "RegisterToWorkMail", path: "/", httpMethod: "POST", input: input)
    }

    ///  Allows the administrator to reset the password for a user.
    public func resetPassword(_ input: ResetPasswordRequest) -> EventLoopFuture<ResetPasswordResponse> {
        return client.send(operation: "ResetPassword", path: "/", httpMethod: "POST", input: input)
    }

    ///  Applies the specified tags to the specified Amazon WorkMail organization resource.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Untags the specified tags from the specified Amazon WorkMail organization resource.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a user's current mailbox quota for a specified organization and user.
    public func updateMailboxQuota(_ input: UpdateMailboxQuotaRequest) -> EventLoopFuture<UpdateMailboxQuotaResponse> {
        return client.send(operation: "UpdateMailboxQuota", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the primary email for a user, group, or resource. The current email is moved into the list of aliases (or swapped between an existing alias and the current primary email), and the email provided in the input is promoted as the primary.
    public func updatePrimaryEmailAddress(_ input: UpdatePrimaryEmailAddressRequest) -> EventLoopFuture<UpdatePrimaryEmailAddressResponse> {
        return client.send(operation: "UpdatePrimaryEmailAddress", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates data for the resource. To have the latest information, it must be preceded by a DescribeResource call. The dataset in the request should be the one expected when performing another DescribeResource call.
    public func updateResource(_ input: UpdateResourceRequest) -> EventLoopFuture<UpdateResourceResponse> {
        return client.send(operation: "UpdateResource", path: "/", httpMethod: "POST", input: input)
    }
}
