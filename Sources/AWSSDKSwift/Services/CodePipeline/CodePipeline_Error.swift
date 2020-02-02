// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CodePipeline
public enum CodePipelineErrorType: AWSErrorType {
    case actionNotFoundException(message: String?)
    case actionTypeNotFoundException(message: String?)
    case approvalAlreadyCompletedException(message: String?)
    case concurrentModificationException(message: String?)
    case duplicatedStopRequestException(message: String?)
    case invalidActionDeclarationException(message: String?)
    case invalidApprovalTokenException(message: String?)
    case invalidArnException(message: String?)
    case invalidBlockerDeclarationException(message: String?)
    case invalidClientTokenException(message: String?)
    case invalidJobException(message: String?)
    case invalidJobStateException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidNonceException(message: String?)
    case invalidStageDeclarationException(message: String?)
    case invalidStructureException(message: String?)
    case invalidTagsException(message: String?)
    case invalidWebhookAuthenticationParametersException(message: String?)
    case invalidWebhookFilterPatternException(message: String?)
    case jobNotFoundException(message: String?)
    case limitExceededException(message: String?)
    case notLatestPipelineExecutionException(message: String?)
    case outputVariablesSizeExceededException(message: String?)
    case pipelineExecutionNotFoundException(message: String?)
    case pipelineExecutionNotStoppableException(message: String?)
    case pipelineNameInUseException(message: String?)
    case pipelineNotFoundException(message: String?)
    case pipelineVersionNotFoundException(message: String?)
    case resourceNotFoundException(message: String?)
    case stageNotFoundException(message: String?)
    case stageNotRetryableException(message: String?)
    case tooManyTagsException(message: String?)
    case validationException(message: String?)
    case webhookNotFoundException(message: String?)
}

extension CodePipelineErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ActionNotFoundException":
            self = .actionNotFoundException(message: message)
        case "ActionTypeNotFoundException":
            self = .actionTypeNotFoundException(message: message)
        case "ApprovalAlreadyCompletedException":
            self = .approvalAlreadyCompletedException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "DuplicatedStopRequestException":
            self = .duplicatedStopRequestException(message: message)
        case "InvalidActionDeclarationException":
            self = .invalidActionDeclarationException(message: message)
        case "InvalidApprovalTokenException":
            self = .invalidApprovalTokenException(message: message)
        case "InvalidArnException":
            self = .invalidArnException(message: message)
        case "InvalidBlockerDeclarationException":
            self = .invalidBlockerDeclarationException(message: message)
        case "InvalidClientTokenException":
            self = .invalidClientTokenException(message: message)
        case "InvalidJobException":
            self = .invalidJobException(message: message)
        case "InvalidJobStateException":
            self = .invalidJobStateException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidNonceException":
            self = .invalidNonceException(message: message)
        case "InvalidStageDeclarationException":
            self = .invalidStageDeclarationException(message: message)
        case "InvalidStructureException":
            self = .invalidStructureException(message: message)
        case "InvalidTagsException":
            self = .invalidTagsException(message: message)
        case "InvalidWebhookAuthenticationParametersException":
            self = .invalidWebhookAuthenticationParametersException(message: message)
        case "InvalidWebhookFilterPatternException":
            self = .invalidWebhookFilterPatternException(message: message)
        case "JobNotFoundException":
            self = .jobNotFoundException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "NotLatestPipelineExecutionException":
            self = .notLatestPipelineExecutionException(message: message)
        case "OutputVariablesSizeExceededException":
            self = .outputVariablesSizeExceededException(message: message)
        case "PipelineExecutionNotFoundException":
            self = .pipelineExecutionNotFoundException(message: message)
        case "PipelineExecutionNotStoppableException":
            self = .pipelineExecutionNotStoppableException(message: message)
        case "PipelineNameInUseException":
            self = .pipelineNameInUseException(message: message)
        case "PipelineNotFoundException":
            self = .pipelineNotFoundException(message: message)
        case "PipelineVersionNotFoundException":
            self = .pipelineVersionNotFoundException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "StageNotFoundException":
            self = .stageNotFoundException(message: message)
        case "StageNotRetryableException":
            self = .stageNotRetryableException(message: message)
        case "TooManyTagsException":
            self = .tooManyTagsException(message: message)
        case "ValidationException":
            self = .validationException(message: message)
        case "WebhookNotFoundException":
            self = .webhookNotFoundException(message: message)
        default:
            return nil
        }
    }
}

