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
Client object for interacting with AWS ElastiCache service.

Amazon ElastiCache Amazon ElastiCache is a web service that makes it easier to set up, operate, and scale a distributed cache in the cloud. With ElastiCache, customers get all of the benefits of a high-performance, in-memory cache with less of the administrative burden involved in launching and managing a distributed cache. The service makes setup, scaling, and cluster failure handling much simpler than in a self-managed cache deployment. In addition, through integration with Amazon CloudWatch, customers get enhanced visibility into the key performance statistics associated with their cache and can receive alarms if a part of their cache runs hot.
*/
public struct ElastiCache {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the ElastiCache client
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
            service: "elasticache",
            serviceProtocol: ServiceProtocol(type: .query),
            apiVersion: "2015-02-02",
            endpoint: endpoint,
            serviceEndpoints: ["fips": "elasticache-fips.us-west-1.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [ElastiCacheErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Adds up to 50 cost allocation tags to the named resource. A cost allocation tag is a key-value pair where the key and value are case-sensitive. You can use cost allocation tags to categorize and track your AWS costs.  When you apply tags to your ElastiCache resources, AWS generates a cost allocation report as a comma-separated value (CSV) file with your usage and costs aggregated by your tags. You can apply tags that represent business categories (such as cost centers, application names, or owners) to organize your costs across multiple services. For more information, see Using Cost Allocation Tags in Amazon ElastiCache in the ElastiCache User Guide.
    public func addTagsToResource(_ input: AddTagsToResourceMessage) -> EventLoopFuture<TagListMessage> {
        return client.send(operation: "AddTagsToResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Allows network ingress to a cache security group. Applications using ElastiCache must be running on Amazon EC2, and Amazon EC2 security groups are used as the authorization mechanism.  You cannot authorize ingress from an Amazon EC2 security group in one region to an ElastiCache cluster in another region. 
    public func authorizeCacheSecurityGroupIngress(_ input: AuthorizeCacheSecurityGroupIngressMessage) -> EventLoopFuture<AuthorizeCacheSecurityGroupIngressResult> {
        return client.send(operation: "AuthorizeCacheSecurityGroupIngress", path: "/", httpMethod: "POST", input: input)
    }

    ///  Apply the service update. For more information on service updates and applying them, see Applying Service Updates.
    public func batchApplyUpdateAction(_ input: BatchApplyUpdateActionMessage) -> EventLoopFuture<UpdateActionResultsMessage> {
        return client.send(operation: "BatchApplyUpdateAction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stop the service update. For more information on service updates and stopping them, see Stopping Service Updates.
    public func batchStopUpdateAction(_ input: BatchStopUpdateActionMessage) -> EventLoopFuture<UpdateActionResultsMessage> {
        return client.send(operation: "BatchStopUpdateAction", path: "/", httpMethod: "POST", input: input)
    }

    ///  Complete the migration of data.
    public func completeMigration(_ input: CompleteMigrationMessage) -> EventLoopFuture<CompleteMigrationResponse> {
        return client.send(operation: "CompleteMigration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Makes a copy of an existing snapshot.  This operation is valid for Redis only.   Users or groups that have permissions to use the CopySnapshot operation can create their own Amazon S3 buckets and copy snapshots to it. To control access to your snapshots, use an IAM policy to control who has the ability to use the CopySnapshot operation. For more information about using IAM to control the use of ElastiCache operations, see Exporting Snapshots and Authentication &amp; Access Control.  You could receive the following error messages.  Error Messages     Error Message: The S3 bucket %s is outside of the region.  Solution: Create an Amazon S3 bucket in the same region as your snapshot. For more information, see Step 1: Create an Amazon S3 Bucket in the ElastiCache User Guide.    Error Message: The S3 bucket %s does not exist.  Solution: Create an Amazon S3 bucket in the same region as your snapshot. For more information, see Step 1: Create an Amazon S3 Bucket in the ElastiCache User Guide.    Error Message: The S3 bucket %s is not owned by the authenticated user.  Solution: Create an Amazon S3 bucket in the same region as your snapshot. For more information, see Step 1: Create an Amazon S3 Bucket in the ElastiCache User Guide.    Error Message: The authenticated user does not have sufficient permissions to perform the desired activity.  Solution: Contact your system administrator to get the needed permissions.    Error Message: The S3 bucket %s already contains an object with key %s.  Solution: Give the TargetSnapshotName a new and unique value. If exporting a snapshot, you could alternatively create a new Amazon S3 bucket and use this same value for TargetSnapshotName.    Error Message:  ElastiCache has not been granted READ permissions %s on the S3 Bucket.  Solution: Add List and Read permissions on the bucket. For more information, see Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket in the ElastiCache User Guide.    Error Message:  ElastiCache has not been granted WRITE permissions %s on the S3 Bucket.  Solution: Add Upload/Delete permissions on the bucket. For more information, see Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket in the ElastiCache User Guide.    Error Message:  ElastiCache has not been granted READ_ACP permissions %s on the S3 Bucket.  Solution: Add View Permissions on the bucket. For more information, see Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket in the ElastiCache User Guide.  
    public func copySnapshot(_ input: CopySnapshotMessage) -> EventLoopFuture<CopySnapshotResult> {
        return client.send(operation: "CopySnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a cluster. All nodes in the cluster run the same protocol-compliant cache engine software, either Memcached or Redis. This operation is not supported for Redis (cluster mode enabled) clusters.
    public func createCacheCluster(_ input: CreateCacheClusterMessage) -> EventLoopFuture<CreateCacheClusterResult> {
        return client.send(operation: "CreateCacheCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new Amazon ElastiCache cache parameter group. An ElastiCache cache parameter group is a collection of parameters and their values that are applied to all of the nodes in any cluster or replication group using the CacheParameterGroup. A newly created CacheParameterGroup is an exact duplicate of the default parameter group for the CacheParameterGroupFamily. To customize the newly created CacheParameterGroup you can change the values of specific parameters. For more information, see:    ModifyCacheParameterGroup in the ElastiCache API Reference.    Parameters and Parameter Groups in the ElastiCache User Guide.  
    public func createCacheParameterGroup(_ input: CreateCacheParameterGroupMessage) -> EventLoopFuture<CreateCacheParameterGroupResult> {
        return client.send(operation: "CreateCacheParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new cache security group. Use a cache security group to control access to one or more clusters. Cache security groups are only used when you are creating a cluster outside of an Amazon Virtual Private Cloud (Amazon VPC). If you are creating a cluster inside of a VPC, use a cache subnet group instead. For more information, see CreateCacheSubnetGroup.
    public func createCacheSecurityGroup(_ input: CreateCacheSecurityGroupMessage) -> EventLoopFuture<CreateCacheSecurityGroupResult> {
        return client.send(operation: "CreateCacheSecurityGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new cache subnet group. Use this parameter only when you are creating a cluster in an Amazon Virtual Private Cloud (Amazon VPC).
    public func createCacheSubnetGroup(_ input: CreateCacheSubnetGroupMessage) -> EventLoopFuture<CreateCacheSubnetGroupResult> {
        return client.send(operation: "CreateCacheSubnetGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Global Datastore for Redis offers fully managed, fast, reliable and secure cross-region replication. Using Global Datastore for Redis, you can create cross-region read replica clusters for ElastiCache for Redis to enable low-latency reads and disaster recovery across regions. For more information, see Replication Across Regions Using Global Datastore.    The GlobalReplicationGroupId is the name of the Global Datastore.   The PrimaryReplicationGroupId represents the name of the primary cluster that accepts writes and will replicate updates to the secondary cluster.  
    public func createGlobalReplicationGroup(_ input: CreateGlobalReplicationGroupMessage) -> EventLoopFuture<CreateGlobalReplicationGroupResult> {
        return client.send(operation: "CreateGlobalReplicationGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a Redis (cluster mode disabled) or a Redis (cluster mode enabled) replication group. This API can be used to create a standalone regional replication group or a secondary replication group associated with a Global Datastore. A Redis (cluster mode disabled) replication group is a collection of clusters, where one of the clusters is a read/write primary and the others are read-only replicas. Writes to the primary are asynchronously propagated to the replicas. A Redis (cluster mode enabled) replication group is a collection of 1 to 90 node groups (shards). Each node group (shard) has one read/write primary node and up to 5 read-only replica nodes. Writes to the primary are asynchronously propagated to the replicas. Redis (cluster mode enabled) replication groups partition the data across node groups (shards). When a Redis (cluster mode disabled) replication group has been successfully created, you can add one or more read replicas to it, up to a total of 5 read replicas. You cannot alter a Redis (cluster mode enabled) replication group after it has been created. However, if you need to increase or decrease the number of node groups (console: shards), you can avail yourself of ElastiCache for Redis' enhanced backup and restore. For more information, see Restoring From a Backup with Cluster Resizing in the ElastiCache User Guide.  This operation is valid for Redis only. 
    public func createReplicationGroup(_ input: CreateReplicationGroupMessage) -> EventLoopFuture<CreateReplicationGroupResult> {
        return client.send(operation: "CreateReplicationGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a copy of an entire cluster or replication group at a specific moment in time.  This operation is valid for Redis only. 
    public func createSnapshot(_ input: CreateSnapshotMessage) -> EventLoopFuture<CreateSnapshotResult> {
        return client.send(operation: "CreateSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Decreases the number of node groups in a Global Datastore
    public func decreaseNodeGroupsInGlobalReplicationGroup(_ input: DecreaseNodeGroupsInGlobalReplicationGroupMessage) -> EventLoopFuture<DecreaseNodeGroupsInGlobalReplicationGroupResult> {
        return client.send(operation: "DecreaseNodeGroupsInGlobalReplicationGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Dynamically decreases the number of replicas in a Redis (cluster mode disabled) replication group or the number of replica nodes in one or more node groups (shards) of a Redis (cluster mode enabled) replication group. This operation is performed with no cluster down time.
    public func decreaseReplicaCount(_ input: DecreaseReplicaCountMessage) -> EventLoopFuture<DecreaseReplicaCountResult> {
        return client.send(operation: "DecreaseReplicaCount", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a previously provisioned cluster. DeleteCacheCluster deletes all associated cache nodes, node endpoints and the cluster itself. When you receive a successful response from this operation, Amazon ElastiCache immediately begins deleting the cluster; you cannot cancel or revert this operation. This operation is not valid for:   Redis (cluster mode enabled) clusters   A cluster that is the last read replica of a replication group   A node group (shard) that has Multi-AZ mode enabled   A cluster from a Redis (cluster mode enabled) replication group   A cluster that is not in the available state  
    public func deleteCacheCluster(_ input: DeleteCacheClusterMessage) -> EventLoopFuture<DeleteCacheClusterResult> {
        return client.send(operation: "DeleteCacheCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified cache parameter group. You cannot delete a cache parameter group if it is associated with any cache clusters.
    @discardableResult public func deleteCacheParameterGroup(_ input: DeleteCacheParameterGroupMessage) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteCacheParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a cache security group.  You cannot delete a cache security group if it is associated with any clusters. 
    @discardableResult public func deleteCacheSecurityGroup(_ input: DeleteCacheSecurityGroupMessage) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteCacheSecurityGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a cache subnet group.  You cannot delete a cache subnet group if it is associated with any clusters. 
    @discardableResult public func deleteCacheSubnetGroup(_ input: DeleteCacheSubnetGroupMessage) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteCacheSubnetGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deleting a Global Datastore is a two-step process:    First, you must DisassociateGlobalReplicationGroup to remove the secondary clusters in the Global Datastore.   Once the Global Datastore contains only the primary cluster, you can use DeleteGlobalReplicationGroup API to delete the Global Datastore while retainining the primary cluster using Retain…= true.   Since the Global Datastore has only a primary cluster, you can delete the Global Datastore while retaining the primary by setting RetainPrimaryCluster=true. When you receive a successful response from this operation, Amazon ElastiCache immediately begins deleting the selected resources; you cannot cancel or revert this operation.  This operation is valid for Redis only. 
    public func deleteGlobalReplicationGroup(_ input: DeleteGlobalReplicationGroupMessage) -> EventLoopFuture<DeleteGlobalReplicationGroupResult> {
        return client.send(operation: "DeleteGlobalReplicationGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an existing replication group. By default, this operation deletes the entire replication group, including the primary/primaries and all of the read replicas. If the replication group has only one primary, you can optionally delete only the read replicas, while retaining the primary by setting RetainPrimaryCluster=true. When you receive a successful response from this operation, Amazon ElastiCache immediately begins deleting the selected resources; you cannot cancel or revert this operation.  This operation is valid for Redis only. 
    public func deleteReplicationGroup(_ input: DeleteReplicationGroupMessage) -> EventLoopFuture<DeleteReplicationGroupResult> {
        return client.send(operation: "DeleteReplicationGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an existing snapshot. When you receive a successful response from this operation, ElastiCache immediately begins deleting the snapshot; you cannot cancel or revert this operation.  This operation is valid for Redis only. 
    public func deleteSnapshot(_ input: DeleteSnapshotMessage) -> EventLoopFuture<DeleteSnapshotResult> {
        return client.send(operation: "DeleteSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all provisioned clusters if no cluster identifier is specified, or about a specific cache cluster if a cluster identifier is supplied. By default, abbreviated information about the clusters is returned. You can use the optional ShowCacheNodeInfo flag to retrieve detailed information about the cache nodes associated with the clusters. These details include the DNS address and port for the cache node endpoint. If the cluster is in the creating state, only cluster-level information is displayed until all of the nodes are successfully provisioned. If the cluster is in the deleting state, only cluster-level information is displayed. If cache nodes are currently being added to the cluster, node endpoint information and creation time for the additional nodes are not displayed until they are completely provisioned. When the cluster state is available, the cluster is ready for use. If cache nodes are currently being removed from the cluster, no endpoint information for the removed nodes is displayed.
    public func describeCacheClusters(_ input: DescribeCacheClustersMessage) -> EventLoopFuture<CacheClusterMessage> {
        return client.send(operation: "DescribeCacheClusters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of the available cache engines and their versions.
    public func describeCacheEngineVersions(_ input: DescribeCacheEngineVersionsMessage) -> EventLoopFuture<CacheEngineVersionMessage> {
        return client.send(operation: "DescribeCacheEngineVersions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of cache parameter group descriptions. If a cache parameter group name is specified, the list contains only the descriptions for that group.
    public func describeCacheParameterGroups(_ input: DescribeCacheParameterGroupsMessage) -> EventLoopFuture<CacheParameterGroupsMessage> {
        return client.send(operation: "DescribeCacheParameterGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the detailed parameter list for a particular cache parameter group.
    public func describeCacheParameters(_ input: DescribeCacheParametersMessage) -> EventLoopFuture<CacheParameterGroupDetails> {
        return client.send(operation: "DescribeCacheParameters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of cache security group descriptions. If a cache security group name is specified, the list contains only the description of that group. This applicable only when you have ElastiCache in Classic setup 
    public func describeCacheSecurityGroups(_ input: DescribeCacheSecurityGroupsMessage) -> EventLoopFuture<CacheSecurityGroupMessage> {
        return client.send(operation: "DescribeCacheSecurityGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of cache subnet group descriptions. If a subnet group name is specified, the list contains only the description of that group. This is applicable only when you have ElastiCache in VPC setup. All ElastiCache clusters now launch in VPC by default. 
    public func describeCacheSubnetGroups(_ input: DescribeCacheSubnetGroupsMessage) -> EventLoopFuture<CacheSubnetGroupMessage> {
        return client.send(operation: "DescribeCacheSubnetGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the default engine and system parameter information for the specified cache engine.
    public func describeEngineDefaultParameters(_ input: DescribeEngineDefaultParametersMessage) -> EventLoopFuture<DescribeEngineDefaultParametersResult> {
        return client.send(operation: "DescribeEngineDefaultParameters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns events related to clusters, cache security groups, and cache parameter groups. You can obtain events specific to a particular cluster, cache security group, or cache parameter group by providing the name as a parameter. By default, only the events occurring within the last hour are returned; however, you can retrieve up to 14 days' worth of events if necessary.
    public func describeEvents(_ input: DescribeEventsMessage) -> EventLoopFuture<EventsMessage> {
        return client.send(operation: "DescribeEvents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a particular global replication group. If no identifier is specified, returns information about all Global Datastores. 
    public func describeGlobalReplicationGroups(_ input: DescribeGlobalReplicationGroupsMessage) -> EventLoopFuture<DescribeGlobalReplicationGroupsResult> {
        return client.send(operation: "DescribeGlobalReplicationGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a particular replication group. If no identifier is specified, DescribeReplicationGroups returns information about all replication groups.  This operation is valid for Redis only. 
    public func describeReplicationGroups(_ input: DescribeReplicationGroupsMessage) -> EventLoopFuture<ReplicationGroupMessage> {
        return client.send(operation: "DescribeReplicationGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about reserved cache nodes for this account, or about a specified reserved cache node.
    public func describeReservedCacheNodes(_ input: DescribeReservedCacheNodesMessage) -> EventLoopFuture<ReservedCacheNodeMessage> {
        return client.send(operation: "DescribeReservedCacheNodes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists available reserved cache node offerings.
    public func describeReservedCacheNodesOfferings(_ input: DescribeReservedCacheNodesOfferingsMessage) -> EventLoopFuture<ReservedCacheNodesOfferingMessage> {
        return client.send(operation: "DescribeReservedCacheNodesOfferings", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns details of the service updates
    public func describeServiceUpdates(_ input: DescribeServiceUpdatesMessage) -> EventLoopFuture<ServiceUpdatesMessage> {
        return client.send(operation: "DescribeServiceUpdates", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about cluster or replication group snapshots. By default, DescribeSnapshots lists all of your snapshots; it can optionally describe a single snapshot, or just the snapshots associated with a particular cache cluster.  This operation is valid for Redis only. 
    public func describeSnapshots(_ input: DescribeSnapshotsMessage) -> EventLoopFuture<DescribeSnapshotsListMessage> {
        return client.send(operation: "DescribeSnapshots", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns details of the update actions 
    public func describeUpdateActions(_ input: DescribeUpdateActionsMessage) -> EventLoopFuture<UpdateActionsMessage> {
        return client.send(operation: "DescribeUpdateActions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Remove a secondary cluster from the Global Datastore using the Global Datastore name. The secondary cluster will no longer receive updates from the primary cluster, but will remain as a standalone cluster in that AWS region.
    public func disassociateGlobalReplicationGroup(_ input: DisassociateGlobalReplicationGroupMessage) -> EventLoopFuture<DisassociateGlobalReplicationGroupResult> {
        return client.send(operation: "DisassociateGlobalReplicationGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Used to failover the primary region to a selected secondary region.
    public func failoverGlobalReplicationGroup(_ input: FailoverGlobalReplicationGroupMessage) -> EventLoopFuture<FailoverGlobalReplicationGroupResult> {
        return client.send(operation: "FailoverGlobalReplicationGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Increase the number of node groups in the Global Datastore
    public func increaseNodeGroupsInGlobalReplicationGroup(_ input: IncreaseNodeGroupsInGlobalReplicationGroupMessage) -> EventLoopFuture<IncreaseNodeGroupsInGlobalReplicationGroupResult> {
        return client.send(operation: "IncreaseNodeGroupsInGlobalReplicationGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Dynamically increases the number of replics in a Redis (cluster mode disabled) replication group or the number of replica nodes in one or more node groups (shards) of a Redis (cluster mode enabled) replication group. This operation is performed with no cluster down time.
    public func increaseReplicaCount(_ input: IncreaseReplicaCountMessage) -> EventLoopFuture<IncreaseReplicaCountResult> {
        return client.send(operation: "IncreaseReplicaCount", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all available node types that you can scale your Redis cluster's or replication group's current node type. When you use the ModifyCacheCluster or ModifyReplicationGroup operations to scale your cluster or replication group, the value of the CacheNodeType parameter must be one of the node types returned by this operation.
    public func listAllowedNodeTypeModifications(_ input: ListAllowedNodeTypeModificationsMessage) -> EventLoopFuture<AllowedNodeTypeModificationsMessage> {
        return client.send(operation: "ListAllowedNodeTypeModifications", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all cost allocation tags currently on the named resource. A cost allocation tag is a key-value pair where the key is case-sensitive and the value is optional. You can use cost allocation tags to categorize and track your AWS costs. If the cluster is not in the available state, ListTagsForResource returns an error. You can have a maximum of 50 cost allocation tags on an ElastiCache resource. For more information, see Monitoring Costs with Tags.
    public func listTagsForResource(_ input: ListTagsForResourceMessage) -> EventLoopFuture<TagListMessage> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the settings for a cluster. You can use this operation to change one or more cluster configuration parameters by specifying the parameters and the new values.
    public func modifyCacheCluster(_ input: ModifyCacheClusterMessage) -> EventLoopFuture<ModifyCacheClusterResult> {
        return client.send(operation: "ModifyCacheCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the parameters of a cache parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.
    public func modifyCacheParameterGroup(_ input: ModifyCacheParameterGroupMessage) -> EventLoopFuture<CacheParameterGroupNameMessage> {
        return client.send(operation: "ModifyCacheParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies an existing cache subnet group.
    public func modifyCacheSubnetGroup(_ input: ModifyCacheSubnetGroupMessage) -> EventLoopFuture<ModifyCacheSubnetGroupResult> {
        return client.send(operation: "ModifyCacheSubnetGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the settings for a Global Datastore.
    public func modifyGlobalReplicationGroup(_ input: ModifyGlobalReplicationGroupMessage) -> EventLoopFuture<ModifyGlobalReplicationGroupResult> {
        return client.send(operation: "ModifyGlobalReplicationGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the settings for a replication group. For Redis (cluster mode enabled) clusters, this operation cannot be used to change a cluster's node type or engine version. For more information, see:    Scaling for Amazon ElastiCache for Redis (cluster mode enabled) in the ElastiCache User Guide    ModifyReplicationGroupShardConfiguration in the ElastiCache API Reference    This operation is valid for Redis only. 
    public func modifyReplicationGroup(_ input: ModifyReplicationGroupMessage) -> EventLoopFuture<ModifyReplicationGroupResult> {
        return client.send(operation: "ModifyReplicationGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies a replication group's shards (node groups) by allowing you to add shards, remove shards, or rebalance the keyspaces among exisiting shards.
    public func modifyReplicationGroupShardConfiguration(_ input: ModifyReplicationGroupShardConfigurationMessage) -> EventLoopFuture<ModifyReplicationGroupShardConfigurationResult> {
        return client.send(operation: "ModifyReplicationGroupShardConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Allows you to purchase a reserved cache node offering.
    public func purchaseReservedCacheNodesOffering(_ input: PurchaseReservedCacheNodesOfferingMessage) -> EventLoopFuture<PurchaseReservedCacheNodesOfferingResult> {
        return client.send(operation: "PurchaseReservedCacheNodesOffering", path: "/", httpMethod: "POST", input: input)
    }

    ///  Redistribute slots to ensure unifirom distribution across existing shards in the cluster.
    public func rebalanceSlotsInGlobalReplicationGroup(_ input: RebalanceSlotsInGlobalReplicationGroupMessage) -> EventLoopFuture<RebalanceSlotsInGlobalReplicationGroupResult> {
        return client.send(operation: "RebalanceSlotsInGlobalReplicationGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Reboots some, or all, of the cache nodes within a provisioned cluster. This operation applies any modified cache parameter groups to the cluster. The reboot operation takes place as soon as possible, and results in a momentary outage to the cluster. During the reboot, the cluster status is set to REBOOTING. The reboot causes the contents of the cache (for each cache node being rebooted) to be lost. When the reboot is complete, a cluster event is created. Rebooting a cluster is currently supported on Memcached and Redis (cluster mode disabled) clusters. Rebooting is not supported on Redis (cluster mode enabled) clusters. If you make changes to parameters that require a Redis (cluster mode enabled) cluster reboot for the changes to be applied, see Rebooting a Cluster for an alternate process.
    public func rebootCacheCluster(_ input: RebootCacheClusterMessage) -> EventLoopFuture<RebootCacheClusterResult> {
        return client.send(operation: "RebootCacheCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes the tags identified by the TagKeys list from the named resource.
    public func removeTagsFromResource(_ input: RemoveTagsFromResourceMessage) -> EventLoopFuture<TagListMessage> {
        return client.send(operation: "RemoveTagsFromResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the parameters of a cache parameter group to the engine or system default value. You can reset specific parameters by submitting a list of parameter names. To reset the entire cache parameter group, specify the ResetAllParameters and CacheParameterGroupName parameters.
    public func resetCacheParameterGroup(_ input: ResetCacheParameterGroupMessage) -> EventLoopFuture<CacheParameterGroupNameMessage> {
        return client.send(operation: "ResetCacheParameterGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Revokes ingress from a cache security group. Use this operation to disallow access from an Amazon EC2 security group that had been previously authorized.
    public func revokeCacheSecurityGroupIngress(_ input: RevokeCacheSecurityGroupIngressMessage) -> EventLoopFuture<RevokeCacheSecurityGroupIngressResult> {
        return client.send(operation: "RevokeCacheSecurityGroupIngress", path: "/", httpMethod: "POST", input: input)
    }

    ///  Start the migration of data.
    public func startMigration(_ input: StartMigrationMessage) -> EventLoopFuture<StartMigrationResponse> {
        return client.send(operation: "StartMigration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Represents the input of a TestFailover operation which test automatic failover on a specified node group (called shard in the console) in a replication group (called cluster in the console).  Note the following    A customer can use this operation to test automatic failover on up to 5 shards (called node groups in the ElastiCache API and AWS CLI) in any rolling 24-hour period.   If calling this operation on shards in different clusters (called replication groups in the API and CLI), the calls can be made concurrently.     If calling this operation multiple times on different shards in the same Redis (cluster mode enabled) replication group, the first node replacement must complete before a subsequent call can be made.   To determine whether the node replacement is complete you can check Events using the Amazon ElastiCache console, the AWS CLI, or the ElastiCache API. Look for the following automatic failover related events, listed here in order of occurrance:   Replication group message: Test Failover API called for node group &lt;node-group-id&gt;    Cache cluster message: Failover from master node &lt;primary-node-id&gt; to replica node &lt;node-id&gt; completed    Replication group message: Failover from master node &lt;primary-node-id&gt; to replica node &lt;node-id&gt; completed    Cache cluster message: Recovering cache nodes &lt;node-id&gt;    Cache cluster message: Finished recovery for cache nodes &lt;node-id&gt;    For more information see:    Viewing ElastiCache Events in the ElastiCache User Guide     DescribeEvents in the ElastiCache API Reference     Also see, Testing Multi-AZ with Automatic Failover in the ElastiCache User Guide.
    public func testFailover(_ input: TestFailoverMessage) -> EventLoopFuture<TestFailoverResult> {
        return client.send(operation: "TestFailover", path: "/", httpMethod: "POST", input: input)
    }
}
