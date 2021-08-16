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

import SotoCore

// MARK: Paginators

extension RedshiftDataAPIService {
    ///  Describes the detailed information about a table from metadata in the cluster. The information includes its columns. A token is returned to page through the column list. Depending on the authorization method, use one of the following combinations of request parameters:    Secrets Manager - specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret.    Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the redshift:GetClusterCredentials operation is required to use this method.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func describeTablePaginator<Result>(
        _ input: DescribeTableRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeTableResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeTable,
            inputKey: \DescribeTableRequest.nextToken,
            outputKey: \DescribeTableResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func describeTablePaginator(
        _ input: DescribeTableRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeTableResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeTable,
            inputKey: \DescribeTableRequest.nextToken,
            outputKey: \DescribeTableResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Fetches the temporarily cached result of an SQL statement. A token is returned to page through the statement results.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getStatementResultPaginator<Result>(
        _ input: GetStatementResultRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetStatementResultResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getStatementResult,
            inputKey: \GetStatementResultRequest.nextToken,
            outputKey: \GetStatementResultResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getStatementResultPaginator(
        _ input: GetStatementResultRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetStatementResultResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getStatementResult,
            inputKey: \GetStatementResultRequest.nextToken,
            outputKey: \GetStatementResultResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the databases in a cluster. A token is returned to page through the database list. Depending on the authorization method, use one of the following combinations of request parameters:    Secrets Manager - specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret.    Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the redshift:GetClusterCredentials operation is required to use this method.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listDatabasesPaginator<Result>(
        _ input: ListDatabasesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDatabasesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDatabases,
            inputKey: \ListDatabasesRequest.nextToken,
            outputKey: \ListDatabasesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listDatabasesPaginator(
        _ input: ListDatabasesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDatabasesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDatabases,
            inputKey: \ListDatabasesRequest.nextToken,
            outputKey: \ListDatabasesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the schemas in a database. A token is returned to page through the schema list. Depending on the authorization method, use one of the following combinations of request parameters:    Secrets Manager - specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret.    Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the redshift:GetClusterCredentials operation is required to use this method.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listSchemasPaginator<Result>(
        _ input: ListSchemasRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSchemasResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listSchemas,
            inputKey: \ListSchemasRequest.nextToken,
            outputKey: \ListSchemasResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listSchemasPaginator(
        _ input: ListSchemasRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSchemasResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSchemas,
            inputKey: \ListSchemasRequest.nextToken,
            outputKey: \ListSchemasResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List of SQL statements. By default, only finished statements are shown. A token is returned to page through the statement list.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listStatementsPaginator<Result>(
        _ input: ListStatementsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListStatementsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listStatements,
            inputKey: \ListStatementsRequest.nextToken,
            outputKey: \ListStatementsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listStatementsPaginator(
        _ input: ListStatementsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListStatementsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listStatements,
            inputKey: \ListStatementsRequest.nextToken,
            outputKey: \ListStatementsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the tables in a database. If neither SchemaPattern nor TablePattern are specified, then all tables in the database are returned. A token is returned to page through the table list. Depending on the authorization method, use one of the following combinations of request parameters:    Secrets Manager - specify the Amazon Resource Name (ARN) of the secret, the database name, and the cluster identifier that matches the cluster in the secret.    Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the redshift:GetClusterCredentials operation is required to use this method.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listTablesPaginator<Result>(
        _ input: ListTablesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTablesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTables,
            inputKey: \ListTablesRequest.nextToken,
            outputKey: \ListTablesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used for logging output
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listTablesPaginator(
        _ input: ListTablesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTablesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTables,
            inputKey: \ListTablesRequest.nextToken,
            outputKey: \ListTablesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension RedshiftDataAPIService.DescribeTableRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftDataAPIService.DescribeTableRequest {
        return .init(
            clusterIdentifier: self.clusterIdentifier,
            connectedDatabase: self.connectedDatabase,
            database: self.database,
            dbUser: self.dbUser,
            maxResults: self.maxResults,
            nextToken: token,
            schema: self.schema,
            secretArn: self.secretArn,
            table: self.table
        )
    }
}

extension RedshiftDataAPIService.GetStatementResultRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftDataAPIService.GetStatementResultRequest {
        return .init(
            id: self.id,
            nextToken: token
        )
    }
}

extension RedshiftDataAPIService.ListDatabasesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftDataAPIService.ListDatabasesRequest {
        return .init(
            clusterIdentifier: self.clusterIdentifier,
            database: self.database,
            dbUser: self.dbUser,
            maxResults: self.maxResults,
            nextToken: token,
            secretArn: self.secretArn
        )
    }
}

extension RedshiftDataAPIService.ListSchemasRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftDataAPIService.ListSchemasRequest {
        return .init(
            clusterIdentifier: self.clusterIdentifier,
            connectedDatabase: self.connectedDatabase,
            database: self.database,
            dbUser: self.dbUser,
            maxResults: self.maxResults,
            nextToken: token,
            schemaPattern: self.schemaPattern,
            secretArn: self.secretArn
        )
    }
}

extension RedshiftDataAPIService.ListStatementsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftDataAPIService.ListStatementsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            roleLevel: self.roleLevel,
            statementName: self.statementName,
            status: self.status
        )
    }
}

extension RedshiftDataAPIService.ListTablesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RedshiftDataAPIService.ListTablesRequest {
        return .init(
            clusterIdentifier: self.clusterIdentifier,
            connectedDatabase: self.connectedDatabase,
            database: self.database,
            dbUser: self.dbUser,
            maxResults: self.maxResults,
            nextToken: token,
            schemaPattern: self.schemaPattern,
            secretArn: self.secretArn,
            tablePattern: self.tablePattern
        )
    }
}
