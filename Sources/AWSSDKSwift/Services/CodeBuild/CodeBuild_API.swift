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
Client object for interacting with AWS CodeBuild service.

AWS CodeBuild AWS CodeBuild is a fully managed build service in the cloud. AWS CodeBuild compiles your source code, runs unit tests, and produces artifacts that are ready to deploy. AWS CodeBuild eliminates the need to provision, manage, and scale your own build servers. It provides prepackaged build environments for the most popular programming languages and build tools, such as Apache Maven, Gradle, and more. You can also fully customize build environments in AWS CodeBuild to use your own build tools. AWS CodeBuild scales automatically to meet peak build requests. You pay only for the build time you consume. For more information about AWS CodeBuild, see the  AWS CodeBuild User Guide.  AWS CodeBuild supports these operations:    BatchDeleteBuilds: Deletes one or more builds.    BatchGetBuilds: Gets information about one or more builds.    BatchGetProjects: Gets information about one or more build projects. A build project defines how AWS CodeBuild runs a build. This includes information such as where to get the source code to build, the build environment to use, the build commands to run, and where to store the build output. A build environment is a representation of operating system, programming language runtime, and tools that AWS CodeBuild uses to run a build. You can add tags to build projects to help manage your resources and costs.    BatchGetReportGroups: Returns an array of report groups.     BatchGetReports: Returns an array of reports.     CreateProject: Creates a build project.    CreateReportGroup: Creates a report group. A report group contains a collection of reports.     CreateWebhook: For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, enables AWS CodeBuild to start rebuilding the source code every time a code change is pushed to the repository.    DeleteProject: Deletes a build project.    DeleteReport: Deletes a report.     DeleteReportGroup: Deletes a report group.     DeleteResourcePolicy: Deletes a resource policy that is identified by its resource ARN.     DeleteSourceCredentials: Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials.    DeleteWebhook: For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, stops AWS CodeBuild from rebuilding the source code every time a code change is pushed to the repository.    DescribeTestCases: Returns a list of details about test cases for a report.     GetResourcePolicy: Gets a resource policy that is identified by its resource ARN.     ImportSourceCredentials: Imports the source repository credentials for an AWS CodeBuild project that has its source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository.    InvalidateProjectCache: Resets the cache for a project.    ListBuilds: Gets a list of build IDs, with each build ID representing a single build.    ListBuildsForProject: Gets a list of build IDs for the specified build project, with each build ID representing a single build.    ListCuratedEnvironmentImages: Gets information about Docker images that are managed by AWS CodeBuild.    ListProjects: Gets a list of build project names, with each build project name representing a single build project.    ListReportGroups: Gets a list ARNs for the report groups in the current AWS account.     ListReports: Gets a list ARNs for the reports in the current AWS account.     ListReportsForReportGroup: Returns a list of ARNs for the reports that belong to a ReportGroup.     ListSharedProjects: Gets a list of ARNs associated with projects shared with the current AWS account or user.    ListSharedReportGroups: Gets a list of ARNs associated with report groups shared with the current AWS account or user    ListSourceCredentials: Returns a list of SourceCredentialsInfo objects. Each SourceCredentialsInfo object includes the authentication type, token ARN, and type of source provider for one set of credentials.    PutResourcePolicy: Stores a resource policy for the ARN of a Project or ReportGroup object.     StartBuild: Starts running a build.    StopBuild: Attempts to stop running a build.    UpdateProject: Changes the settings of an existing build project.    UpdateReportGroup: Changes a report group.    UpdateWebhook: Changes the settings of an existing webhook.  
*/
public struct CodeBuild {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the CodeBuild client
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
            amzTarget: "CodeBuild_20161006",
            service: "codebuild",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2016-10-06",
            endpoint: endpoint,
            serviceEndpoints: ["us-east-1-fips": "codebuild-fips.us-east-1.amazonaws.com", "us-east-2-fips": "codebuild-fips.us-east-2.amazonaws.com", "us-west-1-fips": "codebuild-fips.us-west-1.amazonaws.com", "us-west-2-fips": "codebuild-fips.us-west-2.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [CodeBuildErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Deletes one or more builds.
    public func batchDeleteBuilds(_ input: BatchDeleteBuildsInput) -> EventLoopFuture<BatchDeleteBuildsOutput> {
        return client.send(operation: "BatchDeleteBuilds", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about one or more builds.
    public func batchGetBuilds(_ input: BatchGetBuildsInput) -> EventLoopFuture<BatchGetBuildsOutput> {
        return client.send(operation: "BatchGetBuilds", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about one or more build projects.
    public func batchGetProjects(_ input: BatchGetProjectsInput) -> EventLoopFuture<BatchGetProjectsOutput> {
        return client.send(operation: "BatchGetProjects", path: "/", httpMethod: "POST", input: input)
    }

    ///   Returns an array of report groups. 
    public func batchGetReportGroups(_ input: BatchGetReportGroupsInput) -> EventLoopFuture<BatchGetReportGroupsOutput> {
        return client.send(operation: "BatchGetReportGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///   Returns an array of reports. 
    public func batchGetReports(_ input: BatchGetReportsInput) -> EventLoopFuture<BatchGetReportsOutput> {
        return client.send(operation: "BatchGetReports", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a build project.
    public func createProject(_ input: CreateProjectInput) -> EventLoopFuture<CreateProjectOutput> {
        return client.send(operation: "CreateProject", path: "/", httpMethod: "POST", input: input)
    }

    ///   Creates a report group. A report group contains a collection of reports. 
    public func createReportGroup(_ input: CreateReportGroupInput) -> EventLoopFuture<CreateReportGroupOutput> {
        return client.send(operation: "CreateReportGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, enables AWS CodeBuild to start rebuilding the source code every time a code change is pushed to the repository.  If you enable webhooks for an AWS CodeBuild project, and the project is used as a build step in AWS CodePipeline, then two identical builds are created for each commit. One build is triggered through webhooks, and one through AWS CodePipeline. Because billing is on a per-build basis, you are billed for both builds. Therefore, if you are using AWS CodePipeline, we recommend that you disable webhooks in AWS CodeBuild. In the AWS CodeBuild console, clear the Webhook box. For more information, see step 5 in Change a Build Project's Settings. 
    public func createWebhook(_ input: CreateWebhookInput) -> EventLoopFuture<CreateWebhookOutput> {
        return client.send(operation: "CreateWebhook", path: "/", httpMethod: "POST", input: input)
    }

    ///   Deletes a build project. When you delete a project, its builds are not deleted. 
    public func deleteProject(_ input: DeleteProjectInput) -> EventLoopFuture<DeleteProjectOutput> {
        return client.send(operation: "DeleteProject", path: "/", httpMethod: "POST", input: input)
    }

    ///   Deletes a report. 
    public func deleteReport(_ input: DeleteReportInput) -> EventLoopFuture<DeleteReportOutput> {
        return client.send(operation: "DeleteReport", path: "/", httpMethod: "POST", input: input)
    }

    ///   DeleteReportGroup: Deletes a report group. Before you delete a report group, you must delete its reports. Use ListReportsForReportGroup to get the reports in a report group. Use DeleteReport to delete the reports. If you call DeleteReportGroup for a report group that contains one or more reports, an exception is thrown. 
    public func deleteReportGroup(_ input: DeleteReportGroupInput) -> EventLoopFuture<DeleteReportGroupOutput> {
        return client.send(operation: "DeleteReportGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///   Deletes a resource policy that is identified by its resource ARN. 
    public func deleteResourcePolicy(_ input: DeleteResourcePolicyInput) -> EventLoopFuture<DeleteResourcePolicyOutput> {
        return client.send(operation: "DeleteResourcePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///   Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials. 
    public func deleteSourceCredentials(_ input: DeleteSourceCredentialsInput) -> EventLoopFuture<DeleteSourceCredentialsOutput> {
        return client.send(operation: "DeleteSourceCredentials", path: "/", httpMethod: "POST", input: input)
    }

    ///  For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, stops AWS CodeBuild from rebuilding the source code every time a code change is pushed to the repository.
    public func deleteWebhook(_ input: DeleteWebhookInput) -> EventLoopFuture<DeleteWebhookOutput> {
        return client.send(operation: "DeleteWebhook", path: "/", httpMethod: "POST", input: input)
    }

    ///   Returns a list of details about test cases for a report. 
    public func describeTestCases(_ input: DescribeTestCasesInput) -> EventLoopFuture<DescribeTestCasesOutput> {
        return client.send(operation: "DescribeTestCases", path: "/", httpMethod: "POST", input: input)
    }

    ///   Gets a resource policy that is identified by its resource ARN. 
    public func getResourcePolicy(_ input: GetResourcePolicyInput) -> EventLoopFuture<GetResourcePolicyOutput> {
        return client.send(operation: "GetResourcePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///   Imports the source repository credentials for an AWS CodeBuild project that has its source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository. 
    public func importSourceCredentials(_ input: ImportSourceCredentialsInput) -> EventLoopFuture<ImportSourceCredentialsOutput> {
        return client.send(operation: "ImportSourceCredentials", path: "/", httpMethod: "POST", input: input)
    }

    ///  Resets the cache for a project.
    public func invalidateProjectCache(_ input: InvalidateProjectCacheInput) -> EventLoopFuture<InvalidateProjectCacheOutput> {
        return client.send(operation: "InvalidateProjectCache", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of build IDs, with each build ID representing a single build.
    public func listBuilds(_ input: ListBuildsInput) -> EventLoopFuture<ListBuildsOutput> {
        return client.send(operation: "ListBuilds", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of build IDs for the specified build project, with each build ID representing a single build.
    public func listBuildsForProject(_ input: ListBuildsForProjectInput) -> EventLoopFuture<ListBuildsForProjectOutput> {
        return client.send(operation: "ListBuildsForProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about Docker images that are managed by AWS CodeBuild.
    public func listCuratedEnvironmentImages(_ input: ListCuratedEnvironmentImagesInput) -> EventLoopFuture<ListCuratedEnvironmentImagesOutput> {
        return client.send(operation: "ListCuratedEnvironmentImages", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of build project names, with each build project name representing a single build project.
    public func listProjects(_ input: ListProjectsInput) -> EventLoopFuture<ListProjectsOutput> {
        return client.send(operation: "ListProjects", path: "/", httpMethod: "POST", input: input)
    }

    ///   Gets a list ARNs for the report groups in the current AWS account. 
    public func listReportGroups(_ input: ListReportGroupsInput) -> EventLoopFuture<ListReportGroupsOutput> {
        return client.send(operation: "ListReportGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///   Returns a list of ARNs for the reports in the current AWS account. 
    public func listReports(_ input: ListReportsInput) -> EventLoopFuture<ListReportsOutput> {
        return client.send(operation: "ListReports", path: "/", httpMethod: "POST", input: input)
    }

    ///   Returns a list of ARNs for the reports that belong to a ReportGroup. 
    public func listReportsForReportGroup(_ input: ListReportsForReportGroupInput) -> EventLoopFuture<ListReportsForReportGroupOutput> {
        return client.send(operation: "ListReportsForReportGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///   Gets a list of projects that are shared with other AWS accounts or users. 
    public func listSharedProjects(_ input: ListSharedProjectsInput) -> EventLoopFuture<ListSharedProjectsOutput> {
        return client.send(operation: "ListSharedProjects", path: "/", httpMethod: "POST", input: input)
    }

    ///   Gets a list of report groups that are shared with other AWS accounts or users. 
    public func listSharedReportGroups(_ input: ListSharedReportGroupsInput) -> EventLoopFuture<ListSharedReportGroupsOutput> {
        return client.send(operation: "ListSharedReportGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///   Returns a list of SourceCredentialsInfo objects. 
    public func listSourceCredentials(_ input: ListSourceCredentialsInput) -> EventLoopFuture<ListSourceCredentialsOutput> {
        return client.send(operation: "ListSourceCredentials", path: "/", httpMethod: "POST", input: input)
    }

    ///   Stores a resource policy for the ARN of a Project or ReportGroup object. 
    public func putResourcePolicy(_ input: PutResourcePolicyInput) -> EventLoopFuture<PutResourcePolicyOutput> {
        return client.send(operation: "PutResourcePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts running a build.
    public func startBuild(_ input: StartBuildInput) -> EventLoopFuture<StartBuildOutput> {
        return client.send(operation: "StartBuild", path: "/", httpMethod: "POST", input: input)
    }

    ///  Attempts to stop running a build.
    public func stopBuild(_ input: StopBuildInput) -> EventLoopFuture<StopBuildOutput> {
        return client.send(operation: "StopBuild", path: "/", httpMethod: "POST", input: input)
    }

    ///  Changes the settings of a build project.
    public func updateProject(_ input: UpdateProjectInput) -> EventLoopFuture<UpdateProjectOutput> {
        return client.send(operation: "UpdateProject", path: "/", httpMethod: "POST", input: input)
    }

    ///   Updates a report group. 
    public func updateReportGroup(_ input: UpdateReportGroupInput) -> EventLoopFuture<UpdateReportGroupOutput> {
        return client.send(operation: "UpdateReportGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///   Updates the webhook associated with an AWS CodeBuild build project.    If you use Bitbucket for your repository, rotateSecret is ignored.  
    public func updateWebhook(_ input: UpdateWebhookInput) -> EventLoopFuture<UpdateWebhookOutput> {
        return client.send(operation: "UpdateWebhook", path: "/", httpMethod: "POST", input: input)
    }
}