extension CodePipelineErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .actionNotFoundException(let message):
            return "ActionNotFoundException: \(message ?? "")"
        case .actionTypeNotFoundException(let message):
            return "ActionTypeNotFoundException: \(message ?? "")"
        case .approvalAlreadyCompletedException(let message):
            return "ApprovalAlreadyCompletedException: \(message ?? "")"
        case .concurrentModificationException(let message):
            return "ConcurrentModificationException: \(message ?? "")"
        case .duplicatedStopRequestException(let message):
            return "DuplicatedStopRequestException: \(message ?? "")"
        case .invalidActionDeclarationException(let message):
            return "InvalidActionDeclarationException: \(message ?? "")"
        case .invalidApprovalTokenException(let message):
            return "InvalidApprovalTokenException: \(message ?? "")"
        case .invalidArnException(let message):
            return "InvalidArnException: \(message ?? "")"
        case .invalidBlockerDeclarationException(let message):
            return "InvalidBlockerDeclarationException: \(message ?? "")"
        case .invalidClientTokenException(let message):
            return "InvalidClientTokenException: \(message ?? "")"
        case .invalidJobException(let message):
            return "InvalidJobException: \(message ?? "")"
        case .invalidJobStateException(let message):
            return "InvalidJobStateException: \(message ?? "")"
        case .invalidNextTokenException(let message):
            return "InvalidNextTokenException: \(message ?? "")"
        case .invalidNonceException(let message):
            return "InvalidNonceException: \(message ?? "")"
        case .invalidStageDeclarationException(let message):
            return "InvalidStageDeclarationException: \(message ?? "")"
        case .invalidStructureException(let message):
            return "InvalidStructureException: \(message ?? "")"
        case .invalidTagsException(let message):
            return "InvalidTagsException: \(message ?? "")"
        case .invalidWebhookAuthenticationParametersException(let message):
            return "InvalidWebhookAuthenticationParametersException: \(message ?? "")"
        case .invalidWebhookFilterPatternException(let message):
            return "InvalidWebhookFilterPatternException: \(message ?? "")"
        case .jobNotFoundException(let message):
            return "JobNotFoundException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .notLatestPipelineExecutionException(let message):
            return "NotLatestPipelineExecutionException: \(message ?? "")"
        case .outputVariablesSizeExceededException(let message):
            return "OutputVariablesSizeExceededException: \(message ?? "")"
        case .pipelineExecutionNotFoundException(let message):
            return "PipelineExecutionNotFoundException: \(message ?? "")"
        case .pipelineExecutionNotStoppableException(let message):
            return "PipelineExecutionNotStoppableException: \(message ?? "")"
        case .pipelineNameInUseException(let message):
            return "PipelineNameInUseException: \(message ?? "")"
        case .pipelineNotFoundException(let message):
            return "PipelineNotFoundException: \(message ?? "")"
        case .pipelineVersionNotFoundException(let message):
            return "PipelineVersionNotFoundException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .stageNotFoundException(let message):
            return "StageNotFoundException: \(message ?? "")"
        case .stageNotRetryableException(let message):
            return "StageNotRetryableException: \(message ?? "")"
        case .tooManyTagsException(let message):
            return "TooManyTagsException: \(message ?? "")"
        case .validationException(let message):
            return "ValidationException: \(message ?? "")"
        case .webhookNotFoundException(let message):
            return "WebhookNotFoundException: \(message ?? "")"
        }
    }
}
