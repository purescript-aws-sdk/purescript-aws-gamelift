## Module AWS.GameLift.Types

#### `options`

``` purescript
options :: Options
```

#### `AcceptMatchInput`

``` purescript
newtype AcceptMatchInput
  = AcceptMatchInput { "TicketId" :: MatchmakingIdStringModel, "PlayerIds" :: StringList, "AcceptanceType" :: AcceptanceType }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype AcceptMatchInput _
Generic AcceptMatchInput _
Show AcceptMatchInput
Decode AcceptMatchInput
Encode AcceptMatchInput
```

#### `newAcceptMatchInput`

``` purescript
newAcceptMatchInput :: AcceptanceType -> StringList -> MatchmakingIdStringModel -> AcceptMatchInput
```

Constructs AcceptMatchInput from required parameters

#### `newAcceptMatchInput'`

``` purescript
newAcceptMatchInput' :: AcceptanceType -> StringList -> MatchmakingIdStringModel -> ({ "TicketId" :: MatchmakingIdStringModel, "PlayerIds" :: StringList, "AcceptanceType" :: AcceptanceType } -> { "TicketId" :: MatchmakingIdStringModel, "PlayerIds" :: StringList, "AcceptanceType" :: AcceptanceType }) -> AcceptMatchInput
```

Constructs AcceptMatchInput's fields from required parameters

#### `AcceptMatchOutput`

``` purescript
newtype AcceptMatchOutput
  = AcceptMatchOutput NoArguments
```

##### Instances
``` purescript
Newtype AcceptMatchOutput _
Generic AcceptMatchOutput _
Show AcceptMatchOutput
Decode AcceptMatchOutput
Encode AcceptMatchOutput
```

#### `AcceptanceType`

``` purescript
newtype AcceptanceType
  = AcceptanceType String
```

##### Instances
``` purescript
Newtype AcceptanceType _
Generic AcceptanceType _
Show AcceptanceType
Decode AcceptanceType
Encode AcceptanceType
```

#### `Alias`

``` purescript
newtype Alias
  = Alias { "AliasId" :: Maybe (AliasId), "Name" :: Maybe (NonBlankAndLengthConstraintString), "AliasArn" :: Maybe (ArnStringModel), "Description" :: Maybe (FreeText), "RoutingStrategy" :: Maybe (RoutingStrategy), "CreationTime" :: Maybe (Timestamp), "LastUpdatedTime" :: Maybe (Timestamp) }
```

<p>Properties describing a fleet alias.</p> <p>Alias-related operations include:</p> <ul> <li> <p> <a>CreateAlias</a> </p> </li> <li> <p> <a>ListAliases</a> </p> </li> <li> <p> <a>DescribeAlias</a> </p> </li> <li> <p> <a>UpdateAlias</a> </p> </li> <li> <p> <a>DeleteAlias</a> </p> </li> <li> <p> <a>ResolveAlias</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype Alias _
Generic Alias _
Show Alias
Decode Alias
Encode Alias
```

#### `newAlias`

``` purescript
newAlias :: Alias
```

Constructs Alias from required parameters

#### `newAlias'`

``` purescript
newAlias' :: ({ "AliasId" :: Maybe (AliasId), "Name" :: Maybe (NonBlankAndLengthConstraintString), "AliasArn" :: Maybe (ArnStringModel), "Description" :: Maybe (FreeText), "RoutingStrategy" :: Maybe (RoutingStrategy), "CreationTime" :: Maybe (Timestamp), "LastUpdatedTime" :: Maybe (Timestamp) } -> { "AliasId" :: Maybe (AliasId), "Name" :: Maybe (NonBlankAndLengthConstraintString), "AliasArn" :: Maybe (ArnStringModel), "Description" :: Maybe (FreeText), "RoutingStrategy" :: Maybe (RoutingStrategy), "CreationTime" :: Maybe (Timestamp), "LastUpdatedTime" :: Maybe (Timestamp) }) -> Alias
```

Constructs Alias's fields from required parameters

#### `AliasId`

``` purescript
newtype AliasId
  = AliasId String
```

##### Instances
``` purescript
Newtype AliasId _
Generic AliasId _
Show AliasId
Decode AliasId
Encode AliasId
```

#### `AliasList`

``` purescript
newtype AliasList
  = AliasList (Array Alias)
```

##### Instances
``` purescript
Newtype AliasList _
Generic AliasList _
Show AliasList
Decode AliasList
Encode AliasList
```

#### `ArnStringModel`

``` purescript
newtype ArnStringModel
  = ArnStringModel String
```

##### Instances
``` purescript
Newtype ArnStringModel _
Generic ArnStringModel _
Show ArnStringModel
Decode ArnStringModel
Encode ArnStringModel
```

#### `AttributeValue`

``` purescript
newtype AttributeValue
  = AttributeValue { "S" :: Maybe (NonZeroAndMaxString), "N" :: Maybe (DoubleObject), "SL" :: Maybe (StringList), "SDM" :: Maybe (StringDoubleMap) }
```

<p>Values for use in <a>Player</a> attribute key:value pairs. This object lets you specify an attribute value using any of the valid data types: string, number, string array or data map. Each <code>AttributeValue</code> object can use only one of the available properties.</p>

##### Instances
``` purescript
Newtype AttributeValue _
Generic AttributeValue _
Show AttributeValue
Decode AttributeValue
Encode AttributeValue
```

#### `newAttributeValue`

``` purescript
newAttributeValue :: AttributeValue
```

Constructs AttributeValue from required parameters

#### `newAttributeValue'`

``` purescript
newAttributeValue' :: ({ "S" :: Maybe (NonZeroAndMaxString), "N" :: Maybe (DoubleObject), "SL" :: Maybe (StringList), "SDM" :: Maybe (StringDoubleMap) } -> { "S" :: Maybe (NonZeroAndMaxString), "N" :: Maybe (DoubleObject), "SL" :: Maybe (StringList), "SDM" :: Maybe (StringDoubleMap) }) -> AttributeValue
```

Constructs AttributeValue's fields from required parameters

#### `AwsCredentials`

``` purescript
newtype AwsCredentials
  = AwsCredentials { "AccessKeyId" :: Maybe (NonEmptyString), "SecretAccessKey" :: Maybe (NonEmptyString), "SessionToken" :: Maybe (NonEmptyString) }
```

<p>Temporary access credentials used for uploading game build files to Amazon GameLift. They are valid for a limited time. If they expire before you upload your game build, get a new set by calling <a>RequestUploadCredentials</a>.</p>

##### Instances
``` purescript
Newtype AwsCredentials _
Generic AwsCredentials _
Show AwsCredentials
Decode AwsCredentials
Encode AwsCredentials
```

#### `newAwsCredentials`

``` purescript
newAwsCredentials :: AwsCredentials
```

Constructs AwsCredentials from required parameters

#### `newAwsCredentials'`

``` purescript
newAwsCredentials' :: ({ "AccessKeyId" :: Maybe (NonEmptyString), "SecretAccessKey" :: Maybe (NonEmptyString), "SessionToken" :: Maybe (NonEmptyString) } -> { "AccessKeyId" :: Maybe (NonEmptyString), "SecretAccessKey" :: Maybe (NonEmptyString), "SessionToken" :: Maybe (NonEmptyString) }) -> AwsCredentials
```

Constructs AwsCredentials's fields from required parameters

#### `BooleanModel`

``` purescript
newtype BooleanModel
  = BooleanModel Boolean
```

##### Instances
``` purescript
Newtype BooleanModel _
Generic BooleanModel _
Show BooleanModel
Decode BooleanModel
Encode BooleanModel
```

#### `Build`

``` purescript
newtype Build
  = Build { "BuildId" :: Maybe (BuildId), "Name" :: Maybe (FreeText), "Version" :: Maybe (FreeText), "Status" :: Maybe (BuildStatus), "SizeOnDisk" :: Maybe (PositiveLong), "OperatingSystem" :: Maybe (OperatingSystem), "CreationTime" :: Maybe (Timestamp) }
```

<p>Properties describing a game build.</p> <p>Build-related operations include:</p> <ul> <li> <p> <a>CreateBuild</a> </p> </li> <li> <p> <a>ListBuilds</a> </p> </li> <li> <p> <a>DescribeBuild</a> </p> </li> <li> <p> <a>UpdateBuild</a> </p> </li> <li> <p> <a>DeleteBuild</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype Build _
Generic Build _
Show Build
Decode Build
Encode Build
```

#### `newBuild`

``` purescript
newBuild :: Build
```

Constructs Build from required parameters

#### `newBuild'`

``` purescript
newBuild' :: ({ "BuildId" :: Maybe (BuildId), "Name" :: Maybe (FreeText), "Version" :: Maybe (FreeText), "Status" :: Maybe (BuildStatus), "SizeOnDisk" :: Maybe (PositiveLong), "OperatingSystem" :: Maybe (OperatingSystem), "CreationTime" :: Maybe (Timestamp) } -> { "BuildId" :: Maybe (BuildId), "Name" :: Maybe (FreeText), "Version" :: Maybe (FreeText), "Status" :: Maybe (BuildStatus), "SizeOnDisk" :: Maybe (PositiveLong), "OperatingSystem" :: Maybe (OperatingSystem), "CreationTime" :: Maybe (Timestamp) }) -> Build
```

Constructs Build's fields from required parameters

#### `BuildId`

``` purescript
newtype BuildId
  = BuildId String
```

##### Instances
``` purescript
Newtype BuildId _
Generic BuildId _
Show BuildId
Decode BuildId
Encode BuildId
```

#### `BuildList`

``` purescript
newtype BuildList
  = BuildList (Array Build)
```

##### Instances
``` purescript
Newtype BuildList _
Generic BuildList _
Show BuildList
Decode BuildList
Encode BuildList
```

#### `BuildStatus`

``` purescript
newtype BuildStatus
  = BuildStatus String
```

##### Instances
``` purescript
Newtype BuildStatus _
Generic BuildStatus _
Show BuildStatus
Decode BuildStatus
Encode BuildStatus
```

#### `ComparisonOperatorType`

``` purescript
newtype ComparisonOperatorType
  = ComparisonOperatorType String
```

##### Instances
``` purescript
Newtype ComparisonOperatorType _
Generic ComparisonOperatorType _
Show ComparisonOperatorType
Decode ComparisonOperatorType
Encode ComparisonOperatorType
```

#### `ConflictException`

``` purescript
newtype ConflictException
  = ConflictException { "Message" :: Maybe (NonEmptyString) }
```

<p>The requested operation would cause a conflict with the current state of a service resource associated with the request. Resolve the conflict before retrying this request.</p>

##### Instances
``` purescript
Newtype ConflictException _
Generic ConflictException _
Show ConflictException
Decode ConflictException
Encode ConflictException
```

#### `newConflictException`

``` purescript
newConflictException :: ConflictException
```

Constructs ConflictException from required parameters

#### `newConflictException'`

``` purescript
newConflictException' :: ({ "Message" :: Maybe (NonEmptyString) } -> { "Message" :: Maybe (NonEmptyString) }) -> ConflictException
```

Constructs ConflictException's fields from required parameters

#### `CreateAliasInput`

``` purescript
newtype CreateAliasInput
  = CreateAliasInput { "Name" :: NonBlankAndLengthConstraintString, "Description" :: Maybe (NonZeroAndMaxString), "RoutingStrategy" :: RoutingStrategy }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype CreateAliasInput _
Generic CreateAliasInput _
Show CreateAliasInput
Decode CreateAliasInput
Encode CreateAliasInput
```

#### `newCreateAliasInput`

``` purescript
newCreateAliasInput :: NonBlankAndLengthConstraintString -> RoutingStrategy -> CreateAliasInput
```

Constructs CreateAliasInput from required parameters

#### `newCreateAliasInput'`

``` purescript
newCreateAliasInput' :: NonBlankAndLengthConstraintString -> RoutingStrategy -> ({ "Name" :: NonBlankAndLengthConstraintString, "Description" :: Maybe (NonZeroAndMaxString), "RoutingStrategy" :: RoutingStrategy } -> { "Name" :: NonBlankAndLengthConstraintString, "Description" :: Maybe (NonZeroAndMaxString), "RoutingStrategy" :: RoutingStrategy }) -> CreateAliasInput
```

Constructs CreateAliasInput's fields from required parameters

#### `CreateAliasOutput`

``` purescript
newtype CreateAliasOutput
  = CreateAliasOutput { "Alias" :: Maybe (Alias) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype CreateAliasOutput _
Generic CreateAliasOutput _
Show CreateAliasOutput
Decode CreateAliasOutput
Encode CreateAliasOutput
```

#### `newCreateAliasOutput`

``` purescript
newCreateAliasOutput :: CreateAliasOutput
```

Constructs CreateAliasOutput from required parameters

#### `newCreateAliasOutput'`

``` purescript
newCreateAliasOutput' :: ({ "Alias" :: Maybe (Alias) } -> { "Alias" :: Maybe (Alias) }) -> CreateAliasOutput
```

Constructs CreateAliasOutput's fields from required parameters

#### `CreateBuildInput`

``` purescript
newtype CreateBuildInput
  = CreateBuildInput { "Name" :: Maybe (NonZeroAndMaxString), "Version" :: Maybe (NonZeroAndMaxString), "StorageLocation" :: Maybe (S3Location), "OperatingSystem" :: Maybe (OperatingSystem) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype CreateBuildInput _
Generic CreateBuildInput _
Show CreateBuildInput
Decode CreateBuildInput
Encode CreateBuildInput
```

#### `newCreateBuildInput`

``` purescript
newCreateBuildInput :: CreateBuildInput
```

Constructs CreateBuildInput from required parameters

#### `newCreateBuildInput'`

``` purescript
newCreateBuildInput' :: ({ "Name" :: Maybe (NonZeroAndMaxString), "Version" :: Maybe (NonZeroAndMaxString), "StorageLocation" :: Maybe (S3Location), "OperatingSystem" :: Maybe (OperatingSystem) } -> { "Name" :: Maybe (NonZeroAndMaxString), "Version" :: Maybe (NonZeroAndMaxString), "StorageLocation" :: Maybe (S3Location), "OperatingSystem" :: Maybe (OperatingSystem) }) -> CreateBuildInput
```

Constructs CreateBuildInput's fields from required parameters

#### `CreateBuildOutput`

``` purescript
newtype CreateBuildOutput
  = CreateBuildOutput { "Build" :: Maybe (Build), "UploadCredentials" :: Maybe (AwsCredentials), "StorageLocation" :: Maybe (S3Location) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype CreateBuildOutput _
Generic CreateBuildOutput _
Show CreateBuildOutput
Decode CreateBuildOutput
Encode CreateBuildOutput
```

#### `newCreateBuildOutput`

``` purescript
newCreateBuildOutput :: CreateBuildOutput
```

Constructs CreateBuildOutput from required parameters

#### `newCreateBuildOutput'`

``` purescript
newCreateBuildOutput' :: ({ "Build" :: Maybe (Build), "UploadCredentials" :: Maybe (AwsCredentials), "StorageLocation" :: Maybe (S3Location) } -> { "Build" :: Maybe (Build), "UploadCredentials" :: Maybe (AwsCredentials), "StorageLocation" :: Maybe (S3Location) }) -> CreateBuildOutput
```

Constructs CreateBuildOutput's fields from required parameters

#### `CreateFleetInput`

``` purescript
newtype CreateFleetInput
  = CreateFleetInput { "Name" :: NonZeroAndMaxString, "Description" :: Maybe (NonZeroAndMaxString), "BuildId" :: BuildId, "ServerLaunchPath" :: Maybe (NonZeroAndMaxString), "ServerLaunchParameters" :: Maybe (NonZeroAndMaxString), "LogPaths" :: Maybe (StringList), "EC2InstanceType" :: EC2InstanceType, "EC2InboundPermissions" :: Maybe (IpPermissionsList), "NewGameSessionProtectionPolicy" :: Maybe (ProtectionPolicy), "RuntimeConfiguration" :: Maybe (RuntimeConfiguration), "ResourceCreationLimitPolicy" :: Maybe (ResourceCreationLimitPolicy), "MetricGroups" :: Maybe (MetricGroupList), "PeerVpcAwsAccountId" :: Maybe (NonZeroAndMaxString), "PeerVpcId" :: Maybe (NonZeroAndMaxString), "FleetType" :: Maybe (FleetType) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype CreateFleetInput _
Generic CreateFleetInput _
Show CreateFleetInput
Decode CreateFleetInput
Encode CreateFleetInput
```

#### `newCreateFleetInput`

``` purescript
newCreateFleetInput :: BuildId -> EC2InstanceType -> NonZeroAndMaxString -> CreateFleetInput
```

Constructs CreateFleetInput from required parameters

#### `newCreateFleetInput'`

``` purescript
newCreateFleetInput' :: BuildId -> EC2InstanceType -> NonZeroAndMaxString -> ({ "Name" :: NonZeroAndMaxString, "Description" :: Maybe (NonZeroAndMaxString), "BuildId" :: BuildId, "ServerLaunchPath" :: Maybe (NonZeroAndMaxString), "ServerLaunchParameters" :: Maybe (NonZeroAndMaxString), "LogPaths" :: Maybe (StringList), "EC2InstanceType" :: EC2InstanceType, "EC2InboundPermissions" :: Maybe (IpPermissionsList), "NewGameSessionProtectionPolicy" :: Maybe (ProtectionPolicy), "RuntimeConfiguration" :: Maybe (RuntimeConfiguration), "ResourceCreationLimitPolicy" :: Maybe (ResourceCreationLimitPolicy), "MetricGroups" :: Maybe (MetricGroupList), "PeerVpcAwsAccountId" :: Maybe (NonZeroAndMaxString), "PeerVpcId" :: Maybe (NonZeroAndMaxString), "FleetType" :: Maybe (FleetType) } -> { "Name" :: NonZeroAndMaxString, "Description" :: Maybe (NonZeroAndMaxString), "BuildId" :: BuildId, "ServerLaunchPath" :: Maybe (NonZeroAndMaxString), "ServerLaunchParameters" :: Maybe (NonZeroAndMaxString), "LogPaths" :: Maybe (StringList), "EC2InstanceType" :: EC2InstanceType, "EC2InboundPermissions" :: Maybe (IpPermissionsList), "NewGameSessionProtectionPolicy" :: Maybe (ProtectionPolicy), "RuntimeConfiguration" :: Maybe (RuntimeConfiguration), "ResourceCreationLimitPolicy" :: Maybe (ResourceCreationLimitPolicy), "MetricGroups" :: Maybe (MetricGroupList), "PeerVpcAwsAccountId" :: Maybe (NonZeroAndMaxString), "PeerVpcId" :: Maybe (NonZeroAndMaxString), "FleetType" :: Maybe (FleetType) }) -> CreateFleetInput
```

Constructs CreateFleetInput's fields from required parameters

#### `CreateFleetOutput`

``` purescript
newtype CreateFleetOutput
  = CreateFleetOutput { "FleetAttributes" :: Maybe (FleetAttributes) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype CreateFleetOutput _
Generic CreateFleetOutput _
Show CreateFleetOutput
Decode CreateFleetOutput
Encode CreateFleetOutput
```

#### `newCreateFleetOutput`

``` purescript
newCreateFleetOutput :: CreateFleetOutput
```

Constructs CreateFleetOutput from required parameters

#### `newCreateFleetOutput'`

``` purescript
newCreateFleetOutput' :: ({ "FleetAttributes" :: Maybe (FleetAttributes) } -> { "FleetAttributes" :: Maybe (FleetAttributes) }) -> CreateFleetOutput
```

Constructs CreateFleetOutput's fields from required parameters

#### `CreateGameSessionInput`

``` purescript
newtype CreateGameSessionInput
  = CreateGameSessionInput { "FleetId" :: Maybe (FleetId), "AliasId" :: Maybe (AliasId), "MaximumPlayerSessionCount" :: WholeNumber, "Name" :: Maybe (NonZeroAndMaxString), "GameProperties" :: Maybe (GamePropertyList), "CreatorId" :: Maybe (NonZeroAndMaxString), "GameSessionId" :: Maybe (IdStringModel), "IdempotencyToken" :: Maybe (IdStringModel), "GameSessionData" :: Maybe (GameSessionData) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype CreateGameSessionInput _
Generic CreateGameSessionInput _
Show CreateGameSessionInput
Decode CreateGameSessionInput
Encode CreateGameSessionInput
```

#### `newCreateGameSessionInput`

``` purescript
newCreateGameSessionInput :: WholeNumber -> CreateGameSessionInput
```

Constructs CreateGameSessionInput from required parameters

#### `newCreateGameSessionInput'`

``` purescript
newCreateGameSessionInput' :: WholeNumber -> ({ "FleetId" :: Maybe (FleetId), "AliasId" :: Maybe (AliasId), "MaximumPlayerSessionCount" :: WholeNumber, "Name" :: Maybe (NonZeroAndMaxString), "GameProperties" :: Maybe (GamePropertyList), "CreatorId" :: Maybe (NonZeroAndMaxString), "GameSessionId" :: Maybe (IdStringModel), "IdempotencyToken" :: Maybe (IdStringModel), "GameSessionData" :: Maybe (GameSessionData) } -> { "FleetId" :: Maybe (FleetId), "AliasId" :: Maybe (AliasId), "MaximumPlayerSessionCount" :: WholeNumber, "Name" :: Maybe (NonZeroAndMaxString), "GameProperties" :: Maybe (GamePropertyList), "CreatorId" :: Maybe (NonZeroAndMaxString), "GameSessionId" :: Maybe (IdStringModel), "IdempotencyToken" :: Maybe (IdStringModel), "GameSessionData" :: Maybe (GameSessionData) }) -> CreateGameSessionInput
```

Constructs CreateGameSessionInput's fields from required parameters

#### `CreateGameSessionOutput`

``` purescript
newtype CreateGameSessionOutput
  = CreateGameSessionOutput { "GameSession" :: Maybe (GameSession) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype CreateGameSessionOutput _
Generic CreateGameSessionOutput _
Show CreateGameSessionOutput
Decode CreateGameSessionOutput
Encode CreateGameSessionOutput
```

#### `newCreateGameSessionOutput`

``` purescript
newCreateGameSessionOutput :: CreateGameSessionOutput
```

Constructs CreateGameSessionOutput from required parameters

#### `newCreateGameSessionOutput'`

``` purescript
newCreateGameSessionOutput' :: ({ "GameSession" :: Maybe (GameSession) } -> { "GameSession" :: Maybe (GameSession) }) -> CreateGameSessionOutput
```

Constructs CreateGameSessionOutput's fields from required parameters

#### `CreateGameSessionQueueInput`

``` purescript
newtype CreateGameSessionQueueInput
  = CreateGameSessionQueueInput { "Name" :: GameSessionQueueName, "TimeoutInSeconds" :: Maybe (WholeNumber), "PlayerLatencyPolicies" :: Maybe (PlayerLatencyPolicyList), "Destinations" :: Maybe (GameSessionQueueDestinationList) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype CreateGameSessionQueueInput _
Generic CreateGameSessionQueueInput _
Show CreateGameSessionQueueInput
Decode CreateGameSessionQueueInput
Encode CreateGameSessionQueueInput
```

#### `newCreateGameSessionQueueInput`

``` purescript
newCreateGameSessionQueueInput :: GameSessionQueueName -> CreateGameSessionQueueInput
```

Constructs CreateGameSessionQueueInput from required parameters

#### `newCreateGameSessionQueueInput'`

``` purescript
newCreateGameSessionQueueInput' :: GameSessionQueueName -> ({ "Name" :: GameSessionQueueName, "TimeoutInSeconds" :: Maybe (WholeNumber), "PlayerLatencyPolicies" :: Maybe (PlayerLatencyPolicyList), "Destinations" :: Maybe (GameSessionQueueDestinationList) } -> { "Name" :: GameSessionQueueName, "TimeoutInSeconds" :: Maybe (WholeNumber), "PlayerLatencyPolicies" :: Maybe (PlayerLatencyPolicyList), "Destinations" :: Maybe (GameSessionQueueDestinationList) }) -> CreateGameSessionQueueInput
```

Constructs CreateGameSessionQueueInput's fields from required parameters

#### `CreateGameSessionQueueOutput`

``` purescript
newtype CreateGameSessionQueueOutput
  = CreateGameSessionQueueOutput { "GameSessionQueue" :: Maybe (GameSessionQueue) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype CreateGameSessionQueueOutput _
Generic CreateGameSessionQueueOutput _
Show CreateGameSessionQueueOutput
Decode CreateGameSessionQueueOutput
Encode CreateGameSessionQueueOutput
```

#### `newCreateGameSessionQueueOutput`

``` purescript
newCreateGameSessionQueueOutput :: CreateGameSessionQueueOutput
```

Constructs CreateGameSessionQueueOutput from required parameters

#### `newCreateGameSessionQueueOutput'`

``` purescript
newCreateGameSessionQueueOutput' :: ({ "GameSessionQueue" :: Maybe (GameSessionQueue) } -> { "GameSessionQueue" :: Maybe (GameSessionQueue) }) -> CreateGameSessionQueueOutput
```

Constructs CreateGameSessionQueueOutput's fields from required parameters

#### `CreateMatchmakingConfigurationInput`

``` purescript
newtype CreateMatchmakingConfigurationInput
  = CreateMatchmakingConfigurationInput { "Name" :: MatchmakingIdStringModel, "Description" :: Maybe (NonZeroAndMaxString), "GameSessionQueueArns" :: QueueArnsList, "RequestTimeoutSeconds" :: MatchmakingRequestTimeoutInteger, "AcceptanceTimeoutSeconds" :: Maybe (MatchmakingAcceptanceTimeoutInteger), "AcceptanceRequired" :: BooleanModel, "RuleSetName" :: MatchmakingIdStringModel, "NotificationTarget" :: Maybe (SnsArnStringModel), "AdditionalPlayerCount" :: Maybe (WholeNumber), "CustomEventData" :: Maybe (CustomEventData), "GameProperties" :: Maybe (GamePropertyList), "GameSessionData" :: Maybe (GameSessionData) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype CreateMatchmakingConfigurationInput _
Generic CreateMatchmakingConfigurationInput _
Show CreateMatchmakingConfigurationInput
Decode CreateMatchmakingConfigurationInput
Encode CreateMatchmakingConfigurationInput
```

#### `newCreateMatchmakingConfigurationInput`

``` purescript
newCreateMatchmakingConfigurationInput :: BooleanModel -> QueueArnsList -> MatchmakingIdStringModel -> MatchmakingRequestTimeoutInteger -> MatchmakingIdStringModel -> CreateMatchmakingConfigurationInput
```

Constructs CreateMatchmakingConfigurationInput from required parameters

#### `newCreateMatchmakingConfigurationInput'`

``` purescript
newCreateMatchmakingConfigurationInput' :: BooleanModel -> QueueArnsList -> MatchmakingIdStringModel -> MatchmakingRequestTimeoutInteger -> MatchmakingIdStringModel -> ({ "Name" :: MatchmakingIdStringModel, "Description" :: Maybe (NonZeroAndMaxString), "GameSessionQueueArns" :: QueueArnsList, "RequestTimeoutSeconds" :: MatchmakingRequestTimeoutInteger, "AcceptanceTimeoutSeconds" :: Maybe (MatchmakingAcceptanceTimeoutInteger), "AcceptanceRequired" :: BooleanModel, "RuleSetName" :: MatchmakingIdStringModel, "NotificationTarget" :: Maybe (SnsArnStringModel), "AdditionalPlayerCount" :: Maybe (WholeNumber), "CustomEventData" :: Maybe (CustomEventData), "GameProperties" :: Maybe (GamePropertyList), "GameSessionData" :: Maybe (GameSessionData) } -> { "Name" :: MatchmakingIdStringModel, "Description" :: Maybe (NonZeroAndMaxString), "GameSessionQueueArns" :: QueueArnsList, "RequestTimeoutSeconds" :: MatchmakingRequestTimeoutInteger, "AcceptanceTimeoutSeconds" :: Maybe (MatchmakingAcceptanceTimeoutInteger), "AcceptanceRequired" :: BooleanModel, "RuleSetName" :: MatchmakingIdStringModel, "NotificationTarget" :: Maybe (SnsArnStringModel), "AdditionalPlayerCount" :: Maybe (WholeNumber), "CustomEventData" :: Maybe (CustomEventData), "GameProperties" :: Maybe (GamePropertyList), "GameSessionData" :: Maybe (GameSessionData) }) -> CreateMatchmakingConfigurationInput
```

Constructs CreateMatchmakingConfigurationInput's fields from required parameters

#### `CreateMatchmakingConfigurationOutput`

``` purescript
newtype CreateMatchmakingConfigurationOutput
  = CreateMatchmakingConfigurationOutput { "Configuration" :: Maybe (MatchmakingConfiguration) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype CreateMatchmakingConfigurationOutput _
Generic CreateMatchmakingConfigurationOutput _
Show CreateMatchmakingConfigurationOutput
Decode CreateMatchmakingConfigurationOutput
Encode CreateMatchmakingConfigurationOutput
```

#### `newCreateMatchmakingConfigurationOutput`

``` purescript
newCreateMatchmakingConfigurationOutput :: CreateMatchmakingConfigurationOutput
```

Constructs CreateMatchmakingConfigurationOutput from required parameters

#### `newCreateMatchmakingConfigurationOutput'`

``` purescript
newCreateMatchmakingConfigurationOutput' :: ({ "Configuration" :: Maybe (MatchmakingConfiguration) } -> { "Configuration" :: Maybe (MatchmakingConfiguration) }) -> CreateMatchmakingConfigurationOutput
```

Constructs CreateMatchmakingConfigurationOutput's fields from required parameters

#### `CreateMatchmakingRuleSetInput`

``` purescript
newtype CreateMatchmakingRuleSetInput
  = CreateMatchmakingRuleSetInput { "Name" :: MatchmakingIdStringModel, "RuleSetBody" :: RuleSetBody }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype CreateMatchmakingRuleSetInput _
Generic CreateMatchmakingRuleSetInput _
Show CreateMatchmakingRuleSetInput
Decode CreateMatchmakingRuleSetInput
Encode CreateMatchmakingRuleSetInput
```

#### `newCreateMatchmakingRuleSetInput`

``` purescript
newCreateMatchmakingRuleSetInput :: MatchmakingIdStringModel -> RuleSetBody -> CreateMatchmakingRuleSetInput
```

Constructs CreateMatchmakingRuleSetInput from required parameters

#### `newCreateMatchmakingRuleSetInput'`

``` purescript
newCreateMatchmakingRuleSetInput' :: MatchmakingIdStringModel -> RuleSetBody -> ({ "Name" :: MatchmakingIdStringModel, "RuleSetBody" :: RuleSetBody } -> { "Name" :: MatchmakingIdStringModel, "RuleSetBody" :: RuleSetBody }) -> CreateMatchmakingRuleSetInput
```

Constructs CreateMatchmakingRuleSetInput's fields from required parameters

#### `CreateMatchmakingRuleSetOutput`

``` purescript
newtype CreateMatchmakingRuleSetOutput
  = CreateMatchmakingRuleSetOutput { "RuleSet" :: MatchmakingRuleSet }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype CreateMatchmakingRuleSetOutput _
Generic CreateMatchmakingRuleSetOutput _
Show CreateMatchmakingRuleSetOutput
Decode CreateMatchmakingRuleSetOutput
Encode CreateMatchmakingRuleSetOutput
```

#### `newCreateMatchmakingRuleSetOutput`

``` purescript
newCreateMatchmakingRuleSetOutput :: MatchmakingRuleSet -> CreateMatchmakingRuleSetOutput
```

Constructs CreateMatchmakingRuleSetOutput from required parameters

#### `newCreateMatchmakingRuleSetOutput'`

``` purescript
newCreateMatchmakingRuleSetOutput' :: MatchmakingRuleSet -> ({ "RuleSet" :: MatchmakingRuleSet } -> { "RuleSet" :: MatchmakingRuleSet }) -> CreateMatchmakingRuleSetOutput
```

Constructs CreateMatchmakingRuleSetOutput's fields from required parameters

#### `CreatePlayerSessionInput`

``` purescript
newtype CreatePlayerSessionInput
  = CreatePlayerSessionInput { "GameSessionId" :: ArnStringModel, "PlayerId" :: NonZeroAndMaxString, "PlayerData" :: Maybe (PlayerData) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype CreatePlayerSessionInput _
Generic CreatePlayerSessionInput _
Show CreatePlayerSessionInput
Decode CreatePlayerSessionInput
Encode CreatePlayerSessionInput
```

#### `newCreatePlayerSessionInput`

``` purescript
newCreatePlayerSessionInput :: ArnStringModel -> NonZeroAndMaxString -> CreatePlayerSessionInput
```

Constructs CreatePlayerSessionInput from required parameters

#### `newCreatePlayerSessionInput'`

``` purescript
newCreatePlayerSessionInput' :: ArnStringModel -> NonZeroAndMaxString -> ({ "GameSessionId" :: ArnStringModel, "PlayerId" :: NonZeroAndMaxString, "PlayerData" :: Maybe (PlayerData) } -> { "GameSessionId" :: ArnStringModel, "PlayerId" :: NonZeroAndMaxString, "PlayerData" :: Maybe (PlayerData) }) -> CreatePlayerSessionInput
```

Constructs CreatePlayerSessionInput's fields from required parameters

#### `CreatePlayerSessionOutput`

``` purescript
newtype CreatePlayerSessionOutput
  = CreatePlayerSessionOutput { "PlayerSession" :: Maybe (PlayerSession) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype CreatePlayerSessionOutput _
Generic CreatePlayerSessionOutput _
Show CreatePlayerSessionOutput
Decode CreatePlayerSessionOutput
Encode CreatePlayerSessionOutput
```

#### `newCreatePlayerSessionOutput`

``` purescript
newCreatePlayerSessionOutput :: CreatePlayerSessionOutput
```

Constructs CreatePlayerSessionOutput from required parameters

#### `newCreatePlayerSessionOutput'`

``` purescript
newCreatePlayerSessionOutput' :: ({ "PlayerSession" :: Maybe (PlayerSession) } -> { "PlayerSession" :: Maybe (PlayerSession) }) -> CreatePlayerSessionOutput
```

Constructs CreatePlayerSessionOutput's fields from required parameters

#### `CreatePlayerSessionsInput`

``` purescript
newtype CreatePlayerSessionsInput
  = CreatePlayerSessionsInput { "GameSessionId" :: ArnStringModel, "PlayerIds" :: PlayerIdList, "PlayerDataMap" :: Maybe (PlayerDataMap) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype CreatePlayerSessionsInput _
Generic CreatePlayerSessionsInput _
Show CreatePlayerSessionsInput
Decode CreatePlayerSessionsInput
Encode CreatePlayerSessionsInput
```

#### `newCreatePlayerSessionsInput`

``` purescript
newCreatePlayerSessionsInput :: ArnStringModel -> PlayerIdList -> CreatePlayerSessionsInput
```

Constructs CreatePlayerSessionsInput from required parameters

#### `newCreatePlayerSessionsInput'`

``` purescript
newCreatePlayerSessionsInput' :: ArnStringModel -> PlayerIdList -> ({ "GameSessionId" :: ArnStringModel, "PlayerIds" :: PlayerIdList, "PlayerDataMap" :: Maybe (PlayerDataMap) } -> { "GameSessionId" :: ArnStringModel, "PlayerIds" :: PlayerIdList, "PlayerDataMap" :: Maybe (PlayerDataMap) }) -> CreatePlayerSessionsInput
```

Constructs CreatePlayerSessionsInput's fields from required parameters

#### `CreatePlayerSessionsOutput`

``` purescript
newtype CreatePlayerSessionsOutput
  = CreatePlayerSessionsOutput { "PlayerSessions" :: Maybe (PlayerSessionList) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype CreatePlayerSessionsOutput _
Generic CreatePlayerSessionsOutput _
Show CreatePlayerSessionsOutput
Decode CreatePlayerSessionsOutput
Encode CreatePlayerSessionsOutput
```

#### `newCreatePlayerSessionsOutput`

``` purescript
newCreatePlayerSessionsOutput :: CreatePlayerSessionsOutput
```

Constructs CreatePlayerSessionsOutput from required parameters

#### `newCreatePlayerSessionsOutput'`

``` purescript
newCreatePlayerSessionsOutput' :: ({ "PlayerSessions" :: Maybe (PlayerSessionList) } -> { "PlayerSessions" :: Maybe (PlayerSessionList) }) -> CreatePlayerSessionsOutput
```

Constructs CreatePlayerSessionsOutput's fields from required parameters

#### `CreateVpcPeeringAuthorizationInput`

``` purescript
newtype CreateVpcPeeringAuthorizationInput
  = CreateVpcPeeringAuthorizationInput { "GameLiftAwsAccountId" :: NonZeroAndMaxString, "PeerVpcId" :: NonZeroAndMaxString }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype CreateVpcPeeringAuthorizationInput _
Generic CreateVpcPeeringAuthorizationInput _
Show CreateVpcPeeringAuthorizationInput
Decode CreateVpcPeeringAuthorizationInput
Encode CreateVpcPeeringAuthorizationInput
```

#### `newCreateVpcPeeringAuthorizationInput`

``` purescript
newCreateVpcPeeringAuthorizationInput :: NonZeroAndMaxString -> NonZeroAndMaxString -> CreateVpcPeeringAuthorizationInput
```

Constructs CreateVpcPeeringAuthorizationInput from required parameters

#### `newCreateVpcPeeringAuthorizationInput'`

``` purescript
newCreateVpcPeeringAuthorizationInput' :: NonZeroAndMaxString -> NonZeroAndMaxString -> ({ "GameLiftAwsAccountId" :: NonZeroAndMaxString, "PeerVpcId" :: NonZeroAndMaxString } -> { "GameLiftAwsAccountId" :: NonZeroAndMaxString, "PeerVpcId" :: NonZeroAndMaxString }) -> CreateVpcPeeringAuthorizationInput
```

Constructs CreateVpcPeeringAuthorizationInput's fields from required parameters

#### `CreateVpcPeeringAuthorizationOutput`

``` purescript
newtype CreateVpcPeeringAuthorizationOutput
  = CreateVpcPeeringAuthorizationOutput { "VpcPeeringAuthorization" :: Maybe (VpcPeeringAuthorization) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype CreateVpcPeeringAuthorizationOutput _
Generic CreateVpcPeeringAuthorizationOutput _
Show CreateVpcPeeringAuthorizationOutput
Decode CreateVpcPeeringAuthorizationOutput
Encode CreateVpcPeeringAuthorizationOutput
```

#### `newCreateVpcPeeringAuthorizationOutput`

``` purescript
newCreateVpcPeeringAuthorizationOutput :: CreateVpcPeeringAuthorizationOutput
```

Constructs CreateVpcPeeringAuthorizationOutput from required parameters

#### `newCreateVpcPeeringAuthorizationOutput'`

``` purescript
newCreateVpcPeeringAuthorizationOutput' :: ({ "VpcPeeringAuthorization" :: Maybe (VpcPeeringAuthorization) } -> { "VpcPeeringAuthorization" :: Maybe (VpcPeeringAuthorization) }) -> CreateVpcPeeringAuthorizationOutput
```

Constructs CreateVpcPeeringAuthorizationOutput's fields from required parameters

#### `CreateVpcPeeringConnectionInput`

``` purescript
newtype CreateVpcPeeringConnectionInput
  = CreateVpcPeeringConnectionInput { "FleetId" :: FleetId, "PeerVpcAwsAccountId" :: NonZeroAndMaxString, "PeerVpcId" :: NonZeroAndMaxString }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype CreateVpcPeeringConnectionInput _
Generic CreateVpcPeeringConnectionInput _
Show CreateVpcPeeringConnectionInput
Decode CreateVpcPeeringConnectionInput
Encode CreateVpcPeeringConnectionInput
```

#### `newCreateVpcPeeringConnectionInput`

``` purescript
newCreateVpcPeeringConnectionInput :: FleetId -> NonZeroAndMaxString -> NonZeroAndMaxString -> CreateVpcPeeringConnectionInput
```

Constructs CreateVpcPeeringConnectionInput from required parameters

#### `newCreateVpcPeeringConnectionInput'`

``` purescript
newCreateVpcPeeringConnectionInput' :: FleetId -> NonZeroAndMaxString -> NonZeroAndMaxString -> ({ "FleetId" :: FleetId, "PeerVpcAwsAccountId" :: NonZeroAndMaxString, "PeerVpcId" :: NonZeroAndMaxString } -> { "FleetId" :: FleetId, "PeerVpcAwsAccountId" :: NonZeroAndMaxString, "PeerVpcId" :: NonZeroAndMaxString }) -> CreateVpcPeeringConnectionInput
```

Constructs CreateVpcPeeringConnectionInput's fields from required parameters

#### `CreateVpcPeeringConnectionOutput`

``` purescript
newtype CreateVpcPeeringConnectionOutput
  = CreateVpcPeeringConnectionOutput NoArguments
```

##### Instances
``` purescript
Newtype CreateVpcPeeringConnectionOutput _
Generic CreateVpcPeeringConnectionOutput _
Show CreateVpcPeeringConnectionOutput
Decode CreateVpcPeeringConnectionOutput
Encode CreateVpcPeeringConnectionOutput
```

#### `CustomEventData`

``` purescript
newtype CustomEventData
  = CustomEventData String
```

##### Instances
``` purescript
Newtype CustomEventData _
Generic CustomEventData _
Show CustomEventData
Decode CustomEventData
Encode CustomEventData
```

#### `DeleteAliasInput`

``` purescript
newtype DeleteAliasInput
  = DeleteAliasInput { "AliasId" :: AliasId }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DeleteAliasInput _
Generic DeleteAliasInput _
Show DeleteAliasInput
Decode DeleteAliasInput
Encode DeleteAliasInput
```

#### `newDeleteAliasInput`

``` purescript
newDeleteAliasInput :: AliasId -> DeleteAliasInput
```

Constructs DeleteAliasInput from required parameters

#### `newDeleteAliasInput'`

``` purescript
newDeleteAliasInput' :: AliasId -> ({ "AliasId" :: AliasId } -> { "AliasId" :: AliasId }) -> DeleteAliasInput
```

Constructs DeleteAliasInput's fields from required parameters

#### `DeleteBuildInput`

``` purescript
newtype DeleteBuildInput
  = DeleteBuildInput { "BuildId" :: BuildId }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DeleteBuildInput _
Generic DeleteBuildInput _
Show DeleteBuildInput
Decode DeleteBuildInput
Encode DeleteBuildInput
```

#### `newDeleteBuildInput`

``` purescript
newDeleteBuildInput :: BuildId -> DeleteBuildInput
```

Constructs DeleteBuildInput from required parameters

#### `newDeleteBuildInput'`

``` purescript
newDeleteBuildInput' :: BuildId -> ({ "BuildId" :: BuildId } -> { "BuildId" :: BuildId }) -> DeleteBuildInput
```

Constructs DeleteBuildInput's fields from required parameters

#### `DeleteFleetInput`

``` purescript
newtype DeleteFleetInput
  = DeleteFleetInput { "FleetId" :: FleetId }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DeleteFleetInput _
Generic DeleteFleetInput _
Show DeleteFleetInput
Decode DeleteFleetInput
Encode DeleteFleetInput
```

#### `newDeleteFleetInput`

``` purescript
newDeleteFleetInput :: FleetId -> DeleteFleetInput
```

Constructs DeleteFleetInput from required parameters

#### `newDeleteFleetInput'`

``` purescript
newDeleteFleetInput' :: FleetId -> ({ "FleetId" :: FleetId } -> { "FleetId" :: FleetId }) -> DeleteFleetInput
```

Constructs DeleteFleetInput's fields from required parameters

#### `DeleteGameSessionQueueInput`

``` purescript
newtype DeleteGameSessionQueueInput
  = DeleteGameSessionQueueInput { "Name" :: GameSessionQueueName }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DeleteGameSessionQueueInput _
Generic DeleteGameSessionQueueInput _
Show DeleteGameSessionQueueInput
Decode DeleteGameSessionQueueInput
Encode DeleteGameSessionQueueInput
```

#### `newDeleteGameSessionQueueInput`

``` purescript
newDeleteGameSessionQueueInput :: GameSessionQueueName -> DeleteGameSessionQueueInput
```

Constructs DeleteGameSessionQueueInput from required parameters

#### `newDeleteGameSessionQueueInput'`

``` purescript
newDeleteGameSessionQueueInput' :: GameSessionQueueName -> ({ "Name" :: GameSessionQueueName } -> { "Name" :: GameSessionQueueName }) -> DeleteGameSessionQueueInput
```

Constructs DeleteGameSessionQueueInput's fields from required parameters

#### `DeleteGameSessionQueueOutput`

``` purescript
newtype DeleteGameSessionQueueOutput
  = DeleteGameSessionQueueOutput NoArguments
```

##### Instances
``` purescript
Newtype DeleteGameSessionQueueOutput _
Generic DeleteGameSessionQueueOutput _
Show DeleteGameSessionQueueOutput
Decode DeleteGameSessionQueueOutput
Encode DeleteGameSessionQueueOutput
```

#### `DeleteMatchmakingConfigurationInput`

``` purescript
newtype DeleteMatchmakingConfigurationInput
  = DeleteMatchmakingConfigurationInput { "Name" :: MatchmakingIdStringModel }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DeleteMatchmakingConfigurationInput _
Generic DeleteMatchmakingConfigurationInput _
Show DeleteMatchmakingConfigurationInput
Decode DeleteMatchmakingConfigurationInput
Encode DeleteMatchmakingConfigurationInput
```

#### `newDeleteMatchmakingConfigurationInput`

``` purescript
newDeleteMatchmakingConfigurationInput :: MatchmakingIdStringModel -> DeleteMatchmakingConfigurationInput
```

Constructs DeleteMatchmakingConfigurationInput from required parameters

#### `newDeleteMatchmakingConfigurationInput'`

``` purescript
newDeleteMatchmakingConfigurationInput' :: MatchmakingIdStringModel -> ({ "Name" :: MatchmakingIdStringModel } -> { "Name" :: MatchmakingIdStringModel }) -> DeleteMatchmakingConfigurationInput
```

Constructs DeleteMatchmakingConfigurationInput's fields from required parameters

#### `DeleteMatchmakingConfigurationOutput`

``` purescript
newtype DeleteMatchmakingConfigurationOutput
  = DeleteMatchmakingConfigurationOutput NoArguments
```

##### Instances
``` purescript
Newtype DeleteMatchmakingConfigurationOutput _
Generic DeleteMatchmakingConfigurationOutput _
Show DeleteMatchmakingConfigurationOutput
Decode DeleteMatchmakingConfigurationOutput
Encode DeleteMatchmakingConfigurationOutput
```

#### `DeleteScalingPolicyInput`

``` purescript
newtype DeleteScalingPolicyInput
  = DeleteScalingPolicyInput { "Name" :: NonZeroAndMaxString, "FleetId" :: FleetId }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DeleteScalingPolicyInput _
Generic DeleteScalingPolicyInput _
Show DeleteScalingPolicyInput
Decode DeleteScalingPolicyInput
Encode DeleteScalingPolicyInput
```

#### `newDeleteScalingPolicyInput`

``` purescript
newDeleteScalingPolicyInput :: FleetId -> NonZeroAndMaxString -> DeleteScalingPolicyInput
```

Constructs DeleteScalingPolicyInput from required parameters

#### `newDeleteScalingPolicyInput'`

``` purescript
newDeleteScalingPolicyInput' :: FleetId -> NonZeroAndMaxString -> ({ "Name" :: NonZeroAndMaxString, "FleetId" :: FleetId } -> { "Name" :: NonZeroAndMaxString, "FleetId" :: FleetId }) -> DeleteScalingPolicyInput
```

Constructs DeleteScalingPolicyInput's fields from required parameters

#### `DeleteVpcPeeringAuthorizationInput`

``` purescript
newtype DeleteVpcPeeringAuthorizationInput
  = DeleteVpcPeeringAuthorizationInput { "GameLiftAwsAccountId" :: NonZeroAndMaxString, "PeerVpcId" :: NonZeroAndMaxString }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DeleteVpcPeeringAuthorizationInput _
Generic DeleteVpcPeeringAuthorizationInput _
Show DeleteVpcPeeringAuthorizationInput
Decode DeleteVpcPeeringAuthorizationInput
Encode DeleteVpcPeeringAuthorizationInput
```

#### `newDeleteVpcPeeringAuthorizationInput`

``` purescript
newDeleteVpcPeeringAuthorizationInput :: NonZeroAndMaxString -> NonZeroAndMaxString -> DeleteVpcPeeringAuthorizationInput
```

Constructs DeleteVpcPeeringAuthorizationInput from required parameters

#### `newDeleteVpcPeeringAuthorizationInput'`

``` purescript
newDeleteVpcPeeringAuthorizationInput' :: NonZeroAndMaxString -> NonZeroAndMaxString -> ({ "GameLiftAwsAccountId" :: NonZeroAndMaxString, "PeerVpcId" :: NonZeroAndMaxString } -> { "GameLiftAwsAccountId" :: NonZeroAndMaxString, "PeerVpcId" :: NonZeroAndMaxString }) -> DeleteVpcPeeringAuthorizationInput
```

Constructs DeleteVpcPeeringAuthorizationInput's fields from required parameters

#### `DeleteVpcPeeringAuthorizationOutput`

``` purescript
newtype DeleteVpcPeeringAuthorizationOutput
  = DeleteVpcPeeringAuthorizationOutput NoArguments
```

##### Instances
``` purescript
Newtype DeleteVpcPeeringAuthorizationOutput _
Generic DeleteVpcPeeringAuthorizationOutput _
Show DeleteVpcPeeringAuthorizationOutput
Decode DeleteVpcPeeringAuthorizationOutput
Encode DeleteVpcPeeringAuthorizationOutput
```

#### `DeleteVpcPeeringConnectionInput`

``` purescript
newtype DeleteVpcPeeringConnectionInput
  = DeleteVpcPeeringConnectionInput { "FleetId" :: FleetId, "VpcPeeringConnectionId" :: NonZeroAndMaxString }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DeleteVpcPeeringConnectionInput _
Generic DeleteVpcPeeringConnectionInput _
Show DeleteVpcPeeringConnectionInput
Decode DeleteVpcPeeringConnectionInput
Encode DeleteVpcPeeringConnectionInput
```

#### `newDeleteVpcPeeringConnectionInput`

``` purescript
newDeleteVpcPeeringConnectionInput :: FleetId -> NonZeroAndMaxString -> DeleteVpcPeeringConnectionInput
```

Constructs DeleteVpcPeeringConnectionInput from required parameters

#### `newDeleteVpcPeeringConnectionInput'`

``` purescript
newDeleteVpcPeeringConnectionInput' :: FleetId -> NonZeroAndMaxString -> ({ "FleetId" :: FleetId, "VpcPeeringConnectionId" :: NonZeroAndMaxString } -> { "FleetId" :: FleetId, "VpcPeeringConnectionId" :: NonZeroAndMaxString }) -> DeleteVpcPeeringConnectionInput
```

Constructs DeleteVpcPeeringConnectionInput's fields from required parameters

#### `DeleteVpcPeeringConnectionOutput`

``` purescript
newtype DeleteVpcPeeringConnectionOutput
  = DeleteVpcPeeringConnectionOutput NoArguments
```

##### Instances
``` purescript
Newtype DeleteVpcPeeringConnectionOutput _
Generic DeleteVpcPeeringConnectionOutput _
Show DeleteVpcPeeringConnectionOutput
Decode DeleteVpcPeeringConnectionOutput
Encode DeleteVpcPeeringConnectionOutput
```

#### `DescribeAliasInput`

``` purescript
newtype DescribeAliasInput
  = DescribeAliasInput { "AliasId" :: AliasId }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DescribeAliasInput _
Generic DescribeAliasInput _
Show DescribeAliasInput
Decode DescribeAliasInput
Encode DescribeAliasInput
```

#### `newDescribeAliasInput`

``` purescript
newDescribeAliasInput :: AliasId -> DescribeAliasInput
```

Constructs DescribeAliasInput from required parameters

#### `newDescribeAliasInput'`

``` purescript
newDescribeAliasInput' :: AliasId -> ({ "AliasId" :: AliasId } -> { "AliasId" :: AliasId }) -> DescribeAliasInput
```

Constructs DescribeAliasInput's fields from required parameters

#### `DescribeAliasOutput`

``` purescript
newtype DescribeAliasOutput
  = DescribeAliasOutput { "Alias" :: Maybe (Alias) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype DescribeAliasOutput _
Generic DescribeAliasOutput _
Show DescribeAliasOutput
Decode DescribeAliasOutput
Encode DescribeAliasOutput
```

#### `newDescribeAliasOutput`

``` purescript
newDescribeAliasOutput :: DescribeAliasOutput
```

Constructs DescribeAliasOutput from required parameters

#### `newDescribeAliasOutput'`

``` purescript
newDescribeAliasOutput' :: ({ "Alias" :: Maybe (Alias) } -> { "Alias" :: Maybe (Alias) }) -> DescribeAliasOutput
```

Constructs DescribeAliasOutput's fields from required parameters

#### `DescribeBuildInput`

``` purescript
newtype DescribeBuildInput
  = DescribeBuildInput { "BuildId" :: BuildId }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DescribeBuildInput _
Generic DescribeBuildInput _
Show DescribeBuildInput
Decode DescribeBuildInput
Encode DescribeBuildInput
```

#### `newDescribeBuildInput`

``` purescript
newDescribeBuildInput :: BuildId -> DescribeBuildInput
```

Constructs DescribeBuildInput from required parameters

#### `newDescribeBuildInput'`

``` purescript
newDescribeBuildInput' :: BuildId -> ({ "BuildId" :: BuildId } -> { "BuildId" :: BuildId }) -> DescribeBuildInput
```

Constructs DescribeBuildInput's fields from required parameters

#### `DescribeBuildOutput`

``` purescript
newtype DescribeBuildOutput
  = DescribeBuildOutput { "Build" :: Maybe (Build) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype DescribeBuildOutput _
Generic DescribeBuildOutput _
Show DescribeBuildOutput
Decode DescribeBuildOutput
Encode DescribeBuildOutput
```

#### `newDescribeBuildOutput`

``` purescript
newDescribeBuildOutput :: DescribeBuildOutput
```

Constructs DescribeBuildOutput from required parameters

#### `newDescribeBuildOutput'`

``` purescript
newDescribeBuildOutput' :: ({ "Build" :: Maybe (Build) } -> { "Build" :: Maybe (Build) }) -> DescribeBuildOutput
```

Constructs DescribeBuildOutput's fields from required parameters

#### `DescribeEC2InstanceLimitsInput`

``` purescript
newtype DescribeEC2InstanceLimitsInput
  = DescribeEC2InstanceLimitsInput { "EC2InstanceType" :: Maybe (EC2InstanceType) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DescribeEC2InstanceLimitsInput _
Generic DescribeEC2InstanceLimitsInput _
Show DescribeEC2InstanceLimitsInput
Decode DescribeEC2InstanceLimitsInput
Encode DescribeEC2InstanceLimitsInput
```

#### `newDescribeEC2InstanceLimitsInput`

``` purescript
newDescribeEC2InstanceLimitsInput :: DescribeEC2InstanceLimitsInput
```

Constructs DescribeEC2InstanceLimitsInput from required parameters

#### `newDescribeEC2InstanceLimitsInput'`

``` purescript
newDescribeEC2InstanceLimitsInput' :: ({ "EC2InstanceType" :: Maybe (EC2InstanceType) } -> { "EC2InstanceType" :: Maybe (EC2InstanceType) }) -> DescribeEC2InstanceLimitsInput
```

Constructs DescribeEC2InstanceLimitsInput's fields from required parameters

#### `DescribeEC2InstanceLimitsOutput`

``` purescript
newtype DescribeEC2InstanceLimitsOutput
  = DescribeEC2InstanceLimitsOutput { "EC2InstanceLimits" :: Maybe (EC2InstanceLimitList) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype DescribeEC2InstanceLimitsOutput _
Generic DescribeEC2InstanceLimitsOutput _
Show DescribeEC2InstanceLimitsOutput
Decode DescribeEC2InstanceLimitsOutput
Encode DescribeEC2InstanceLimitsOutput
```

#### `newDescribeEC2InstanceLimitsOutput`

``` purescript
newDescribeEC2InstanceLimitsOutput :: DescribeEC2InstanceLimitsOutput
```

Constructs DescribeEC2InstanceLimitsOutput from required parameters

#### `newDescribeEC2InstanceLimitsOutput'`

``` purescript
newDescribeEC2InstanceLimitsOutput' :: ({ "EC2InstanceLimits" :: Maybe (EC2InstanceLimitList) } -> { "EC2InstanceLimits" :: Maybe (EC2InstanceLimitList) }) -> DescribeEC2InstanceLimitsOutput
```

Constructs DescribeEC2InstanceLimitsOutput's fields from required parameters

#### `DescribeFleetAttributesInput`

``` purescript
newtype DescribeFleetAttributesInput
  = DescribeFleetAttributesInput { "FleetIds" :: Maybe (FleetIdList), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DescribeFleetAttributesInput _
Generic DescribeFleetAttributesInput _
Show DescribeFleetAttributesInput
Decode DescribeFleetAttributesInput
Encode DescribeFleetAttributesInput
```

#### `newDescribeFleetAttributesInput`

``` purescript
newDescribeFleetAttributesInput :: DescribeFleetAttributesInput
```

Constructs DescribeFleetAttributesInput from required parameters

#### `newDescribeFleetAttributesInput'`

``` purescript
newDescribeFleetAttributesInput' :: ({ "FleetIds" :: Maybe (FleetIdList), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "FleetIds" :: Maybe (FleetIdList), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeFleetAttributesInput
```

Constructs DescribeFleetAttributesInput's fields from required parameters

#### `DescribeFleetAttributesOutput`

``` purescript
newtype DescribeFleetAttributesOutput
  = DescribeFleetAttributesOutput { "FleetAttributes" :: Maybe (FleetAttributesList), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype DescribeFleetAttributesOutput _
Generic DescribeFleetAttributesOutput _
Show DescribeFleetAttributesOutput
Decode DescribeFleetAttributesOutput
Encode DescribeFleetAttributesOutput
```

#### `newDescribeFleetAttributesOutput`

``` purescript
newDescribeFleetAttributesOutput :: DescribeFleetAttributesOutput
```

Constructs DescribeFleetAttributesOutput from required parameters

#### `newDescribeFleetAttributesOutput'`

``` purescript
newDescribeFleetAttributesOutput' :: ({ "FleetAttributes" :: Maybe (FleetAttributesList), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "FleetAttributes" :: Maybe (FleetAttributesList), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeFleetAttributesOutput
```

Constructs DescribeFleetAttributesOutput's fields from required parameters

#### `DescribeFleetCapacityInput`

``` purescript
newtype DescribeFleetCapacityInput
  = DescribeFleetCapacityInput { "FleetIds" :: Maybe (FleetIdList), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DescribeFleetCapacityInput _
Generic DescribeFleetCapacityInput _
Show DescribeFleetCapacityInput
Decode DescribeFleetCapacityInput
Encode DescribeFleetCapacityInput
```

#### `newDescribeFleetCapacityInput`

``` purescript
newDescribeFleetCapacityInput :: DescribeFleetCapacityInput
```

Constructs DescribeFleetCapacityInput from required parameters

#### `newDescribeFleetCapacityInput'`

``` purescript
newDescribeFleetCapacityInput' :: ({ "FleetIds" :: Maybe (FleetIdList), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "FleetIds" :: Maybe (FleetIdList), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeFleetCapacityInput
```

Constructs DescribeFleetCapacityInput's fields from required parameters

#### `DescribeFleetCapacityOutput`

``` purescript
newtype DescribeFleetCapacityOutput
  = DescribeFleetCapacityOutput { "FleetCapacity" :: Maybe (FleetCapacityList), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype DescribeFleetCapacityOutput _
Generic DescribeFleetCapacityOutput _
Show DescribeFleetCapacityOutput
Decode DescribeFleetCapacityOutput
Encode DescribeFleetCapacityOutput
```

#### `newDescribeFleetCapacityOutput`

``` purescript
newDescribeFleetCapacityOutput :: DescribeFleetCapacityOutput
```

Constructs DescribeFleetCapacityOutput from required parameters

#### `newDescribeFleetCapacityOutput'`

``` purescript
newDescribeFleetCapacityOutput' :: ({ "FleetCapacity" :: Maybe (FleetCapacityList), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "FleetCapacity" :: Maybe (FleetCapacityList), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeFleetCapacityOutput
```

Constructs DescribeFleetCapacityOutput's fields from required parameters

#### `DescribeFleetEventsInput`

``` purescript
newtype DescribeFleetEventsInput
  = DescribeFleetEventsInput { "FleetId" :: FleetId, "StartTime" :: Maybe (Timestamp), "EndTime" :: Maybe (Timestamp), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DescribeFleetEventsInput _
Generic DescribeFleetEventsInput _
Show DescribeFleetEventsInput
Decode DescribeFleetEventsInput
Encode DescribeFleetEventsInput
```

#### `newDescribeFleetEventsInput`

``` purescript
newDescribeFleetEventsInput :: FleetId -> DescribeFleetEventsInput
```

Constructs DescribeFleetEventsInput from required parameters

#### `newDescribeFleetEventsInput'`

``` purescript
newDescribeFleetEventsInput' :: FleetId -> ({ "FleetId" :: FleetId, "StartTime" :: Maybe (Timestamp), "EndTime" :: Maybe (Timestamp), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "FleetId" :: FleetId, "StartTime" :: Maybe (Timestamp), "EndTime" :: Maybe (Timestamp), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeFleetEventsInput
```

Constructs DescribeFleetEventsInput's fields from required parameters

#### `DescribeFleetEventsOutput`

``` purescript
newtype DescribeFleetEventsOutput
  = DescribeFleetEventsOutput { "Events" :: Maybe (EventList), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype DescribeFleetEventsOutput _
Generic DescribeFleetEventsOutput _
Show DescribeFleetEventsOutput
Decode DescribeFleetEventsOutput
Encode DescribeFleetEventsOutput
```

#### `newDescribeFleetEventsOutput`

``` purescript
newDescribeFleetEventsOutput :: DescribeFleetEventsOutput
```

Constructs DescribeFleetEventsOutput from required parameters

#### `newDescribeFleetEventsOutput'`

``` purescript
newDescribeFleetEventsOutput' :: ({ "Events" :: Maybe (EventList), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "Events" :: Maybe (EventList), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeFleetEventsOutput
```

Constructs DescribeFleetEventsOutput's fields from required parameters

#### `DescribeFleetPortSettingsInput`

``` purescript
newtype DescribeFleetPortSettingsInput
  = DescribeFleetPortSettingsInput { "FleetId" :: FleetId }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DescribeFleetPortSettingsInput _
Generic DescribeFleetPortSettingsInput _
Show DescribeFleetPortSettingsInput
Decode DescribeFleetPortSettingsInput
Encode DescribeFleetPortSettingsInput
```

#### `newDescribeFleetPortSettingsInput`

``` purescript
newDescribeFleetPortSettingsInput :: FleetId -> DescribeFleetPortSettingsInput
```

Constructs DescribeFleetPortSettingsInput from required parameters

#### `newDescribeFleetPortSettingsInput'`

``` purescript
newDescribeFleetPortSettingsInput' :: FleetId -> ({ "FleetId" :: FleetId } -> { "FleetId" :: FleetId }) -> DescribeFleetPortSettingsInput
```

Constructs DescribeFleetPortSettingsInput's fields from required parameters

#### `DescribeFleetPortSettingsOutput`

``` purescript
newtype DescribeFleetPortSettingsOutput
  = DescribeFleetPortSettingsOutput { "InboundPermissions" :: Maybe (IpPermissionsList) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype DescribeFleetPortSettingsOutput _
Generic DescribeFleetPortSettingsOutput _
Show DescribeFleetPortSettingsOutput
Decode DescribeFleetPortSettingsOutput
Encode DescribeFleetPortSettingsOutput
```

#### `newDescribeFleetPortSettingsOutput`

``` purescript
newDescribeFleetPortSettingsOutput :: DescribeFleetPortSettingsOutput
```

Constructs DescribeFleetPortSettingsOutput from required parameters

#### `newDescribeFleetPortSettingsOutput'`

``` purescript
newDescribeFleetPortSettingsOutput' :: ({ "InboundPermissions" :: Maybe (IpPermissionsList) } -> { "InboundPermissions" :: Maybe (IpPermissionsList) }) -> DescribeFleetPortSettingsOutput
```

Constructs DescribeFleetPortSettingsOutput's fields from required parameters

#### `DescribeFleetUtilizationInput`

``` purescript
newtype DescribeFleetUtilizationInput
  = DescribeFleetUtilizationInput { "FleetIds" :: Maybe (FleetIdList), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DescribeFleetUtilizationInput _
Generic DescribeFleetUtilizationInput _
Show DescribeFleetUtilizationInput
Decode DescribeFleetUtilizationInput
Encode DescribeFleetUtilizationInput
```

#### `newDescribeFleetUtilizationInput`

``` purescript
newDescribeFleetUtilizationInput :: DescribeFleetUtilizationInput
```

Constructs DescribeFleetUtilizationInput from required parameters

#### `newDescribeFleetUtilizationInput'`

``` purescript
newDescribeFleetUtilizationInput' :: ({ "FleetIds" :: Maybe (FleetIdList), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "FleetIds" :: Maybe (FleetIdList), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeFleetUtilizationInput
```

Constructs DescribeFleetUtilizationInput's fields from required parameters

#### `DescribeFleetUtilizationOutput`

``` purescript
newtype DescribeFleetUtilizationOutput
  = DescribeFleetUtilizationOutput { "FleetUtilization" :: Maybe (FleetUtilizationList), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype DescribeFleetUtilizationOutput _
Generic DescribeFleetUtilizationOutput _
Show DescribeFleetUtilizationOutput
Decode DescribeFleetUtilizationOutput
Encode DescribeFleetUtilizationOutput
```

#### `newDescribeFleetUtilizationOutput`

``` purescript
newDescribeFleetUtilizationOutput :: DescribeFleetUtilizationOutput
```

Constructs DescribeFleetUtilizationOutput from required parameters

#### `newDescribeFleetUtilizationOutput'`

``` purescript
newDescribeFleetUtilizationOutput' :: ({ "FleetUtilization" :: Maybe (FleetUtilizationList), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "FleetUtilization" :: Maybe (FleetUtilizationList), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeFleetUtilizationOutput
```

Constructs DescribeFleetUtilizationOutput's fields from required parameters

#### `DescribeGameSessionDetailsInput`

``` purescript
newtype DescribeGameSessionDetailsInput
  = DescribeGameSessionDetailsInput { "FleetId" :: Maybe (FleetId), "GameSessionId" :: Maybe (ArnStringModel), "AliasId" :: Maybe (AliasId), "StatusFilter" :: Maybe (NonZeroAndMaxString), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DescribeGameSessionDetailsInput _
Generic DescribeGameSessionDetailsInput _
Show DescribeGameSessionDetailsInput
Decode DescribeGameSessionDetailsInput
Encode DescribeGameSessionDetailsInput
```

#### `newDescribeGameSessionDetailsInput`

``` purescript
newDescribeGameSessionDetailsInput :: DescribeGameSessionDetailsInput
```

Constructs DescribeGameSessionDetailsInput from required parameters

#### `newDescribeGameSessionDetailsInput'`

``` purescript
newDescribeGameSessionDetailsInput' :: ({ "FleetId" :: Maybe (FleetId), "GameSessionId" :: Maybe (ArnStringModel), "AliasId" :: Maybe (AliasId), "StatusFilter" :: Maybe (NonZeroAndMaxString), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "FleetId" :: Maybe (FleetId), "GameSessionId" :: Maybe (ArnStringModel), "AliasId" :: Maybe (AliasId), "StatusFilter" :: Maybe (NonZeroAndMaxString), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeGameSessionDetailsInput
```

Constructs DescribeGameSessionDetailsInput's fields from required parameters

#### `DescribeGameSessionDetailsOutput`

``` purescript
newtype DescribeGameSessionDetailsOutput
  = DescribeGameSessionDetailsOutput { "GameSessionDetails" :: Maybe (GameSessionDetailList), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype DescribeGameSessionDetailsOutput _
Generic DescribeGameSessionDetailsOutput _
Show DescribeGameSessionDetailsOutput
Decode DescribeGameSessionDetailsOutput
Encode DescribeGameSessionDetailsOutput
```

#### `newDescribeGameSessionDetailsOutput`

``` purescript
newDescribeGameSessionDetailsOutput :: DescribeGameSessionDetailsOutput
```

Constructs DescribeGameSessionDetailsOutput from required parameters

#### `newDescribeGameSessionDetailsOutput'`

``` purescript
newDescribeGameSessionDetailsOutput' :: ({ "GameSessionDetails" :: Maybe (GameSessionDetailList), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "GameSessionDetails" :: Maybe (GameSessionDetailList), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeGameSessionDetailsOutput
```

Constructs DescribeGameSessionDetailsOutput's fields from required parameters

#### `DescribeGameSessionPlacementInput`

``` purescript
newtype DescribeGameSessionPlacementInput
  = DescribeGameSessionPlacementInput { "PlacementId" :: IdStringModel }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DescribeGameSessionPlacementInput _
Generic DescribeGameSessionPlacementInput _
Show DescribeGameSessionPlacementInput
Decode DescribeGameSessionPlacementInput
Encode DescribeGameSessionPlacementInput
```

#### `newDescribeGameSessionPlacementInput`

``` purescript
newDescribeGameSessionPlacementInput :: IdStringModel -> DescribeGameSessionPlacementInput
```

Constructs DescribeGameSessionPlacementInput from required parameters

#### `newDescribeGameSessionPlacementInput'`

``` purescript
newDescribeGameSessionPlacementInput' :: IdStringModel -> ({ "PlacementId" :: IdStringModel } -> { "PlacementId" :: IdStringModel }) -> DescribeGameSessionPlacementInput
```

Constructs DescribeGameSessionPlacementInput's fields from required parameters

#### `DescribeGameSessionPlacementOutput`

``` purescript
newtype DescribeGameSessionPlacementOutput
  = DescribeGameSessionPlacementOutput { "GameSessionPlacement" :: Maybe (GameSessionPlacement) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype DescribeGameSessionPlacementOutput _
Generic DescribeGameSessionPlacementOutput _
Show DescribeGameSessionPlacementOutput
Decode DescribeGameSessionPlacementOutput
Encode DescribeGameSessionPlacementOutput
```

#### `newDescribeGameSessionPlacementOutput`

``` purescript
newDescribeGameSessionPlacementOutput :: DescribeGameSessionPlacementOutput
```

Constructs DescribeGameSessionPlacementOutput from required parameters

#### `newDescribeGameSessionPlacementOutput'`

``` purescript
newDescribeGameSessionPlacementOutput' :: ({ "GameSessionPlacement" :: Maybe (GameSessionPlacement) } -> { "GameSessionPlacement" :: Maybe (GameSessionPlacement) }) -> DescribeGameSessionPlacementOutput
```

Constructs DescribeGameSessionPlacementOutput's fields from required parameters

#### `DescribeGameSessionQueuesInput`

``` purescript
newtype DescribeGameSessionQueuesInput
  = DescribeGameSessionQueuesInput { "Names" :: Maybe (GameSessionQueueNameList), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DescribeGameSessionQueuesInput _
Generic DescribeGameSessionQueuesInput _
Show DescribeGameSessionQueuesInput
Decode DescribeGameSessionQueuesInput
Encode DescribeGameSessionQueuesInput
```

#### `newDescribeGameSessionQueuesInput`

``` purescript
newDescribeGameSessionQueuesInput :: DescribeGameSessionQueuesInput
```

Constructs DescribeGameSessionQueuesInput from required parameters

#### `newDescribeGameSessionQueuesInput'`

``` purescript
newDescribeGameSessionQueuesInput' :: ({ "Names" :: Maybe (GameSessionQueueNameList), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "Names" :: Maybe (GameSessionQueueNameList), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeGameSessionQueuesInput
```

Constructs DescribeGameSessionQueuesInput's fields from required parameters

#### `DescribeGameSessionQueuesOutput`

``` purescript
newtype DescribeGameSessionQueuesOutput
  = DescribeGameSessionQueuesOutput { "GameSessionQueues" :: Maybe (GameSessionQueueList), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype DescribeGameSessionQueuesOutput _
Generic DescribeGameSessionQueuesOutput _
Show DescribeGameSessionQueuesOutput
Decode DescribeGameSessionQueuesOutput
Encode DescribeGameSessionQueuesOutput
```

#### `newDescribeGameSessionQueuesOutput`

``` purescript
newDescribeGameSessionQueuesOutput :: DescribeGameSessionQueuesOutput
```

Constructs DescribeGameSessionQueuesOutput from required parameters

#### `newDescribeGameSessionQueuesOutput'`

``` purescript
newDescribeGameSessionQueuesOutput' :: ({ "GameSessionQueues" :: Maybe (GameSessionQueueList), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "GameSessionQueues" :: Maybe (GameSessionQueueList), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeGameSessionQueuesOutput
```

Constructs DescribeGameSessionQueuesOutput's fields from required parameters

#### `DescribeGameSessionsInput`

``` purescript
newtype DescribeGameSessionsInput
  = DescribeGameSessionsInput { "FleetId" :: Maybe (FleetId), "GameSessionId" :: Maybe (ArnStringModel), "AliasId" :: Maybe (AliasId), "StatusFilter" :: Maybe (NonZeroAndMaxString), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DescribeGameSessionsInput _
Generic DescribeGameSessionsInput _
Show DescribeGameSessionsInput
Decode DescribeGameSessionsInput
Encode DescribeGameSessionsInput
```

#### `newDescribeGameSessionsInput`

``` purescript
newDescribeGameSessionsInput :: DescribeGameSessionsInput
```

Constructs DescribeGameSessionsInput from required parameters

#### `newDescribeGameSessionsInput'`

``` purescript
newDescribeGameSessionsInput' :: ({ "FleetId" :: Maybe (FleetId), "GameSessionId" :: Maybe (ArnStringModel), "AliasId" :: Maybe (AliasId), "StatusFilter" :: Maybe (NonZeroAndMaxString), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "FleetId" :: Maybe (FleetId), "GameSessionId" :: Maybe (ArnStringModel), "AliasId" :: Maybe (AliasId), "StatusFilter" :: Maybe (NonZeroAndMaxString), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeGameSessionsInput
```

Constructs DescribeGameSessionsInput's fields from required parameters

#### `DescribeGameSessionsOutput`

``` purescript
newtype DescribeGameSessionsOutput
  = DescribeGameSessionsOutput { "GameSessions" :: Maybe (GameSessionList), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype DescribeGameSessionsOutput _
Generic DescribeGameSessionsOutput _
Show DescribeGameSessionsOutput
Decode DescribeGameSessionsOutput
Encode DescribeGameSessionsOutput
```

#### `newDescribeGameSessionsOutput`

``` purescript
newDescribeGameSessionsOutput :: DescribeGameSessionsOutput
```

Constructs DescribeGameSessionsOutput from required parameters

#### `newDescribeGameSessionsOutput'`

``` purescript
newDescribeGameSessionsOutput' :: ({ "GameSessions" :: Maybe (GameSessionList), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "GameSessions" :: Maybe (GameSessionList), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeGameSessionsOutput
```

Constructs DescribeGameSessionsOutput's fields from required parameters

#### `DescribeInstancesInput`

``` purescript
newtype DescribeInstancesInput
  = DescribeInstancesInput { "FleetId" :: FleetId, "InstanceId" :: Maybe (InstanceId), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DescribeInstancesInput _
Generic DescribeInstancesInput _
Show DescribeInstancesInput
Decode DescribeInstancesInput
Encode DescribeInstancesInput
```

#### `newDescribeInstancesInput`

``` purescript
newDescribeInstancesInput :: FleetId -> DescribeInstancesInput
```

Constructs DescribeInstancesInput from required parameters

#### `newDescribeInstancesInput'`

``` purescript
newDescribeInstancesInput' :: FleetId -> ({ "FleetId" :: FleetId, "InstanceId" :: Maybe (InstanceId), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "FleetId" :: FleetId, "InstanceId" :: Maybe (InstanceId), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeInstancesInput
```

Constructs DescribeInstancesInput's fields from required parameters

#### `DescribeInstancesOutput`

``` purescript
newtype DescribeInstancesOutput
  = DescribeInstancesOutput { "Instances" :: Maybe (InstanceList), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype DescribeInstancesOutput _
Generic DescribeInstancesOutput _
Show DescribeInstancesOutput
Decode DescribeInstancesOutput
Encode DescribeInstancesOutput
```

#### `newDescribeInstancesOutput`

``` purescript
newDescribeInstancesOutput :: DescribeInstancesOutput
```

Constructs DescribeInstancesOutput from required parameters

#### `newDescribeInstancesOutput'`

``` purescript
newDescribeInstancesOutput' :: ({ "Instances" :: Maybe (InstanceList), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "Instances" :: Maybe (InstanceList), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeInstancesOutput
```

Constructs DescribeInstancesOutput's fields from required parameters

#### `DescribeMatchmakingConfigurationsInput`

``` purescript
newtype DescribeMatchmakingConfigurationsInput
  = DescribeMatchmakingConfigurationsInput { "Names" :: Maybe (MatchmakingIdList), "RuleSetName" :: Maybe (MatchmakingIdStringModel), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DescribeMatchmakingConfigurationsInput _
Generic DescribeMatchmakingConfigurationsInput _
Show DescribeMatchmakingConfigurationsInput
Decode DescribeMatchmakingConfigurationsInput
Encode DescribeMatchmakingConfigurationsInput
```

#### `newDescribeMatchmakingConfigurationsInput`

``` purescript
newDescribeMatchmakingConfigurationsInput :: DescribeMatchmakingConfigurationsInput
```

Constructs DescribeMatchmakingConfigurationsInput from required parameters

#### `newDescribeMatchmakingConfigurationsInput'`

``` purescript
newDescribeMatchmakingConfigurationsInput' :: ({ "Names" :: Maybe (MatchmakingIdList), "RuleSetName" :: Maybe (MatchmakingIdStringModel), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "Names" :: Maybe (MatchmakingIdList), "RuleSetName" :: Maybe (MatchmakingIdStringModel), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeMatchmakingConfigurationsInput
```

Constructs DescribeMatchmakingConfigurationsInput's fields from required parameters

#### `DescribeMatchmakingConfigurationsOutput`

``` purescript
newtype DescribeMatchmakingConfigurationsOutput
  = DescribeMatchmakingConfigurationsOutput { "Configurations" :: Maybe (MatchmakingConfigurationList), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype DescribeMatchmakingConfigurationsOutput _
Generic DescribeMatchmakingConfigurationsOutput _
Show DescribeMatchmakingConfigurationsOutput
Decode DescribeMatchmakingConfigurationsOutput
Encode DescribeMatchmakingConfigurationsOutput
```

#### `newDescribeMatchmakingConfigurationsOutput`

``` purescript
newDescribeMatchmakingConfigurationsOutput :: DescribeMatchmakingConfigurationsOutput
```

Constructs DescribeMatchmakingConfigurationsOutput from required parameters

#### `newDescribeMatchmakingConfigurationsOutput'`

``` purescript
newDescribeMatchmakingConfigurationsOutput' :: ({ "Configurations" :: Maybe (MatchmakingConfigurationList), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "Configurations" :: Maybe (MatchmakingConfigurationList), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeMatchmakingConfigurationsOutput
```

Constructs DescribeMatchmakingConfigurationsOutput's fields from required parameters

#### `DescribeMatchmakingInput`

``` purescript
newtype DescribeMatchmakingInput
  = DescribeMatchmakingInput { "TicketIds" :: MatchmakingIdList }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DescribeMatchmakingInput _
Generic DescribeMatchmakingInput _
Show DescribeMatchmakingInput
Decode DescribeMatchmakingInput
Encode DescribeMatchmakingInput
```

#### `newDescribeMatchmakingInput`

``` purescript
newDescribeMatchmakingInput :: MatchmakingIdList -> DescribeMatchmakingInput
```

Constructs DescribeMatchmakingInput from required parameters

#### `newDescribeMatchmakingInput'`

``` purescript
newDescribeMatchmakingInput' :: MatchmakingIdList -> ({ "TicketIds" :: MatchmakingIdList } -> { "TicketIds" :: MatchmakingIdList }) -> DescribeMatchmakingInput
```

Constructs DescribeMatchmakingInput's fields from required parameters

#### `DescribeMatchmakingOutput`

``` purescript
newtype DescribeMatchmakingOutput
  = DescribeMatchmakingOutput { "TicketList" :: Maybe (MatchmakingTicketList) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype DescribeMatchmakingOutput _
Generic DescribeMatchmakingOutput _
Show DescribeMatchmakingOutput
Decode DescribeMatchmakingOutput
Encode DescribeMatchmakingOutput
```

#### `newDescribeMatchmakingOutput`

``` purescript
newDescribeMatchmakingOutput :: DescribeMatchmakingOutput
```

Constructs DescribeMatchmakingOutput from required parameters

#### `newDescribeMatchmakingOutput'`

``` purescript
newDescribeMatchmakingOutput' :: ({ "TicketList" :: Maybe (MatchmakingTicketList) } -> { "TicketList" :: Maybe (MatchmakingTicketList) }) -> DescribeMatchmakingOutput
```

Constructs DescribeMatchmakingOutput's fields from required parameters

#### `DescribeMatchmakingRuleSetsInput`

``` purescript
newtype DescribeMatchmakingRuleSetsInput
  = DescribeMatchmakingRuleSetsInput { "Names" :: Maybe (MatchmakingRuleSetNameList), "Limit" :: Maybe (RuleSetLimit), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DescribeMatchmakingRuleSetsInput _
Generic DescribeMatchmakingRuleSetsInput _
Show DescribeMatchmakingRuleSetsInput
Decode DescribeMatchmakingRuleSetsInput
Encode DescribeMatchmakingRuleSetsInput
```

#### `newDescribeMatchmakingRuleSetsInput`

``` purescript
newDescribeMatchmakingRuleSetsInput :: DescribeMatchmakingRuleSetsInput
```

Constructs DescribeMatchmakingRuleSetsInput from required parameters

#### `newDescribeMatchmakingRuleSetsInput'`

``` purescript
newDescribeMatchmakingRuleSetsInput' :: ({ "Names" :: Maybe (MatchmakingRuleSetNameList), "Limit" :: Maybe (RuleSetLimit), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "Names" :: Maybe (MatchmakingRuleSetNameList), "Limit" :: Maybe (RuleSetLimit), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeMatchmakingRuleSetsInput
```

Constructs DescribeMatchmakingRuleSetsInput's fields from required parameters

#### `DescribeMatchmakingRuleSetsOutput`

``` purescript
newtype DescribeMatchmakingRuleSetsOutput
  = DescribeMatchmakingRuleSetsOutput { "RuleSets" :: MatchmakingRuleSetList, "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype DescribeMatchmakingRuleSetsOutput _
Generic DescribeMatchmakingRuleSetsOutput _
Show DescribeMatchmakingRuleSetsOutput
Decode DescribeMatchmakingRuleSetsOutput
Encode DescribeMatchmakingRuleSetsOutput
```

#### `newDescribeMatchmakingRuleSetsOutput`

``` purescript
newDescribeMatchmakingRuleSetsOutput :: MatchmakingRuleSetList -> DescribeMatchmakingRuleSetsOutput
```

Constructs DescribeMatchmakingRuleSetsOutput from required parameters

#### `newDescribeMatchmakingRuleSetsOutput'`

``` purescript
newDescribeMatchmakingRuleSetsOutput' :: MatchmakingRuleSetList -> ({ "RuleSets" :: MatchmakingRuleSetList, "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "RuleSets" :: MatchmakingRuleSetList, "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeMatchmakingRuleSetsOutput
```

Constructs DescribeMatchmakingRuleSetsOutput's fields from required parameters

#### `DescribePlayerSessionsInput`

``` purescript
newtype DescribePlayerSessionsInput
  = DescribePlayerSessionsInput { "GameSessionId" :: Maybe (ArnStringModel), "PlayerId" :: Maybe (NonZeroAndMaxString), "PlayerSessionId" :: Maybe (PlayerSessionId), "PlayerSessionStatusFilter" :: Maybe (NonZeroAndMaxString), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DescribePlayerSessionsInput _
Generic DescribePlayerSessionsInput _
Show DescribePlayerSessionsInput
Decode DescribePlayerSessionsInput
Encode DescribePlayerSessionsInput
```

#### `newDescribePlayerSessionsInput`

``` purescript
newDescribePlayerSessionsInput :: DescribePlayerSessionsInput
```

Constructs DescribePlayerSessionsInput from required parameters

#### `newDescribePlayerSessionsInput'`

``` purescript
newDescribePlayerSessionsInput' :: ({ "GameSessionId" :: Maybe (ArnStringModel), "PlayerId" :: Maybe (NonZeroAndMaxString), "PlayerSessionId" :: Maybe (PlayerSessionId), "PlayerSessionStatusFilter" :: Maybe (NonZeroAndMaxString), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "GameSessionId" :: Maybe (ArnStringModel), "PlayerId" :: Maybe (NonZeroAndMaxString), "PlayerSessionId" :: Maybe (PlayerSessionId), "PlayerSessionStatusFilter" :: Maybe (NonZeroAndMaxString), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribePlayerSessionsInput
```

Constructs DescribePlayerSessionsInput's fields from required parameters

#### `DescribePlayerSessionsOutput`

``` purescript
newtype DescribePlayerSessionsOutput
  = DescribePlayerSessionsOutput { "PlayerSessions" :: Maybe (PlayerSessionList), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype DescribePlayerSessionsOutput _
Generic DescribePlayerSessionsOutput _
Show DescribePlayerSessionsOutput
Decode DescribePlayerSessionsOutput
Encode DescribePlayerSessionsOutput
```

#### `newDescribePlayerSessionsOutput`

``` purescript
newDescribePlayerSessionsOutput :: DescribePlayerSessionsOutput
```

Constructs DescribePlayerSessionsOutput from required parameters

#### `newDescribePlayerSessionsOutput'`

``` purescript
newDescribePlayerSessionsOutput' :: ({ "PlayerSessions" :: Maybe (PlayerSessionList), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "PlayerSessions" :: Maybe (PlayerSessionList), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribePlayerSessionsOutput
```

Constructs DescribePlayerSessionsOutput's fields from required parameters

#### `DescribeRuntimeConfigurationInput`

``` purescript
newtype DescribeRuntimeConfigurationInput
  = DescribeRuntimeConfigurationInput { "FleetId" :: FleetId }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DescribeRuntimeConfigurationInput _
Generic DescribeRuntimeConfigurationInput _
Show DescribeRuntimeConfigurationInput
Decode DescribeRuntimeConfigurationInput
Encode DescribeRuntimeConfigurationInput
```

#### `newDescribeRuntimeConfigurationInput`

``` purescript
newDescribeRuntimeConfigurationInput :: FleetId -> DescribeRuntimeConfigurationInput
```

Constructs DescribeRuntimeConfigurationInput from required parameters

#### `newDescribeRuntimeConfigurationInput'`

``` purescript
newDescribeRuntimeConfigurationInput' :: FleetId -> ({ "FleetId" :: FleetId } -> { "FleetId" :: FleetId }) -> DescribeRuntimeConfigurationInput
```

Constructs DescribeRuntimeConfigurationInput's fields from required parameters

#### `DescribeRuntimeConfigurationOutput`

``` purescript
newtype DescribeRuntimeConfigurationOutput
  = DescribeRuntimeConfigurationOutput { "RuntimeConfiguration" :: Maybe (RuntimeConfiguration) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype DescribeRuntimeConfigurationOutput _
Generic DescribeRuntimeConfigurationOutput _
Show DescribeRuntimeConfigurationOutput
Decode DescribeRuntimeConfigurationOutput
Encode DescribeRuntimeConfigurationOutput
```

#### `newDescribeRuntimeConfigurationOutput`

``` purescript
newDescribeRuntimeConfigurationOutput :: DescribeRuntimeConfigurationOutput
```

Constructs DescribeRuntimeConfigurationOutput from required parameters

#### `newDescribeRuntimeConfigurationOutput'`

``` purescript
newDescribeRuntimeConfigurationOutput' :: ({ "RuntimeConfiguration" :: Maybe (RuntimeConfiguration) } -> { "RuntimeConfiguration" :: Maybe (RuntimeConfiguration) }) -> DescribeRuntimeConfigurationOutput
```

Constructs DescribeRuntimeConfigurationOutput's fields from required parameters

#### `DescribeScalingPoliciesInput`

``` purescript
newtype DescribeScalingPoliciesInput
  = DescribeScalingPoliciesInput { "FleetId" :: FleetId, "StatusFilter" :: Maybe (ScalingStatusType), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DescribeScalingPoliciesInput _
Generic DescribeScalingPoliciesInput _
Show DescribeScalingPoliciesInput
Decode DescribeScalingPoliciesInput
Encode DescribeScalingPoliciesInput
```

#### `newDescribeScalingPoliciesInput`

``` purescript
newDescribeScalingPoliciesInput :: FleetId -> DescribeScalingPoliciesInput
```

Constructs DescribeScalingPoliciesInput from required parameters

#### `newDescribeScalingPoliciesInput'`

``` purescript
newDescribeScalingPoliciesInput' :: FleetId -> ({ "FleetId" :: FleetId, "StatusFilter" :: Maybe (ScalingStatusType), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "FleetId" :: FleetId, "StatusFilter" :: Maybe (ScalingStatusType), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeScalingPoliciesInput
```

Constructs DescribeScalingPoliciesInput's fields from required parameters

#### `DescribeScalingPoliciesOutput`

``` purescript
newtype DescribeScalingPoliciesOutput
  = DescribeScalingPoliciesOutput { "ScalingPolicies" :: Maybe (ScalingPolicyList), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype DescribeScalingPoliciesOutput _
Generic DescribeScalingPoliciesOutput _
Show DescribeScalingPoliciesOutput
Decode DescribeScalingPoliciesOutput
Encode DescribeScalingPoliciesOutput
```

#### `newDescribeScalingPoliciesOutput`

``` purescript
newDescribeScalingPoliciesOutput :: DescribeScalingPoliciesOutput
```

Constructs DescribeScalingPoliciesOutput from required parameters

#### `newDescribeScalingPoliciesOutput'`

``` purescript
newDescribeScalingPoliciesOutput' :: ({ "ScalingPolicies" :: Maybe (ScalingPolicyList), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "ScalingPolicies" :: Maybe (ScalingPolicyList), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> DescribeScalingPoliciesOutput
```

Constructs DescribeScalingPoliciesOutput's fields from required parameters

#### `DescribeVpcPeeringAuthorizationsInput`

``` purescript
newtype DescribeVpcPeeringAuthorizationsInput
  = DescribeVpcPeeringAuthorizationsInput NoArguments
```

##### Instances
``` purescript
Newtype DescribeVpcPeeringAuthorizationsInput _
Generic DescribeVpcPeeringAuthorizationsInput _
Show DescribeVpcPeeringAuthorizationsInput
Decode DescribeVpcPeeringAuthorizationsInput
Encode DescribeVpcPeeringAuthorizationsInput
```

#### `DescribeVpcPeeringAuthorizationsOutput`

``` purescript
newtype DescribeVpcPeeringAuthorizationsOutput
  = DescribeVpcPeeringAuthorizationsOutput { "VpcPeeringAuthorizations" :: Maybe (VpcPeeringAuthorizationList) }
```

##### Instances
``` purescript
Newtype DescribeVpcPeeringAuthorizationsOutput _
Generic DescribeVpcPeeringAuthorizationsOutput _
Show DescribeVpcPeeringAuthorizationsOutput
Decode DescribeVpcPeeringAuthorizationsOutput
Encode DescribeVpcPeeringAuthorizationsOutput
```

#### `newDescribeVpcPeeringAuthorizationsOutput`

``` purescript
newDescribeVpcPeeringAuthorizationsOutput :: DescribeVpcPeeringAuthorizationsOutput
```

Constructs DescribeVpcPeeringAuthorizationsOutput from required parameters

#### `newDescribeVpcPeeringAuthorizationsOutput'`

``` purescript
newDescribeVpcPeeringAuthorizationsOutput' :: ({ "VpcPeeringAuthorizations" :: Maybe (VpcPeeringAuthorizationList) } -> { "VpcPeeringAuthorizations" :: Maybe (VpcPeeringAuthorizationList) }) -> DescribeVpcPeeringAuthorizationsOutput
```

Constructs DescribeVpcPeeringAuthorizationsOutput's fields from required parameters

#### `DescribeVpcPeeringConnectionsInput`

``` purescript
newtype DescribeVpcPeeringConnectionsInput
  = DescribeVpcPeeringConnectionsInput { "FleetId" :: Maybe (FleetId) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype DescribeVpcPeeringConnectionsInput _
Generic DescribeVpcPeeringConnectionsInput _
Show DescribeVpcPeeringConnectionsInput
Decode DescribeVpcPeeringConnectionsInput
Encode DescribeVpcPeeringConnectionsInput
```

#### `newDescribeVpcPeeringConnectionsInput`

``` purescript
newDescribeVpcPeeringConnectionsInput :: DescribeVpcPeeringConnectionsInput
```

Constructs DescribeVpcPeeringConnectionsInput from required parameters

#### `newDescribeVpcPeeringConnectionsInput'`

``` purescript
newDescribeVpcPeeringConnectionsInput' :: ({ "FleetId" :: Maybe (FleetId) } -> { "FleetId" :: Maybe (FleetId) }) -> DescribeVpcPeeringConnectionsInput
```

Constructs DescribeVpcPeeringConnectionsInput's fields from required parameters

#### `DescribeVpcPeeringConnectionsOutput`

``` purescript
newtype DescribeVpcPeeringConnectionsOutput
  = DescribeVpcPeeringConnectionsOutput { "VpcPeeringConnections" :: Maybe (VpcPeeringConnectionList) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype DescribeVpcPeeringConnectionsOutput _
Generic DescribeVpcPeeringConnectionsOutput _
Show DescribeVpcPeeringConnectionsOutput
Decode DescribeVpcPeeringConnectionsOutput
Encode DescribeVpcPeeringConnectionsOutput
```

#### `newDescribeVpcPeeringConnectionsOutput`

``` purescript
newDescribeVpcPeeringConnectionsOutput :: DescribeVpcPeeringConnectionsOutput
```

Constructs DescribeVpcPeeringConnectionsOutput from required parameters

#### `newDescribeVpcPeeringConnectionsOutput'`

``` purescript
newDescribeVpcPeeringConnectionsOutput' :: ({ "VpcPeeringConnections" :: Maybe (VpcPeeringConnectionList) } -> { "VpcPeeringConnections" :: Maybe (VpcPeeringConnectionList) }) -> DescribeVpcPeeringConnectionsOutput
```

Constructs DescribeVpcPeeringConnectionsOutput's fields from required parameters

#### `DesiredPlayerSession`

``` purescript
newtype DesiredPlayerSession
  = DesiredPlayerSession { "PlayerId" :: Maybe (NonZeroAndMaxString), "PlayerData" :: Maybe (PlayerData) }
```

<p>Player information for use when creating player sessions using a game session placement request with <a>StartGameSessionPlacement</a>.</p>

##### Instances
``` purescript
Newtype DesiredPlayerSession _
Generic DesiredPlayerSession _
Show DesiredPlayerSession
Decode DesiredPlayerSession
Encode DesiredPlayerSession
```

#### `newDesiredPlayerSession`

``` purescript
newDesiredPlayerSession :: DesiredPlayerSession
```

Constructs DesiredPlayerSession from required parameters

#### `newDesiredPlayerSession'`

``` purescript
newDesiredPlayerSession' :: ({ "PlayerId" :: Maybe (NonZeroAndMaxString), "PlayerData" :: Maybe (PlayerData) } -> { "PlayerId" :: Maybe (NonZeroAndMaxString), "PlayerData" :: Maybe (PlayerData) }) -> DesiredPlayerSession
```

Constructs DesiredPlayerSession's fields from required parameters

#### `DesiredPlayerSessionList`

``` purescript
newtype DesiredPlayerSessionList
  = DesiredPlayerSessionList (Array DesiredPlayerSession)
```

##### Instances
``` purescript
Newtype DesiredPlayerSessionList _
Generic DesiredPlayerSessionList _
Show DesiredPlayerSessionList
Decode DesiredPlayerSessionList
Encode DesiredPlayerSessionList
```

#### `DoubleObject`

``` purescript
newtype DoubleObject
  = DoubleObject Number
```

##### Instances
``` purescript
Newtype DoubleObject _
Generic DoubleObject _
Show DoubleObject
Decode DoubleObject
Encode DoubleObject
```

#### `EC2InstanceCounts`

``` purescript
newtype EC2InstanceCounts
  = EC2InstanceCounts { "DESIRED" :: Maybe (WholeNumber), "MINIMUM" :: Maybe (WholeNumber), "MAXIMUM" :: Maybe (WholeNumber), "PENDING" :: Maybe (WholeNumber), "ACTIVE" :: Maybe (WholeNumber), "IDLE" :: Maybe (WholeNumber), "TERMINATING" :: Maybe (WholeNumber) }
```

<p>Current status of fleet capacity. The number of active instances should match or be in the process of matching the number of desired instances. Pending and terminating counts are non-zero only if fleet capacity is adjusting to an <a>UpdateFleetCapacity</a> request, or if access to resources is temporarily affected.</p> <p>Fleet-related operations include:</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet capacity:</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>PutScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (automatic scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> </ul> </li> <li> <p> <a>DeleteFleet</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype EC2InstanceCounts _
Generic EC2InstanceCounts _
Show EC2InstanceCounts
Decode EC2InstanceCounts
Encode EC2InstanceCounts
```

#### `newEC2InstanceCounts`

``` purescript
newEC2InstanceCounts :: EC2InstanceCounts
```

Constructs EC2InstanceCounts from required parameters

#### `newEC2InstanceCounts'`

``` purescript
newEC2InstanceCounts' :: ({ "DESIRED" :: Maybe (WholeNumber), "MINIMUM" :: Maybe (WholeNumber), "MAXIMUM" :: Maybe (WholeNumber), "PENDING" :: Maybe (WholeNumber), "ACTIVE" :: Maybe (WholeNumber), "IDLE" :: Maybe (WholeNumber), "TERMINATING" :: Maybe (WholeNumber) } -> { "DESIRED" :: Maybe (WholeNumber), "MINIMUM" :: Maybe (WholeNumber), "MAXIMUM" :: Maybe (WholeNumber), "PENDING" :: Maybe (WholeNumber), "ACTIVE" :: Maybe (WholeNumber), "IDLE" :: Maybe (WholeNumber), "TERMINATING" :: Maybe (WholeNumber) }) -> EC2InstanceCounts
```

Constructs EC2InstanceCounts's fields from required parameters

#### `EC2InstanceLimit`

``` purescript
newtype EC2InstanceLimit
  = EC2InstanceLimit { "EC2InstanceType" :: Maybe (EC2InstanceType), "CurrentInstances" :: Maybe (WholeNumber), "InstanceLimit" :: Maybe (WholeNumber) }
```

<p>Maximum number of instances allowed based on the Amazon Elastic Compute Cloud (Amazon EC2) instance type. Instance limits can be retrieved by calling <a>DescribeEC2InstanceLimits</a>.</p>

##### Instances
``` purescript
Newtype EC2InstanceLimit _
Generic EC2InstanceLimit _
Show EC2InstanceLimit
Decode EC2InstanceLimit
Encode EC2InstanceLimit
```

#### `newEC2InstanceLimit`

``` purescript
newEC2InstanceLimit :: EC2InstanceLimit
```

Constructs EC2InstanceLimit from required parameters

#### `newEC2InstanceLimit'`

``` purescript
newEC2InstanceLimit' :: ({ "EC2InstanceType" :: Maybe (EC2InstanceType), "CurrentInstances" :: Maybe (WholeNumber), "InstanceLimit" :: Maybe (WholeNumber) } -> { "EC2InstanceType" :: Maybe (EC2InstanceType), "CurrentInstances" :: Maybe (WholeNumber), "InstanceLimit" :: Maybe (WholeNumber) }) -> EC2InstanceLimit
```

Constructs EC2InstanceLimit's fields from required parameters

#### `EC2InstanceLimitList`

``` purescript
newtype EC2InstanceLimitList
  = EC2InstanceLimitList (Array EC2InstanceLimit)
```

##### Instances
``` purescript
Newtype EC2InstanceLimitList _
Generic EC2InstanceLimitList _
Show EC2InstanceLimitList
Decode EC2InstanceLimitList
Encode EC2InstanceLimitList
```

#### `EC2InstanceType`

``` purescript
newtype EC2InstanceType
  = EC2InstanceType String
```

##### Instances
``` purescript
Newtype EC2InstanceType _
Generic EC2InstanceType _
Show EC2InstanceType
Decode EC2InstanceType
Encode EC2InstanceType
```

#### `Event`

``` purescript
newtype Event
  = Event { "EventId" :: Maybe (NonZeroAndMaxString), "ResourceId" :: Maybe (NonZeroAndMaxString), "EventCode" :: Maybe (EventCode), "Message" :: Maybe (NonEmptyString), "EventTime" :: Maybe (Timestamp), "PreSignedLogUrl" :: Maybe (NonZeroAndMaxString) }
```

<p>Log entry describing an event that involves Amazon GameLift resources (such as a fleet). In addition to tracking activity, event codes and messages can provide additional information for troubleshooting and debugging problems.</p>

##### Instances
``` purescript
Newtype Event _
Generic Event _
Show Event
Decode Event
Encode Event
```

#### `newEvent`

``` purescript
newEvent :: Event
```

Constructs Event from required parameters

#### `newEvent'`

``` purescript
newEvent' :: ({ "EventId" :: Maybe (NonZeroAndMaxString), "ResourceId" :: Maybe (NonZeroAndMaxString), "EventCode" :: Maybe (EventCode), "Message" :: Maybe (NonEmptyString), "EventTime" :: Maybe (Timestamp), "PreSignedLogUrl" :: Maybe (NonZeroAndMaxString) } -> { "EventId" :: Maybe (NonZeroAndMaxString), "ResourceId" :: Maybe (NonZeroAndMaxString), "EventCode" :: Maybe (EventCode), "Message" :: Maybe (NonEmptyString), "EventTime" :: Maybe (Timestamp), "PreSignedLogUrl" :: Maybe (NonZeroAndMaxString) }) -> Event
```

Constructs Event's fields from required parameters

#### `EventCode`

``` purescript
newtype EventCode
  = EventCode String
```

##### Instances
``` purescript
Newtype EventCode _
Generic EventCode _
Show EventCode
Decode EventCode
Encode EventCode
```

#### `EventList`

``` purescript
newtype EventList
  = EventList (Array Event)
```

##### Instances
``` purescript
Newtype EventList _
Generic EventList _
Show EventList
Decode EventList
Encode EventList
```

#### `FleetAttributes`

``` purescript
newtype FleetAttributes
  = FleetAttributes { "FleetId" :: Maybe (FleetId), "FleetArn" :: Maybe (ArnStringModel), "FleetType" :: Maybe (FleetType), "InstanceType" :: Maybe (EC2InstanceType), "Description" :: Maybe (NonZeroAndMaxString), "Name" :: Maybe (NonZeroAndMaxString), "CreationTime" :: Maybe (Timestamp), "TerminationTime" :: Maybe (Timestamp), "Status" :: Maybe (FleetStatus), "BuildId" :: Maybe (BuildId), "ServerLaunchPath" :: Maybe (NonZeroAndMaxString), "ServerLaunchParameters" :: Maybe (NonZeroAndMaxString), "LogPaths" :: Maybe (StringList), "NewGameSessionProtectionPolicy" :: Maybe (ProtectionPolicy), "OperatingSystem" :: Maybe (OperatingSystem), "ResourceCreationLimitPolicy" :: Maybe (ResourceCreationLimitPolicy), "MetricGroups" :: Maybe (MetricGroupList) }
```

<p>General properties describing a fleet.</p> <p>Fleet-related operations include:</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet capacity:</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>PutScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (automatic scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> </ul> </li> <li> <p> <a>DeleteFleet</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype FleetAttributes _
Generic FleetAttributes _
Show FleetAttributes
Decode FleetAttributes
Encode FleetAttributes
```

#### `newFleetAttributes`

``` purescript
newFleetAttributes :: FleetAttributes
```

Constructs FleetAttributes from required parameters

#### `newFleetAttributes'`

``` purescript
newFleetAttributes' :: ({ "FleetId" :: Maybe (FleetId), "FleetArn" :: Maybe (ArnStringModel), "FleetType" :: Maybe (FleetType), "InstanceType" :: Maybe (EC2InstanceType), "Description" :: Maybe (NonZeroAndMaxString), "Name" :: Maybe (NonZeroAndMaxString), "CreationTime" :: Maybe (Timestamp), "TerminationTime" :: Maybe (Timestamp), "Status" :: Maybe (FleetStatus), "BuildId" :: Maybe (BuildId), "ServerLaunchPath" :: Maybe (NonZeroAndMaxString), "ServerLaunchParameters" :: Maybe (NonZeroAndMaxString), "LogPaths" :: Maybe (StringList), "NewGameSessionProtectionPolicy" :: Maybe (ProtectionPolicy), "OperatingSystem" :: Maybe (OperatingSystem), "ResourceCreationLimitPolicy" :: Maybe (ResourceCreationLimitPolicy), "MetricGroups" :: Maybe (MetricGroupList) } -> { "FleetId" :: Maybe (FleetId), "FleetArn" :: Maybe (ArnStringModel), "FleetType" :: Maybe (FleetType), "InstanceType" :: Maybe (EC2InstanceType), "Description" :: Maybe (NonZeroAndMaxString), "Name" :: Maybe (NonZeroAndMaxString), "CreationTime" :: Maybe (Timestamp), "TerminationTime" :: Maybe (Timestamp), "Status" :: Maybe (FleetStatus), "BuildId" :: Maybe (BuildId), "ServerLaunchPath" :: Maybe (NonZeroAndMaxString), "ServerLaunchParameters" :: Maybe (NonZeroAndMaxString), "LogPaths" :: Maybe (StringList), "NewGameSessionProtectionPolicy" :: Maybe (ProtectionPolicy), "OperatingSystem" :: Maybe (OperatingSystem), "ResourceCreationLimitPolicy" :: Maybe (ResourceCreationLimitPolicy), "MetricGroups" :: Maybe (MetricGroupList) }) -> FleetAttributes
```

Constructs FleetAttributes's fields from required parameters

#### `FleetAttributesList`

``` purescript
newtype FleetAttributesList
  = FleetAttributesList (Array FleetAttributes)
```

##### Instances
``` purescript
Newtype FleetAttributesList _
Generic FleetAttributesList _
Show FleetAttributesList
Decode FleetAttributesList
Encode FleetAttributesList
```

#### `FleetCapacity`

``` purescript
newtype FleetCapacity
  = FleetCapacity { "FleetId" :: Maybe (FleetId), "InstanceType" :: Maybe (EC2InstanceType), "InstanceCounts" :: Maybe (EC2InstanceCounts) }
```

<p>Information about the fleet's capacity. Fleet capacity is measured in EC2 instances. By default, new fleets have a capacity of one instance, but can be updated as needed. The maximum number of instances for a fleet is determined by the fleet's instance type.</p> <p>Fleet-related operations include:</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet capacity:</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>PutScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (automatic scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> </ul> </li> <li> <p> <a>DeleteFleet</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype FleetCapacity _
Generic FleetCapacity _
Show FleetCapacity
Decode FleetCapacity
Encode FleetCapacity
```

#### `newFleetCapacity`

``` purescript
newFleetCapacity :: FleetCapacity
```

Constructs FleetCapacity from required parameters

#### `newFleetCapacity'`

``` purescript
newFleetCapacity' :: ({ "FleetId" :: Maybe (FleetId), "InstanceType" :: Maybe (EC2InstanceType), "InstanceCounts" :: Maybe (EC2InstanceCounts) } -> { "FleetId" :: Maybe (FleetId), "InstanceType" :: Maybe (EC2InstanceType), "InstanceCounts" :: Maybe (EC2InstanceCounts) }) -> FleetCapacity
```

Constructs FleetCapacity's fields from required parameters

#### `FleetCapacityExceededException`

``` purescript
newtype FleetCapacityExceededException
  = FleetCapacityExceededException { "Message" :: Maybe (NonEmptyString) }
```

<p>The specified fleet has no available instances to fulfill a <code>CreateGameSession</code> request. Clients can retry such requests immediately or after a waiting period.</p>

##### Instances
``` purescript
Newtype FleetCapacityExceededException _
Generic FleetCapacityExceededException _
Show FleetCapacityExceededException
Decode FleetCapacityExceededException
Encode FleetCapacityExceededException
```

#### `newFleetCapacityExceededException`

``` purescript
newFleetCapacityExceededException :: FleetCapacityExceededException
```

Constructs FleetCapacityExceededException from required parameters

#### `newFleetCapacityExceededException'`

``` purescript
newFleetCapacityExceededException' :: ({ "Message" :: Maybe (NonEmptyString) } -> { "Message" :: Maybe (NonEmptyString) }) -> FleetCapacityExceededException
```

Constructs FleetCapacityExceededException's fields from required parameters

#### `FleetCapacityList`

``` purescript
newtype FleetCapacityList
  = FleetCapacityList (Array FleetCapacity)
```

##### Instances
``` purescript
Newtype FleetCapacityList _
Generic FleetCapacityList _
Show FleetCapacityList
Decode FleetCapacityList
Encode FleetCapacityList
```

#### `FleetId`

``` purescript
newtype FleetId
  = FleetId String
```

##### Instances
``` purescript
Newtype FleetId _
Generic FleetId _
Show FleetId
Decode FleetId
Encode FleetId
```

#### `FleetIdList`

``` purescript
newtype FleetIdList
  = FleetIdList (Array FleetId)
```

##### Instances
``` purescript
Newtype FleetIdList _
Generic FleetIdList _
Show FleetIdList
Decode FleetIdList
Encode FleetIdList
```

#### `FleetStatus`

``` purescript
newtype FleetStatus
  = FleetStatus String
```

##### Instances
``` purescript
Newtype FleetStatus _
Generic FleetStatus _
Show FleetStatus
Decode FleetStatus
Encode FleetStatus
```

#### `FleetType`

``` purescript
newtype FleetType
  = FleetType String
```

##### Instances
``` purescript
Newtype FleetType _
Generic FleetType _
Show FleetType
Decode FleetType
Encode FleetType
```

#### `FleetUtilization`

``` purescript
newtype FleetUtilization
  = FleetUtilization { "FleetId" :: Maybe (FleetId), "ActiveServerProcessCount" :: Maybe (WholeNumber), "ActiveGameSessionCount" :: Maybe (WholeNumber), "CurrentPlayerSessionCount" :: Maybe (WholeNumber), "MaximumPlayerSessionCount" :: Maybe (WholeNumber) }
```

<p>Current status of fleet utilization, including the number of game and player sessions being hosted.</p> <p>Fleet-related operations include:</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet capacity:</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>PutScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (automatic scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> </ul> </li> <li> <p> <a>DeleteFleet</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype FleetUtilization _
Generic FleetUtilization _
Show FleetUtilization
Decode FleetUtilization
Encode FleetUtilization
```

#### `newFleetUtilization`

``` purescript
newFleetUtilization :: FleetUtilization
```

Constructs FleetUtilization from required parameters

#### `newFleetUtilization'`

``` purescript
newFleetUtilization' :: ({ "FleetId" :: Maybe (FleetId), "ActiveServerProcessCount" :: Maybe (WholeNumber), "ActiveGameSessionCount" :: Maybe (WholeNumber), "CurrentPlayerSessionCount" :: Maybe (WholeNumber), "MaximumPlayerSessionCount" :: Maybe (WholeNumber) } -> { "FleetId" :: Maybe (FleetId), "ActiveServerProcessCount" :: Maybe (WholeNumber), "ActiveGameSessionCount" :: Maybe (WholeNumber), "CurrentPlayerSessionCount" :: Maybe (WholeNumber), "MaximumPlayerSessionCount" :: Maybe (WholeNumber) }) -> FleetUtilization
```

Constructs FleetUtilization's fields from required parameters

#### `FleetUtilizationList`

``` purescript
newtype FleetUtilizationList
  = FleetUtilizationList (Array FleetUtilization)
```

##### Instances
``` purescript
Newtype FleetUtilizationList _
Generic FleetUtilizationList _
Show FleetUtilizationList
Decode FleetUtilizationList
Encode FleetUtilizationList
```

#### `FreeText`

``` purescript
newtype FreeText
  = FreeText String
```

##### Instances
``` purescript
Newtype FreeText _
Generic FreeText _
Show FreeText
Decode FreeText
Encode FreeText
```

#### `GameProperty`

``` purescript
newtype GameProperty
  = GameProperty { "Key" :: GamePropertyKey, "Value" :: GamePropertyValue }
```

<p>Set of key-value pairs that contain information about a game session. When included in a game session request, these properties communicate details to be used when setting up the new game session, such as to specify a game mode, level, or map. Game properties are passed to the game server process when initiating a new game session; the server process uses the properties as appropriate. For more information, see the <a href="http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-create"> Amazon GameLift Developer Guide</a>.</p>

##### Instances
``` purescript
Newtype GameProperty _
Generic GameProperty _
Show GameProperty
Decode GameProperty
Encode GameProperty
```

#### `newGameProperty`

``` purescript
newGameProperty :: GamePropertyKey -> GamePropertyValue -> GameProperty
```

Constructs GameProperty from required parameters

#### `newGameProperty'`

``` purescript
newGameProperty' :: GamePropertyKey -> GamePropertyValue -> ({ "Key" :: GamePropertyKey, "Value" :: GamePropertyValue } -> { "Key" :: GamePropertyKey, "Value" :: GamePropertyValue }) -> GameProperty
```

Constructs GameProperty's fields from required parameters

#### `GamePropertyKey`

``` purescript
newtype GamePropertyKey
  = GamePropertyKey String
```

##### Instances
``` purescript
Newtype GamePropertyKey _
Generic GamePropertyKey _
Show GamePropertyKey
Decode GamePropertyKey
Encode GamePropertyKey
```

#### `GamePropertyList`

``` purescript
newtype GamePropertyList
  = GamePropertyList (Array GameProperty)
```

##### Instances
``` purescript
Newtype GamePropertyList _
Generic GamePropertyList _
Show GamePropertyList
Decode GamePropertyList
Encode GamePropertyList
```

#### `GamePropertyValue`

``` purescript
newtype GamePropertyValue
  = GamePropertyValue String
```

##### Instances
``` purescript
Newtype GamePropertyValue _
Generic GamePropertyValue _
Show GamePropertyValue
Decode GamePropertyValue
Encode GamePropertyValue
```

#### `GameSession`

``` purescript
newtype GameSession
  = GameSession { "GameSessionId" :: Maybe (NonZeroAndMaxString), "Name" :: Maybe (NonZeroAndMaxString), "FleetId" :: Maybe (FleetId), "CreationTime" :: Maybe (Timestamp), "TerminationTime" :: Maybe (Timestamp), "CurrentPlayerSessionCount" :: Maybe (WholeNumber), "MaximumPlayerSessionCount" :: Maybe (WholeNumber), "Status" :: Maybe (GameSessionStatus), "StatusReason" :: Maybe (GameSessionStatusReason), "GameProperties" :: Maybe (GamePropertyList), "IpAddress" :: Maybe (IpAddress), "Port" :: Maybe (PortNumber), "PlayerSessionCreationPolicy" :: Maybe (PlayerSessionCreationPolicy), "CreatorId" :: Maybe (NonZeroAndMaxString), "GameSessionData" :: Maybe (GameSessionData), "MatchmakerData" :: Maybe (MatchmakerData) }
```

<p>Properties describing a game session.</p> <p>A game session in ACTIVE status can host players. When a game session ends, its status is set to <code>TERMINATED</code>. </p> <p>Once the session ends, the game session object is retained for 30 days. This means you can reuse idempotency token values after this time. Game session logs are retained for 14 days.</p> <p>Game-session-related operations include:</p> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>

##### Instances
``` purescript
Newtype GameSession _
Generic GameSession _
Show GameSession
Decode GameSession
Encode GameSession
```

#### `newGameSession`

``` purescript
newGameSession :: GameSession
```

Constructs GameSession from required parameters

#### `newGameSession'`

``` purescript
newGameSession' :: ({ "GameSessionId" :: Maybe (NonZeroAndMaxString), "Name" :: Maybe (NonZeroAndMaxString), "FleetId" :: Maybe (FleetId), "CreationTime" :: Maybe (Timestamp), "TerminationTime" :: Maybe (Timestamp), "CurrentPlayerSessionCount" :: Maybe (WholeNumber), "MaximumPlayerSessionCount" :: Maybe (WholeNumber), "Status" :: Maybe (GameSessionStatus), "StatusReason" :: Maybe (GameSessionStatusReason), "GameProperties" :: Maybe (GamePropertyList), "IpAddress" :: Maybe (IpAddress), "Port" :: Maybe (PortNumber), "PlayerSessionCreationPolicy" :: Maybe (PlayerSessionCreationPolicy), "CreatorId" :: Maybe (NonZeroAndMaxString), "GameSessionData" :: Maybe (GameSessionData), "MatchmakerData" :: Maybe (MatchmakerData) } -> { "GameSessionId" :: Maybe (NonZeroAndMaxString), "Name" :: Maybe (NonZeroAndMaxString), "FleetId" :: Maybe (FleetId), "CreationTime" :: Maybe (Timestamp), "TerminationTime" :: Maybe (Timestamp), "CurrentPlayerSessionCount" :: Maybe (WholeNumber), "MaximumPlayerSessionCount" :: Maybe (WholeNumber), "Status" :: Maybe (GameSessionStatus), "StatusReason" :: Maybe (GameSessionStatusReason), "GameProperties" :: Maybe (GamePropertyList), "IpAddress" :: Maybe (IpAddress), "Port" :: Maybe (PortNumber), "PlayerSessionCreationPolicy" :: Maybe (PlayerSessionCreationPolicy), "CreatorId" :: Maybe (NonZeroAndMaxString), "GameSessionData" :: Maybe (GameSessionData), "MatchmakerData" :: Maybe (MatchmakerData) }) -> GameSession
```

Constructs GameSession's fields from required parameters

#### `GameSessionActivationTimeoutSeconds`

``` purescript
newtype GameSessionActivationTimeoutSeconds
  = GameSessionActivationTimeoutSeconds Int
```

##### Instances
``` purescript
Newtype GameSessionActivationTimeoutSeconds _
Generic GameSessionActivationTimeoutSeconds _
Show GameSessionActivationTimeoutSeconds
Decode GameSessionActivationTimeoutSeconds
Encode GameSessionActivationTimeoutSeconds
```

#### `GameSessionConnectionInfo`

``` purescript
newtype GameSessionConnectionInfo
  = GameSessionConnectionInfo { "GameSessionArn" :: Maybe (ArnStringModel), "IpAddress" :: Maybe (StringModel), "Port" :: Maybe (PositiveInteger), "MatchedPlayerSessions" :: Maybe (MatchedPlayerSessionList) }
```

<p>Connection information for the new game session that is created with matchmaking. (with <a>StartMatchmaking</a>). Once a match is set, the FlexMatch engine places the match and creates a new game session for it. This information, including the game session endpoint and player sessions for each player in the original matchmaking request, is added to the <a>MatchmakingTicket</a>, which can be retrieved by calling <a>DescribeMatchmaking</a>.</p>

##### Instances
``` purescript
Newtype GameSessionConnectionInfo _
Generic GameSessionConnectionInfo _
Show GameSessionConnectionInfo
Decode GameSessionConnectionInfo
Encode GameSessionConnectionInfo
```

#### `newGameSessionConnectionInfo`

``` purescript
newGameSessionConnectionInfo :: GameSessionConnectionInfo
```

Constructs GameSessionConnectionInfo from required parameters

#### `newGameSessionConnectionInfo'`

``` purescript
newGameSessionConnectionInfo' :: ({ "GameSessionArn" :: Maybe (ArnStringModel), "IpAddress" :: Maybe (StringModel), "Port" :: Maybe (PositiveInteger), "MatchedPlayerSessions" :: Maybe (MatchedPlayerSessionList) } -> { "GameSessionArn" :: Maybe (ArnStringModel), "IpAddress" :: Maybe (StringModel), "Port" :: Maybe (PositiveInteger), "MatchedPlayerSessions" :: Maybe (MatchedPlayerSessionList) }) -> GameSessionConnectionInfo
```

Constructs GameSessionConnectionInfo's fields from required parameters

#### `GameSessionData`

``` purescript
newtype GameSessionData
  = GameSessionData String
```

##### Instances
``` purescript
Newtype GameSessionData _
Generic GameSessionData _
Show GameSessionData
Decode GameSessionData
Encode GameSessionData
```

#### `GameSessionDetail`

``` purescript
newtype GameSessionDetail
  = GameSessionDetail { "GameSession" :: Maybe (GameSession), "ProtectionPolicy" :: Maybe (ProtectionPolicy) }
```

<p>A game session's properties plus the protection policy currently in force.</p>

##### Instances
``` purescript
Newtype GameSessionDetail _
Generic GameSessionDetail _
Show GameSessionDetail
Decode GameSessionDetail
Encode GameSessionDetail
```

#### `newGameSessionDetail`

``` purescript
newGameSessionDetail :: GameSessionDetail
```

Constructs GameSessionDetail from required parameters

#### `newGameSessionDetail'`

``` purescript
newGameSessionDetail' :: ({ "GameSession" :: Maybe (GameSession), "ProtectionPolicy" :: Maybe (ProtectionPolicy) } -> { "GameSession" :: Maybe (GameSession), "ProtectionPolicy" :: Maybe (ProtectionPolicy) }) -> GameSessionDetail
```

Constructs GameSessionDetail's fields from required parameters

#### `GameSessionDetailList`

``` purescript
newtype GameSessionDetailList
  = GameSessionDetailList (Array GameSessionDetail)
```

##### Instances
``` purescript
Newtype GameSessionDetailList _
Generic GameSessionDetailList _
Show GameSessionDetailList
Decode GameSessionDetailList
Encode GameSessionDetailList
```

#### `GameSessionFullException`

``` purescript
newtype GameSessionFullException
  = GameSessionFullException { "Message" :: Maybe (NonEmptyString) }
```

<p>The game instance is currently full and cannot allow the requested player(s) to join. Clients can retry such requests immediately or after a waiting period.</p>

##### Instances
``` purescript
Newtype GameSessionFullException _
Generic GameSessionFullException _
Show GameSessionFullException
Decode GameSessionFullException
Encode GameSessionFullException
```

#### `newGameSessionFullException`

``` purescript
newGameSessionFullException :: GameSessionFullException
```

Constructs GameSessionFullException from required parameters

#### `newGameSessionFullException'`

``` purescript
newGameSessionFullException' :: ({ "Message" :: Maybe (NonEmptyString) } -> { "Message" :: Maybe (NonEmptyString) }) -> GameSessionFullException
```

Constructs GameSessionFullException's fields from required parameters

#### `GameSessionList`

``` purescript
newtype GameSessionList
  = GameSessionList (Array GameSession)
```

##### Instances
``` purescript
Newtype GameSessionList _
Generic GameSessionList _
Show GameSessionList
Decode GameSessionList
Encode GameSessionList
```

#### `GameSessionPlacement`

``` purescript
newtype GameSessionPlacement
  = GameSessionPlacement { "PlacementId" :: Maybe (IdStringModel), "GameSessionQueueName" :: Maybe (GameSessionQueueName), "Status" :: Maybe (GameSessionPlacementState), "GameProperties" :: Maybe (GamePropertyList), "MaximumPlayerSessionCount" :: Maybe (WholeNumber), "GameSessionName" :: Maybe (NonZeroAndMaxString), "GameSessionId" :: Maybe (NonZeroAndMaxString), "GameSessionArn" :: Maybe (NonZeroAndMaxString), "GameSessionRegion" :: Maybe (NonZeroAndMaxString), "PlayerLatencies" :: Maybe (PlayerLatencyList), "StartTime" :: Maybe (Timestamp), "EndTime" :: Maybe (Timestamp), "IpAddress" :: Maybe (IpAddress), "Port" :: Maybe (PortNumber), "PlacedPlayerSessions" :: Maybe (PlacedPlayerSessionList), "GameSessionData" :: Maybe (GameSessionData), "MatchmakerData" :: Maybe (MatchmakerData) }
```

<p>Object that describes a <a>StartGameSessionPlacement</a> request. This object includes the full details of the original request plus the current status and start/end time stamps.</p> <p>Game session placement-related operations include:</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype GameSessionPlacement _
Generic GameSessionPlacement _
Show GameSessionPlacement
Decode GameSessionPlacement
Encode GameSessionPlacement
```

#### `newGameSessionPlacement`

``` purescript
newGameSessionPlacement :: GameSessionPlacement
```

Constructs GameSessionPlacement from required parameters

#### `newGameSessionPlacement'`

``` purescript
newGameSessionPlacement' :: ({ "PlacementId" :: Maybe (IdStringModel), "GameSessionQueueName" :: Maybe (GameSessionQueueName), "Status" :: Maybe (GameSessionPlacementState), "GameProperties" :: Maybe (GamePropertyList), "MaximumPlayerSessionCount" :: Maybe (WholeNumber), "GameSessionName" :: Maybe (NonZeroAndMaxString), "GameSessionId" :: Maybe (NonZeroAndMaxString), "GameSessionArn" :: Maybe (NonZeroAndMaxString), "GameSessionRegion" :: Maybe (NonZeroAndMaxString), "PlayerLatencies" :: Maybe (PlayerLatencyList), "StartTime" :: Maybe (Timestamp), "EndTime" :: Maybe (Timestamp), "IpAddress" :: Maybe (IpAddress), "Port" :: Maybe (PortNumber), "PlacedPlayerSessions" :: Maybe (PlacedPlayerSessionList), "GameSessionData" :: Maybe (GameSessionData), "MatchmakerData" :: Maybe (MatchmakerData) } -> { "PlacementId" :: Maybe (IdStringModel), "GameSessionQueueName" :: Maybe (GameSessionQueueName), "Status" :: Maybe (GameSessionPlacementState), "GameProperties" :: Maybe (GamePropertyList), "MaximumPlayerSessionCount" :: Maybe (WholeNumber), "GameSessionName" :: Maybe (NonZeroAndMaxString), "GameSessionId" :: Maybe (NonZeroAndMaxString), "GameSessionArn" :: Maybe (NonZeroAndMaxString), "GameSessionRegion" :: Maybe (NonZeroAndMaxString), "PlayerLatencies" :: Maybe (PlayerLatencyList), "StartTime" :: Maybe (Timestamp), "EndTime" :: Maybe (Timestamp), "IpAddress" :: Maybe (IpAddress), "Port" :: Maybe (PortNumber), "PlacedPlayerSessions" :: Maybe (PlacedPlayerSessionList), "GameSessionData" :: Maybe (GameSessionData), "MatchmakerData" :: Maybe (MatchmakerData) }) -> GameSessionPlacement
```

Constructs GameSessionPlacement's fields from required parameters

#### `GameSessionPlacementState`

``` purescript
newtype GameSessionPlacementState
  = GameSessionPlacementState String
```

##### Instances
``` purescript
Newtype GameSessionPlacementState _
Generic GameSessionPlacementState _
Show GameSessionPlacementState
Decode GameSessionPlacementState
Encode GameSessionPlacementState
```

#### `GameSessionQueue`

``` purescript
newtype GameSessionQueue
  = GameSessionQueue { "Name" :: Maybe (GameSessionQueueName), "GameSessionQueueArn" :: Maybe (ArnStringModel), "TimeoutInSeconds" :: Maybe (WholeNumber), "PlayerLatencyPolicies" :: Maybe (PlayerLatencyPolicyList), "Destinations" :: Maybe (GameSessionQueueDestinationList) }
```

<p>Configuration of a queue that is used to process game session placement requests. The queue configuration identifies several game features:</p> <ul> <li> <p>The destinations where a new game session can potentially be hosted. Amazon GameLift tries these destinations in an order based on either the queue's default order or player latency information, if provided in a placement request. With latency information, Amazon GameLift can place game sessions where the majority of players are reporting the lowest possible latency. </p> </li> <li> <p>The length of time that placement requests can wait in the queue before timing out. </p> </li> <li> <p>A set of optional latency policies that protect individual players from high latencies, preventing game sessions from being placed where any individual player is reporting latency higher than a policy's maximum.</p> </li> </ul> <p>Queue-related operations include:</p> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>DescribeGameSessionQueues</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>DeleteGameSessionQueue</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype GameSessionQueue _
Generic GameSessionQueue _
Show GameSessionQueue
Decode GameSessionQueue
Encode GameSessionQueue
```

#### `newGameSessionQueue`

``` purescript
newGameSessionQueue :: GameSessionQueue
```

Constructs GameSessionQueue from required parameters

#### `newGameSessionQueue'`

``` purescript
newGameSessionQueue' :: ({ "Name" :: Maybe (GameSessionQueueName), "GameSessionQueueArn" :: Maybe (ArnStringModel), "TimeoutInSeconds" :: Maybe (WholeNumber), "PlayerLatencyPolicies" :: Maybe (PlayerLatencyPolicyList), "Destinations" :: Maybe (GameSessionQueueDestinationList) } -> { "Name" :: Maybe (GameSessionQueueName), "GameSessionQueueArn" :: Maybe (ArnStringModel), "TimeoutInSeconds" :: Maybe (WholeNumber), "PlayerLatencyPolicies" :: Maybe (PlayerLatencyPolicyList), "Destinations" :: Maybe (GameSessionQueueDestinationList) }) -> GameSessionQueue
```

Constructs GameSessionQueue's fields from required parameters

#### `GameSessionQueueDestination`

``` purescript
newtype GameSessionQueueDestination
  = GameSessionQueueDestination { "DestinationArn" :: Maybe (ArnStringModel) }
```

<p>Fleet designated in a game session queue. Requests for new game sessions in the queue are fulfilled by starting a new game session on any destination configured for a queue. </p> <p>Queue-related operations include:</p> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>DescribeGameSessionQueues</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>DeleteGameSessionQueue</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype GameSessionQueueDestination _
Generic GameSessionQueueDestination _
Show GameSessionQueueDestination
Decode GameSessionQueueDestination
Encode GameSessionQueueDestination
```

#### `newGameSessionQueueDestination`

``` purescript
newGameSessionQueueDestination :: GameSessionQueueDestination
```

Constructs GameSessionQueueDestination from required parameters

#### `newGameSessionQueueDestination'`

``` purescript
newGameSessionQueueDestination' :: ({ "DestinationArn" :: Maybe (ArnStringModel) } -> { "DestinationArn" :: Maybe (ArnStringModel) }) -> GameSessionQueueDestination
```

Constructs GameSessionQueueDestination's fields from required parameters

#### `GameSessionQueueDestinationList`

``` purescript
newtype GameSessionQueueDestinationList
  = GameSessionQueueDestinationList (Array GameSessionQueueDestination)
```

##### Instances
``` purescript
Newtype GameSessionQueueDestinationList _
Generic GameSessionQueueDestinationList _
Show GameSessionQueueDestinationList
Decode GameSessionQueueDestinationList
Encode GameSessionQueueDestinationList
```

#### `GameSessionQueueList`

``` purescript
newtype GameSessionQueueList
  = GameSessionQueueList (Array GameSessionQueue)
```

##### Instances
``` purescript
Newtype GameSessionQueueList _
Generic GameSessionQueueList _
Show GameSessionQueueList
Decode GameSessionQueueList
Encode GameSessionQueueList
```

#### `GameSessionQueueName`

``` purescript
newtype GameSessionQueueName
  = GameSessionQueueName String
```

##### Instances
``` purescript
Newtype GameSessionQueueName _
Generic GameSessionQueueName _
Show GameSessionQueueName
Decode GameSessionQueueName
Encode GameSessionQueueName
```

#### `GameSessionQueueNameList`

``` purescript
newtype GameSessionQueueNameList
  = GameSessionQueueNameList (Array GameSessionQueueName)
```

##### Instances
``` purescript
Newtype GameSessionQueueNameList _
Generic GameSessionQueueNameList _
Show GameSessionQueueNameList
Decode GameSessionQueueNameList
Encode GameSessionQueueNameList
```

#### `GameSessionStatus`

``` purescript
newtype GameSessionStatus
  = GameSessionStatus String
```

##### Instances
``` purescript
Newtype GameSessionStatus _
Generic GameSessionStatus _
Show GameSessionStatus
Decode GameSessionStatus
Encode GameSessionStatus
```

#### `GameSessionStatusReason`

``` purescript
newtype GameSessionStatusReason
  = GameSessionStatusReason String
```

##### Instances
``` purescript
Newtype GameSessionStatusReason _
Generic GameSessionStatusReason _
Show GameSessionStatusReason
Decode GameSessionStatusReason
Encode GameSessionStatusReason
```

#### `GetGameSessionLogUrlInput`

``` purescript
newtype GetGameSessionLogUrlInput
  = GetGameSessionLogUrlInput { "GameSessionId" :: ArnStringModel }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype GetGameSessionLogUrlInput _
Generic GetGameSessionLogUrlInput _
Show GetGameSessionLogUrlInput
Decode GetGameSessionLogUrlInput
Encode GetGameSessionLogUrlInput
```

#### `newGetGameSessionLogUrlInput`

``` purescript
newGetGameSessionLogUrlInput :: ArnStringModel -> GetGameSessionLogUrlInput
```

Constructs GetGameSessionLogUrlInput from required parameters

#### `newGetGameSessionLogUrlInput'`

``` purescript
newGetGameSessionLogUrlInput' :: ArnStringModel -> ({ "GameSessionId" :: ArnStringModel } -> { "GameSessionId" :: ArnStringModel }) -> GetGameSessionLogUrlInput
```

Constructs GetGameSessionLogUrlInput's fields from required parameters

#### `GetGameSessionLogUrlOutput`

``` purescript
newtype GetGameSessionLogUrlOutput
  = GetGameSessionLogUrlOutput { "PreSignedUrl" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype GetGameSessionLogUrlOutput _
Generic GetGameSessionLogUrlOutput _
Show GetGameSessionLogUrlOutput
Decode GetGameSessionLogUrlOutput
Encode GetGameSessionLogUrlOutput
```

#### `newGetGameSessionLogUrlOutput`

``` purescript
newGetGameSessionLogUrlOutput :: GetGameSessionLogUrlOutput
```

Constructs GetGameSessionLogUrlOutput from required parameters

#### `newGetGameSessionLogUrlOutput'`

``` purescript
newGetGameSessionLogUrlOutput' :: ({ "PreSignedUrl" :: Maybe (NonZeroAndMaxString) } -> { "PreSignedUrl" :: Maybe (NonZeroAndMaxString) }) -> GetGameSessionLogUrlOutput
```

Constructs GetGameSessionLogUrlOutput's fields from required parameters

#### `GetInstanceAccessInput`

``` purescript
newtype GetInstanceAccessInput
  = GetInstanceAccessInput { "FleetId" :: FleetId, "InstanceId" :: InstanceId }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype GetInstanceAccessInput _
Generic GetInstanceAccessInput _
Show GetInstanceAccessInput
Decode GetInstanceAccessInput
Encode GetInstanceAccessInput
```

#### `newGetInstanceAccessInput`

``` purescript
newGetInstanceAccessInput :: FleetId -> InstanceId -> GetInstanceAccessInput
```

Constructs GetInstanceAccessInput from required parameters

#### `newGetInstanceAccessInput'`

``` purescript
newGetInstanceAccessInput' :: FleetId -> InstanceId -> ({ "FleetId" :: FleetId, "InstanceId" :: InstanceId } -> { "FleetId" :: FleetId, "InstanceId" :: InstanceId }) -> GetInstanceAccessInput
```

Constructs GetInstanceAccessInput's fields from required parameters

#### `GetInstanceAccessOutput`

``` purescript
newtype GetInstanceAccessOutput
  = GetInstanceAccessOutput { "InstanceAccess" :: Maybe (InstanceAccess) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype GetInstanceAccessOutput _
Generic GetInstanceAccessOutput _
Show GetInstanceAccessOutput
Decode GetInstanceAccessOutput
Encode GetInstanceAccessOutput
```

#### `newGetInstanceAccessOutput`

``` purescript
newGetInstanceAccessOutput :: GetInstanceAccessOutput
```

Constructs GetInstanceAccessOutput from required parameters

#### `newGetInstanceAccessOutput'`

``` purescript
newGetInstanceAccessOutput' :: ({ "InstanceAccess" :: Maybe (InstanceAccess) } -> { "InstanceAccess" :: Maybe (InstanceAccess) }) -> GetInstanceAccessOutput
```

Constructs GetInstanceAccessOutput's fields from required parameters

#### `IdStringModel`

``` purescript
newtype IdStringModel
  = IdStringModel String
```

##### Instances
``` purescript
Newtype IdStringModel _
Generic IdStringModel _
Show IdStringModel
Decode IdStringModel
Encode IdStringModel
```

#### `IdempotentParameterMismatchException`

``` purescript
newtype IdempotentParameterMismatchException
  = IdempotentParameterMismatchException { "Message" :: Maybe (NonEmptyString) }
```

<p>A game session with this custom ID string already exists in this fleet. Resolve this conflict before retrying this request.</p>

##### Instances
``` purescript
Newtype IdempotentParameterMismatchException _
Generic IdempotentParameterMismatchException _
Show IdempotentParameterMismatchException
Decode IdempotentParameterMismatchException
Encode IdempotentParameterMismatchException
```

#### `newIdempotentParameterMismatchException`

``` purescript
newIdempotentParameterMismatchException :: IdempotentParameterMismatchException
```

Constructs IdempotentParameterMismatchException from required parameters

#### `newIdempotentParameterMismatchException'`

``` purescript
newIdempotentParameterMismatchException' :: ({ "Message" :: Maybe (NonEmptyString) } -> { "Message" :: Maybe (NonEmptyString) }) -> IdempotentParameterMismatchException
```

Constructs IdempotentParameterMismatchException's fields from required parameters

#### `Instance`

``` purescript
newtype Instance
  = Instance { "FleetId" :: Maybe (FleetId), "InstanceId" :: Maybe (InstanceId), "IpAddress" :: Maybe (IpAddress), "OperatingSystem" :: Maybe (OperatingSystem), "Type" :: Maybe (EC2InstanceType), "Status" :: Maybe (InstanceStatus), "CreationTime" :: Maybe (Timestamp) }
```

<p>Properties that describe an instance of a virtual computing resource that hosts one or more game servers. A fleet may contain zero or more instances.</p>

##### Instances
``` purescript
Newtype Instance _
Generic Instance _
Show Instance
Decode Instance
Encode Instance
```

#### `newInstance`

``` purescript
newInstance :: Instance
```

Constructs Instance from required parameters

#### `newInstance'`

``` purescript
newInstance' :: ({ "FleetId" :: Maybe (FleetId), "InstanceId" :: Maybe (InstanceId), "IpAddress" :: Maybe (IpAddress), "OperatingSystem" :: Maybe (OperatingSystem), "Type" :: Maybe (EC2InstanceType), "Status" :: Maybe (InstanceStatus), "CreationTime" :: Maybe (Timestamp) } -> { "FleetId" :: Maybe (FleetId), "InstanceId" :: Maybe (InstanceId), "IpAddress" :: Maybe (IpAddress), "OperatingSystem" :: Maybe (OperatingSystem), "Type" :: Maybe (EC2InstanceType), "Status" :: Maybe (InstanceStatus), "CreationTime" :: Maybe (Timestamp) }) -> Instance
```

Constructs Instance's fields from required parameters

#### `InstanceAccess`

``` purescript
newtype InstanceAccess
  = InstanceAccess { "FleetId" :: Maybe (FleetId), "InstanceId" :: Maybe (InstanceId), "IpAddress" :: Maybe (IpAddress), "OperatingSystem" :: Maybe (OperatingSystem), "Credentials" :: Maybe (InstanceCredentials) }
```

<p>Information required to remotely connect to a fleet instance. Access is requested by calling <a>GetInstanceAccess</a>. </p>

##### Instances
``` purescript
Newtype InstanceAccess _
Generic InstanceAccess _
Show InstanceAccess
Decode InstanceAccess
Encode InstanceAccess
```

#### `newInstanceAccess`

``` purescript
newInstanceAccess :: InstanceAccess
```

Constructs InstanceAccess from required parameters

#### `newInstanceAccess'`

``` purescript
newInstanceAccess' :: ({ "FleetId" :: Maybe (FleetId), "InstanceId" :: Maybe (InstanceId), "IpAddress" :: Maybe (IpAddress), "OperatingSystem" :: Maybe (OperatingSystem), "Credentials" :: Maybe (InstanceCredentials) } -> { "FleetId" :: Maybe (FleetId), "InstanceId" :: Maybe (InstanceId), "IpAddress" :: Maybe (IpAddress), "OperatingSystem" :: Maybe (OperatingSystem), "Credentials" :: Maybe (InstanceCredentials) }) -> InstanceAccess
```

Constructs InstanceAccess's fields from required parameters

#### `InstanceCredentials`

``` purescript
newtype InstanceCredentials
  = InstanceCredentials { "UserName" :: Maybe (NonEmptyString), "Secret" :: Maybe (NonEmptyString) }
```

<p>Set of credentials required to remotely access a fleet instance. Access credentials are requested by calling <a>GetInstanceAccess</a> and returned in an <a>InstanceAccess</a> object.</p>

##### Instances
``` purescript
Newtype InstanceCredentials _
Generic InstanceCredentials _
Show InstanceCredentials
Decode InstanceCredentials
Encode InstanceCredentials
```

#### `newInstanceCredentials`

``` purescript
newInstanceCredentials :: InstanceCredentials
```

Constructs InstanceCredentials from required parameters

#### `newInstanceCredentials'`

``` purescript
newInstanceCredentials' :: ({ "UserName" :: Maybe (NonEmptyString), "Secret" :: Maybe (NonEmptyString) } -> { "UserName" :: Maybe (NonEmptyString), "Secret" :: Maybe (NonEmptyString) }) -> InstanceCredentials
```

Constructs InstanceCredentials's fields from required parameters

#### `InstanceId`

``` purescript
newtype InstanceId
  = InstanceId String
```

##### Instances
``` purescript
Newtype InstanceId _
Generic InstanceId _
Show InstanceId
Decode InstanceId
Encode InstanceId
```

#### `InstanceList`

``` purescript
newtype InstanceList
  = InstanceList (Array Instance)
```

##### Instances
``` purescript
Newtype InstanceList _
Generic InstanceList _
Show InstanceList
Decode InstanceList
Encode InstanceList
```

#### `InstanceStatus`

``` purescript
newtype InstanceStatus
  = InstanceStatus String
```

##### Instances
``` purescript
Newtype InstanceStatus _
Generic InstanceStatus _
Show InstanceStatus
Decode InstanceStatus
Encode InstanceStatus
```

#### `InternalServiceException`

``` purescript
newtype InternalServiceException
  = InternalServiceException { "Message" :: Maybe (NonEmptyString) }
```

<p>The service encountered an unrecoverable internal failure while processing the request. Clients can retry such requests immediately or after a waiting period.</p>

##### Instances
``` purescript
Newtype InternalServiceException _
Generic InternalServiceException _
Show InternalServiceException
Decode InternalServiceException
Encode InternalServiceException
```

#### `newInternalServiceException`

``` purescript
newInternalServiceException :: InternalServiceException
```

Constructs InternalServiceException from required parameters

#### `newInternalServiceException'`

``` purescript
newInternalServiceException' :: ({ "Message" :: Maybe (NonEmptyString) } -> { "Message" :: Maybe (NonEmptyString) }) -> InternalServiceException
```

Constructs InternalServiceException's fields from required parameters

#### `InvalidFleetStatusException`

``` purescript
newtype InvalidFleetStatusException
  = InvalidFleetStatusException { "Message" :: Maybe (NonEmptyString) }
```

<p>The requested operation would cause a conflict with the current state of a resource associated with the request and/or the fleet. Resolve the conflict before retrying.</p>

##### Instances
``` purescript
Newtype InvalidFleetStatusException _
Generic InvalidFleetStatusException _
Show InvalidFleetStatusException
Decode InvalidFleetStatusException
Encode InvalidFleetStatusException
```

#### `newInvalidFleetStatusException`

``` purescript
newInvalidFleetStatusException :: InvalidFleetStatusException
```

Constructs InvalidFleetStatusException from required parameters

#### `newInvalidFleetStatusException'`

``` purescript
newInvalidFleetStatusException' :: ({ "Message" :: Maybe (NonEmptyString) } -> { "Message" :: Maybe (NonEmptyString) }) -> InvalidFleetStatusException
```

Constructs InvalidFleetStatusException's fields from required parameters

#### `InvalidGameSessionStatusException`

``` purescript
newtype InvalidGameSessionStatusException
  = InvalidGameSessionStatusException { "Message" :: Maybe (NonEmptyString) }
```

<p>The requested operation would cause a conflict with the current state of a resource associated with the request and/or the game instance. Resolve the conflict before retrying.</p>

##### Instances
``` purescript
Newtype InvalidGameSessionStatusException _
Generic InvalidGameSessionStatusException _
Show InvalidGameSessionStatusException
Decode InvalidGameSessionStatusException
Encode InvalidGameSessionStatusException
```

#### `newInvalidGameSessionStatusException`

``` purescript
newInvalidGameSessionStatusException :: InvalidGameSessionStatusException
```

Constructs InvalidGameSessionStatusException from required parameters

#### `newInvalidGameSessionStatusException'`

``` purescript
newInvalidGameSessionStatusException' :: ({ "Message" :: Maybe (NonEmptyString) } -> { "Message" :: Maybe (NonEmptyString) }) -> InvalidGameSessionStatusException
```

Constructs InvalidGameSessionStatusException's fields from required parameters

#### `InvalidRequestException`

``` purescript
newtype InvalidRequestException
  = InvalidRequestException { "Message" :: Maybe (NonEmptyString) }
```

<p>One or more parameter values in the request are invalid. Correct the invalid parameter values before retrying.</p>

##### Instances
``` purescript
Newtype InvalidRequestException _
Generic InvalidRequestException _
Show InvalidRequestException
Decode InvalidRequestException
Encode InvalidRequestException
```

#### `newInvalidRequestException`

``` purescript
newInvalidRequestException :: InvalidRequestException
```

Constructs InvalidRequestException from required parameters

#### `newInvalidRequestException'`

``` purescript
newInvalidRequestException' :: ({ "Message" :: Maybe (NonEmptyString) } -> { "Message" :: Maybe (NonEmptyString) }) -> InvalidRequestException
```

Constructs InvalidRequestException's fields from required parameters

#### `IpAddress`

``` purescript
newtype IpAddress
  = IpAddress String
```

##### Instances
``` purescript
Newtype IpAddress _
Generic IpAddress _
Show IpAddress
Decode IpAddress
Encode IpAddress
```

#### `IpPermission`

``` purescript
newtype IpPermission
  = IpPermission { "FromPort" :: PortNumber, "ToPort" :: PortNumber, "IpRange" :: NonBlankString, "Protocol" :: IpProtocol }
```

<p>A range of IP addresses and port settings that allow inbound traffic to connect to server processes on Amazon GameLift. Each game session hosted on a fleet is assigned a unique combination of IP address and port number, which must fall into the fleet's allowed ranges. This combination is included in the <a>GameSession</a> object. </p>

##### Instances
``` purescript
Newtype IpPermission _
Generic IpPermission _
Show IpPermission
Decode IpPermission
Encode IpPermission
```

#### `newIpPermission`

``` purescript
newIpPermission :: PortNumber -> NonBlankString -> IpProtocol -> PortNumber -> IpPermission
```

Constructs IpPermission from required parameters

#### `newIpPermission'`

``` purescript
newIpPermission' :: PortNumber -> NonBlankString -> IpProtocol -> PortNumber -> ({ "FromPort" :: PortNumber, "ToPort" :: PortNumber, "IpRange" :: NonBlankString, "Protocol" :: IpProtocol } -> { "FromPort" :: PortNumber, "ToPort" :: PortNumber, "IpRange" :: NonBlankString, "Protocol" :: IpProtocol }) -> IpPermission
```

Constructs IpPermission's fields from required parameters

#### `IpPermissionsList`

``` purescript
newtype IpPermissionsList
  = IpPermissionsList (Array IpPermission)
```

##### Instances
``` purescript
Newtype IpPermissionsList _
Generic IpPermissionsList _
Show IpPermissionsList
Decode IpPermissionsList
Encode IpPermissionsList
```

#### `IpProtocol`

``` purescript
newtype IpProtocol
  = IpProtocol String
```

##### Instances
``` purescript
Newtype IpProtocol _
Generic IpProtocol _
Show IpProtocol
Decode IpProtocol
Encode IpProtocol
```

#### `LatencyMap`

``` purescript
newtype LatencyMap
  = LatencyMap (StrMap PositiveInteger)
```

##### Instances
``` purescript
Newtype LatencyMap _
Generic LatencyMap _
Show LatencyMap
Decode LatencyMap
Encode LatencyMap
```

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { "Message" :: Maybe (NonEmptyString) }
```

<p>The requested operation would cause the resource to exceed the allowed service limit. Resolve the issue before retrying.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ({ "Message" :: Maybe (NonEmptyString) } -> { "Message" :: Maybe (NonEmptyString) }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `ListAliasesInput`

``` purescript
newtype ListAliasesInput
  = ListAliasesInput { "RoutingStrategyType" :: Maybe (RoutingStrategyType), "Name" :: Maybe (NonEmptyString), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonEmptyString) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype ListAliasesInput _
Generic ListAliasesInput _
Show ListAliasesInput
Decode ListAliasesInput
Encode ListAliasesInput
```

#### `newListAliasesInput`

``` purescript
newListAliasesInput :: ListAliasesInput
```

Constructs ListAliasesInput from required parameters

#### `newListAliasesInput'`

``` purescript
newListAliasesInput' :: ({ "RoutingStrategyType" :: Maybe (RoutingStrategyType), "Name" :: Maybe (NonEmptyString), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonEmptyString) } -> { "RoutingStrategyType" :: Maybe (RoutingStrategyType), "Name" :: Maybe (NonEmptyString), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonEmptyString) }) -> ListAliasesInput
```

Constructs ListAliasesInput's fields from required parameters

#### `ListAliasesOutput`

``` purescript
newtype ListAliasesOutput
  = ListAliasesOutput { "Aliases" :: Maybe (AliasList), "NextToken" :: Maybe (NonEmptyString) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype ListAliasesOutput _
Generic ListAliasesOutput _
Show ListAliasesOutput
Decode ListAliasesOutput
Encode ListAliasesOutput
```

#### `newListAliasesOutput`

``` purescript
newListAliasesOutput :: ListAliasesOutput
```

Constructs ListAliasesOutput from required parameters

#### `newListAliasesOutput'`

``` purescript
newListAliasesOutput' :: ({ "Aliases" :: Maybe (AliasList), "NextToken" :: Maybe (NonEmptyString) } -> { "Aliases" :: Maybe (AliasList), "NextToken" :: Maybe (NonEmptyString) }) -> ListAliasesOutput
```

Constructs ListAliasesOutput's fields from required parameters

#### `ListBuildsInput`

``` purescript
newtype ListBuildsInput
  = ListBuildsInput { "Status" :: Maybe (BuildStatus), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonEmptyString) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype ListBuildsInput _
Generic ListBuildsInput _
Show ListBuildsInput
Decode ListBuildsInput
Encode ListBuildsInput
```

#### `newListBuildsInput`

``` purescript
newListBuildsInput :: ListBuildsInput
```

Constructs ListBuildsInput from required parameters

#### `newListBuildsInput'`

``` purescript
newListBuildsInput' :: ({ "Status" :: Maybe (BuildStatus), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonEmptyString) } -> { "Status" :: Maybe (BuildStatus), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonEmptyString) }) -> ListBuildsInput
```

Constructs ListBuildsInput's fields from required parameters

#### `ListBuildsOutput`

``` purescript
newtype ListBuildsOutput
  = ListBuildsOutput { "Builds" :: Maybe (BuildList), "NextToken" :: Maybe (NonEmptyString) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype ListBuildsOutput _
Generic ListBuildsOutput _
Show ListBuildsOutput
Decode ListBuildsOutput
Encode ListBuildsOutput
```

#### `newListBuildsOutput`

``` purescript
newListBuildsOutput :: ListBuildsOutput
```

Constructs ListBuildsOutput from required parameters

#### `newListBuildsOutput'`

``` purescript
newListBuildsOutput' :: ({ "Builds" :: Maybe (BuildList), "NextToken" :: Maybe (NonEmptyString) } -> { "Builds" :: Maybe (BuildList), "NextToken" :: Maybe (NonEmptyString) }) -> ListBuildsOutput
```

Constructs ListBuildsOutput's fields from required parameters

#### `ListFleetsInput`

``` purescript
newtype ListFleetsInput
  = ListFleetsInput { "BuildId" :: Maybe (BuildId), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype ListFleetsInput _
Generic ListFleetsInput _
Show ListFleetsInput
Decode ListFleetsInput
Encode ListFleetsInput
```

#### `newListFleetsInput`

``` purescript
newListFleetsInput :: ListFleetsInput
```

Constructs ListFleetsInput from required parameters

#### `newListFleetsInput'`

``` purescript
newListFleetsInput' :: ({ "BuildId" :: Maybe (BuildId), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "BuildId" :: Maybe (BuildId), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> ListFleetsInput
```

Constructs ListFleetsInput's fields from required parameters

#### `ListFleetsOutput`

``` purescript
newtype ListFleetsOutput
  = ListFleetsOutput { "FleetIds" :: Maybe (FleetIdList), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype ListFleetsOutput _
Generic ListFleetsOutput _
Show ListFleetsOutput
Decode ListFleetsOutput
Encode ListFleetsOutput
```

#### `newListFleetsOutput`

``` purescript
newListFleetsOutput :: ListFleetsOutput
```

Constructs ListFleetsOutput from required parameters

#### `newListFleetsOutput'`

``` purescript
newListFleetsOutput' :: ({ "FleetIds" :: Maybe (FleetIdList), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "FleetIds" :: Maybe (FleetIdList), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> ListFleetsOutput
```

Constructs ListFleetsOutput's fields from required parameters

#### `MatchedPlayerSession`

``` purescript
newtype MatchedPlayerSession
  = MatchedPlayerSession { "PlayerId" :: Maybe (NonZeroAndMaxString), "PlayerSessionId" :: Maybe (PlayerSessionId) }
```

<p>Represents a new player session that is created as a result of a successful FlexMatch match. A successful match automatically creates new player sessions for every player ID in the original matchmaking request. </p> <p>When players connect to the match's game session, they must include both player ID and player session ID in order to claim their assigned player slot.</p>

##### Instances
``` purescript
Newtype MatchedPlayerSession _
Generic MatchedPlayerSession _
Show MatchedPlayerSession
Decode MatchedPlayerSession
Encode MatchedPlayerSession
```

#### `newMatchedPlayerSession`

``` purescript
newMatchedPlayerSession :: MatchedPlayerSession
```

Constructs MatchedPlayerSession from required parameters

#### `newMatchedPlayerSession'`

``` purescript
newMatchedPlayerSession' :: ({ "PlayerId" :: Maybe (NonZeroAndMaxString), "PlayerSessionId" :: Maybe (PlayerSessionId) } -> { "PlayerId" :: Maybe (NonZeroAndMaxString), "PlayerSessionId" :: Maybe (PlayerSessionId) }) -> MatchedPlayerSession
```

Constructs MatchedPlayerSession's fields from required parameters

#### `MatchedPlayerSessionList`

``` purescript
newtype MatchedPlayerSessionList
  = MatchedPlayerSessionList (Array MatchedPlayerSession)
```

##### Instances
``` purescript
Newtype MatchedPlayerSessionList _
Generic MatchedPlayerSessionList _
Show MatchedPlayerSessionList
Decode MatchedPlayerSessionList
Encode MatchedPlayerSessionList
```

#### `MatchmakerData`

``` purescript
newtype MatchmakerData
  = MatchmakerData String
```

##### Instances
``` purescript
Newtype MatchmakerData _
Generic MatchmakerData _
Show MatchmakerData
Decode MatchmakerData
Encode MatchmakerData
```

#### `MatchmakingAcceptanceTimeoutInteger`

``` purescript
newtype MatchmakingAcceptanceTimeoutInteger
  = MatchmakingAcceptanceTimeoutInteger Int
```

##### Instances
``` purescript
Newtype MatchmakingAcceptanceTimeoutInteger _
Generic MatchmakingAcceptanceTimeoutInteger _
Show MatchmakingAcceptanceTimeoutInteger
Decode MatchmakingAcceptanceTimeoutInteger
Encode MatchmakingAcceptanceTimeoutInteger
```

#### `MatchmakingConfiguration`

``` purescript
newtype MatchmakingConfiguration
  = MatchmakingConfiguration { "Name" :: Maybe (MatchmakingIdStringModel), "Description" :: Maybe (NonZeroAndMaxString), "GameSessionQueueArns" :: Maybe (QueueArnsList), "RequestTimeoutSeconds" :: Maybe (MatchmakingRequestTimeoutInteger), "AcceptanceTimeoutSeconds" :: Maybe (MatchmakingAcceptanceTimeoutInteger), "AcceptanceRequired" :: Maybe (BooleanModel), "RuleSetName" :: Maybe (MatchmakingIdStringModel), "NotificationTarget" :: Maybe (SnsArnStringModel), "AdditionalPlayerCount" :: Maybe (WholeNumber), "CustomEventData" :: Maybe (CustomEventData), "CreationTime" :: Maybe (Timestamp), "GameProperties" :: Maybe (GamePropertyList), "GameSessionData" :: Maybe (GameSessionData) }
```

<p>Guidelines for use with FlexMatch to match players into games. All matchmaking requests must specify a matchmaking configuration.</p>

##### Instances
``` purescript
Newtype MatchmakingConfiguration _
Generic MatchmakingConfiguration _
Show MatchmakingConfiguration
Decode MatchmakingConfiguration
Encode MatchmakingConfiguration
```

#### `newMatchmakingConfiguration`

``` purescript
newMatchmakingConfiguration :: MatchmakingConfiguration
```

Constructs MatchmakingConfiguration from required parameters

#### `newMatchmakingConfiguration'`

``` purescript
newMatchmakingConfiguration' :: ({ "Name" :: Maybe (MatchmakingIdStringModel), "Description" :: Maybe (NonZeroAndMaxString), "GameSessionQueueArns" :: Maybe (QueueArnsList), "RequestTimeoutSeconds" :: Maybe (MatchmakingRequestTimeoutInteger), "AcceptanceTimeoutSeconds" :: Maybe (MatchmakingAcceptanceTimeoutInteger), "AcceptanceRequired" :: Maybe (BooleanModel), "RuleSetName" :: Maybe (MatchmakingIdStringModel), "NotificationTarget" :: Maybe (SnsArnStringModel), "AdditionalPlayerCount" :: Maybe (WholeNumber), "CustomEventData" :: Maybe (CustomEventData), "CreationTime" :: Maybe (Timestamp), "GameProperties" :: Maybe (GamePropertyList), "GameSessionData" :: Maybe (GameSessionData) } -> { "Name" :: Maybe (MatchmakingIdStringModel), "Description" :: Maybe (NonZeroAndMaxString), "GameSessionQueueArns" :: Maybe (QueueArnsList), "RequestTimeoutSeconds" :: Maybe (MatchmakingRequestTimeoutInteger), "AcceptanceTimeoutSeconds" :: Maybe (MatchmakingAcceptanceTimeoutInteger), "AcceptanceRequired" :: Maybe (BooleanModel), "RuleSetName" :: Maybe (MatchmakingIdStringModel), "NotificationTarget" :: Maybe (SnsArnStringModel), "AdditionalPlayerCount" :: Maybe (WholeNumber), "CustomEventData" :: Maybe (CustomEventData), "CreationTime" :: Maybe (Timestamp), "GameProperties" :: Maybe (GamePropertyList), "GameSessionData" :: Maybe (GameSessionData) }) -> MatchmakingConfiguration
```

Constructs MatchmakingConfiguration's fields from required parameters

#### `MatchmakingConfigurationList`

``` purescript
newtype MatchmakingConfigurationList
  = MatchmakingConfigurationList (Array MatchmakingConfiguration)
```

##### Instances
``` purescript
Newtype MatchmakingConfigurationList _
Generic MatchmakingConfigurationList _
Show MatchmakingConfigurationList
Decode MatchmakingConfigurationList
Encode MatchmakingConfigurationList
```

#### `MatchmakingConfigurationStatus`

``` purescript
newtype MatchmakingConfigurationStatus
  = MatchmakingConfigurationStatus String
```

##### Instances
``` purescript
Newtype MatchmakingConfigurationStatus _
Generic MatchmakingConfigurationStatus _
Show MatchmakingConfigurationStatus
Decode MatchmakingConfigurationStatus
Encode MatchmakingConfigurationStatus
```

#### `MatchmakingIdList`

``` purescript
newtype MatchmakingIdList
  = MatchmakingIdList (Array MatchmakingIdStringModel)
```

##### Instances
``` purescript
Newtype MatchmakingIdList _
Generic MatchmakingIdList _
Show MatchmakingIdList
Decode MatchmakingIdList
Encode MatchmakingIdList
```

#### `MatchmakingIdStringModel`

``` purescript
newtype MatchmakingIdStringModel
  = MatchmakingIdStringModel String
```

##### Instances
``` purescript
Newtype MatchmakingIdStringModel _
Generic MatchmakingIdStringModel _
Show MatchmakingIdStringModel
Decode MatchmakingIdStringModel
Encode MatchmakingIdStringModel
```

#### `MatchmakingRequestTimeoutInteger`

``` purescript
newtype MatchmakingRequestTimeoutInteger
  = MatchmakingRequestTimeoutInteger Int
```

##### Instances
``` purescript
Newtype MatchmakingRequestTimeoutInteger _
Generic MatchmakingRequestTimeoutInteger _
Show MatchmakingRequestTimeoutInteger
Decode MatchmakingRequestTimeoutInteger
Encode MatchmakingRequestTimeoutInteger
```

#### `MatchmakingRuleSet`

``` purescript
newtype MatchmakingRuleSet
  = MatchmakingRuleSet { "RuleSetName" :: Maybe (MatchmakingIdStringModel), "RuleSetBody" :: RuleSetBody, "CreationTime" :: Maybe (Timestamp) }
```

<p>Set of rule statements, used with FlexMatch, that determine how to build a certain kind of player match. Each rule set describes a type of group to be created and defines the parameters for acceptable player matches. Rule sets are used in <a>MatchmakingConfiguration</a> objects.</p> <p>A rule set may define the following elements for a match. For detailed information and examples showing how to construct a rule set, see <a href="http://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html">Build a FlexMatch Rule Set</a>. </p> <ul> <li> <p>Teams -- Required. A rule set must define one or multiple teams for the match and set minimum and maximum team sizes. For example, a rule set might describe a 4x4 match that requires all eight slots to be filled. </p> </li> <li> <p>Player attributes -- Optional. These attributes specify a set of player characteristics to evaluate when looking for a match. Matchmaking requests that use a rule set with player attributes must provide the corresponding attribute values. For example, an attribute might specify a player's skill or level.</p> </li> <li> <p>Rules -- Optional. Rules define how to evaluate potential players for a match based on player attributes. A rule might specify minimum requirements for individual players, teams, or entire matches. For example, a rule might require each player to meet a certain skill level, each team to have at least one player in a certain role, or the match to have a minimum average skill level. or may describe an entire group--such as all teams must be evenly matched or have at least one player in a certain role. </p> </li> <li> <p>Expansions -- Optional. Expansions allow you to relax the rules after a period of time when no acceptable matches are found. This feature lets you balance getting players into games in a reasonable amount of time instead of making them wait indefinitely for the best possible match. For example, you might use an expansion to increase the maximum skill variance between players after 30 seconds.</p> </li> </ul>

##### Instances
``` purescript
Newtype MatchmakingRuleSet _
Generic MatchmakingRuleSet _
Show MatchmakingRuleSet
Decode MatchmakingRuleSet
Encode MatchmakingRuleSet
```

#### `newMatchmakingRuleSet`

``` purescript
newMatchmakingRuleSet :: RuleSetBody -> MatchmakingRuleSet
```

Constructs MatchmakingRuleSet from required parameters

#### `newMatchmakingRuleSet'`

``` purescript
newMatchmakingRuleSet' :: RuleSetBody -> ({ "RuleSetName" :: Maybe (MatchmakingIdStringModel), "RuleSetBody" :: RuleSetBody, "CreationTime" :: Maybe (Timestamp) } -> { "RuleSetName" :: Maybe (MatchmakingIdStringModel), "RuleSetBody" :: RuleSetBody, "CreationTime" :: Maybe (Timestamp) }) -> MatchmakingRuleSet
```

Constructs MatchmakingRuleSet's fields from required parameters

#### `MatchmakingRuleSetList`

``` purescript
newtype MatchmakingRuleSetList
  = MatchmakingRuleSetList (Array MatchmakingRuleSet)
```

##### Instances
``` purescript
Newtype MatchmakingRuleSetList _
Generic MatchmakingRuleSetList _
Show MatchmakingRuleSetList
Decode MatchmakingRuleSetList
Encode MatchmakingRuleSetList
```

#### `MatchmakingRuleSetNameList`

``` purescript
newtype MatchmakingRuleSetNameList
  = MatchmakingRuleSetNameList (Array MatchmakingIdStringModel)
```

##### Instances
``` purescript
Newtype MatchmakingRuleSetNameList _
Generic MatchmakingRuleSetNameList _
Show MatchmakingRuleSetNameList
Decode MatchmakingRuleSetNameList
Encode MatchmakingRuleSetNameList
```

#### `MatchmakingTicket`

``` purescript
newtype MatchmakingTicket
  = MatchmakingTicket { "TicketId" :: Maybe (MatchmakingIdStringModel), "ConfigurationName" :: Maybe (MatchmakingIdStringModel), "Status" :: Maybe (MatchmakingConfigurationStatus), "StatusReason" :: Maybe (StringModel), "StatusMessage" :: Maybe (StringModel), "StartTime" :: Maybe (Timestamp), "EndTime" :: Maybe (Timestamp), "Players" :: Maybe (PlayerList), "GameSessionConnectionInfo" :: Maybe (GameSessionConnectionInfo), "EstimatedWaitTime" :: Maybe (WholeNumber) }
```

<p>Ticket generated to track the progress of a matchmaking request. Each ticket is uniquely identified by a ticket ID, supplied by the requester, when creating a matchmaking request with <a>StartMatchmaking</a>. Tickets can be retrieved by calling <a>DescribeMatchmaking</a> with the ticket ID.</p>

##### Instances
``` purescript
Newtype MatchmakingTicket _
Generic MatchmakingTicket _
Show MatchmakingTicket
Decode MatchmakingTicket
Encode MatchmakingTicket
```

#### `newMatchmakingTicket`

``` purescript
newMatchmakingTicket :: MatchmakingTicket
```

Constructs MatchmakingTicket from required parameters

#### `newMatchmakingTicket'`

``` purescript
newMatchmakingTicket' :: ({ "TicketId" :: Maybe (MatchmakingIdStringModel), "ConfigurationName" :: Maybe (MatchmakingIdStringModel), "Status" :: Maybe (MatchmakingConfigurationStatus), "StatusReason" :: Maybe (StringModel), "StatusMessage" :: Maybe (StringModel), "StartTime" :: Maybe (Timestamp), "EndTime" :: Maybe (Timestamp), "Players" :: Maybe (PlayerList), "GameSessionConnectionInfo" :: Maybe (GameSessionConnectionInfo), "EstimatedWaitTime" :: Maybe (WholeNumber) } -> { "TicketId" :: Maybe (MatchmakingIdStringModel), "ConfigurationName" :: Maybe (MatchmakingIdStringModel), "Status" :: Maybe (MatchmakingConfigurationStatus), "StatusReason" :: Maybe (StringModel), "StatusMessage" :: Maybe (StringModel), "StartTime" :: Maybe (Timestamp), "EndTime" :: Maybe (Timestamp), "Players" :: Maybe (PlayerList), "GameSessionConnectionInfo" :: Maybe (GameSessionConnectionInfo), "EstimatedWaitTime" :: Maybe (WholeNumber) }) -> MatchmakingTicket
```

Constructs MatchmakingTicket's fields from required parameters

#### `MatchmakingTicketList`

``` purescript
newtype MatchmakingTicketList
  = MatchmakingTicketList (Array MatchmakingTicket)
```

##### Instances
``` purescript
Newtype MatchmakingTicketList _
Generic MatchmakingTicketList _
Show MatchmakingTicketList
Decode MatchmakingTicketList
Encode MatchmakingTicketList
```

#### `MaxConcurrentGameSessionActivations`

``` purescript
newtype MaxConcurrentGameSessionActivations
  = MaxConcurrentGameSessionActivations Int
```

##### Instances
``` purescript
Newtype MaxConcurrentGameSessionActivations _
Generic MaxConcurrentGameSessionActivations _
Show MaxConcurrentGameSessionActivations
Decode MaxConcurrentGameSessionActivations
Encode MaxConcurrentGameSessionActivations
```

#### `MetricGroup`

``` purescript
newtype MetricGroup
  = MetricGroup String
```

##### Instances
``` purescript
Newtype MetricGroup _
Generic MetricGroup _
Show MetricGroup
Decode MetricGroup
Encode MetricGroup
```

#### `MetricGroupList`

``` purescript
newtype MetricGroupList
  = MetricGroupList (Array MetricGroup)
```

##### Instances
``` purescript
Newtype MetricGroupList _
Generic MetricGroupList _
Show MetricGroupList
Decode MetricGroupList
Encode MetricGroupList
```

#### `MetricName`

``` purescript
newtype MetricName
  = MetricName String
```

##### Instances
``` purescript
Newtype MetricName _
Generic MetricName _
Show MetricName
Decode MetricName
Encode MetricName
```

#### `NonBlankAndLengthConstraintString`

``` purescript
newtype NonBlankAndLengthConstraintString
  = NonBlankAndLengthConstraintString String
```

##### Instances
``` purescript
Newtype NonBlankAndLengthConstraintString _
Generic NonBlankAndLengthConstraintString _
Show NonBlankAndLengthConstraintString
Decode NonBlankAndLengthConstraintString
Encode NonBlankAndLengthConstraintString
```

#### `NonBlankString`

``` purescript
newtype NonBlankString
  = NonBlankString String
```

##### Instances
``` purescript
Newtype NonBlankString _
Generic NonBlankString _
Show NonBlankString
Decode NonBlankString
Encode NonBlankString
```

#### `NonEmptyString`

``` purescript
newtype NonEmptyString
  = NonEmptyString String
```

##### Instances
``` purescript
Newtype NonEmptyString _
Generic NonEmptyString _
Show NonEmptyString
Decode NonEmptyString
Encode NonEmptyString
```

#### `NonZeroAndMaxString`

``` purescript
newtype NonZeroAndMaxString
  = NonZeroAndMaxString String
```

##### Instances
``` purescript
Newtype NonZeroAndMaxString _
Generic NonZeroAndMaxString _
Show NonZeroAndMaxString
Decode NonZeroAndMaxString
Encode NonZeroAndMaxString
```

#### `NotFoundException`

``` purescript
newtype NotFoundException
  = NotFoundException { "Message" :: Maybe (NonEmptyString) }
```

<p>A service resource associated with the request could not be found. Clients should not retry such requests.</p>

##### Instances
``` purescript
Newtype NotFoundException _
Generic NotFoundException _
Show NotFoundException
Decode NotFoundException
Encode NotFoundException
```

#### `newNotFoundException`

``` purescript
newNotFoundException :: NotFoundException
```

Constructs NotFoundException from required parameters

#### `newNotFoundException'`

``` purescript
newNotFoundException' :: ({ "Message" :: Maybe (NonEmptyString) } -> { "Message" :: Maybe (NonEmptyString) }) -> NotFoundException
```

Constructs NotFoundException's fields from required parameters

#### `OperatingSystem`

``` purescript
newtype OperatingSystem
  = OperatingSystem String
```

##### Instances
``` purescript
Newtype OperatingSystem _
Generic OperatingSystem _
Show OperatingSystem
Decode OperatingSystem
Encode OperatingSystem
```

#### `PlacedPlayerSession`

``` purescript
newtype PlacedPlayerSession
  = PlacedPlayerSession { "PlayerId" :: Maybe (NonZeroAndMaxString), "PlayerSessionId" :: Maybe (PlayerSessionId) }
```

<p>Information about a player session that was created as part of a <a>StartGameSessionPlacement</a> request. This object contains only the player ID and player session ID. To retrieve full details on a player session, call <a>DescribePlayerSessions</a> with the player session ID.</p> <p>Player-session-related operations include:</p> <ul> <li> <p> <a>CreatePlayerSession</a> </p> </li> <li> <p> <a>CreatePlayerSessions</a> </p> </li> <li> <p> <a>DescribePlayerSessions</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>

##### Instances
``` purescript
Newtype PlacedPlayerSession _
Generic PlacedPlayerSession _
Show PlacedPlayerSession
Decode PlacedPlayerSession
Encode PlacedPlayerSession
```

#### `newPlacedPlayerSession`

``` purescript
newPlacedPlayerSession :: PlacedPlayerSession
```

Constructs PlacedPlayerSession from required parameters

#### `newPlacedPlayerSession'`

``` purescript
newPlacedPlayerSession' :: ({ "PlayerId" :: Maybe (NonZeroAndMaxString), "PlayerSessionId" :: Maybe (PlayerSessionId) } -> { "PlayerId" :: Maybe (NonZeroAndMaxString), "PlayerSessionId" :: Maybe (PlayerSessionId) }) -> PlacedPlayerSession
```

Constructs PlacedPlayerSession's fields from required parameters

#### `PlacedPlayerSessionList`

``` purescript
newtype PlacedPlayerSessionList
  = PlacedPlayerSessionList (Array PlacedPlayerSession)
```

##### Instances
``` purescript
Newtype PlacedPlayerSessionList _
Generic PlacedPlayerSessionList _
Show PlacedPlayerSessionList
Decode PlacedPlayerSessionList
Encode PlacedPlayerSessionList
```

#### `Player`

``` purescript
newtype Player
  = Player { "PlayerId" :: Maybe (NonZeroAndMaxString), "PlayerAttributes" :: Maybe (PlayerAttributeMap), "Team" :: Maybe (NonZeroAndMaxString), "LatencyInMs" :: Maybe (LatencyMap) }
```

<p>Represents a player in matchmaking. When starting a matchmaking request, a player has a player ID, attributes, and may have latency data. Team information is added after a match has been successfully completed.</p>

##### Instances
``` purescript
Newtype Player _
Generic Player _
Show Player
Decode Player
Encode Player
```

#### `newPlayer`

``` purescript
newPlayer :: Player
```

Constructs Player from required parameters

#### `newPlayer'`

``` purescript
newPlayer' :: ({ "PlayerId" :: Maybe (NonZeroAndMaxString), "PlayerAttributes" :: Maybe (PlayerAttributeMap), "Team" :: Maybe (NonZeroAndMaxString), "LatencyInMs" :: Maybe (LatencyMap) } -> { "PlayerId" :: Maybe (NonZeroAndMaxString), "PlayerAttributes" :: Maybe (PlayerAttributeMap), "Team" :: Maybe (NonZeroAndMaxString), "LatencyInMs" :: Maybe (LatencyMap) }) -> Player
```

Constructs Player's fields from required parameters

#### `PlayerAttributeMap`

``` purescript
newtype PlayerAttributeMap
  = PlayerAttributeMap (StrMap AttributeValue)
```

##### Instances
``` purescript
Newtype PlayerAttributeMap _
Generic PlayerAttributeMap _
Show PlayerAttributeMap
Decode PlayerAttributeMap
Encode PlayerAttributeMap
```

#### `PlayerData`

``` purescript
newtype PlayerData
  = PlayerData String
```

##### Instances
``` purescript
Newtype PlayerData _
Generic PlayerData _
Show PlayerData
Decode PlayerData
Encode PlayerData
```

#### `PlayerDataMap`

``` purescript
newtype PlayerDataMap
  = PlayerDataMap (StrMap PlayerData)
```

##### Instances
``` purescript
Newtype PlayerDataMap _
Generic PlayerDataMap _
Show PlayerDataMap
Decode PlayerDataMap
Encode PlayerDataMap
```

#### `PlayerIdList`

``` purescript
newtype PlayerIdList
  = PlayerIdList (Array NonZeroAndMaxString)
```

##### Instances
``` purescript
Newtype PlayerIdList _
Generic PlayerIdList _
Show PlayerIdList
Decode PlayerIdList
Encode PlayerIdList
```

#### `PlayerLatency`

``` purescript
newtype PlayerLatency
  = PlayerLatency { "PlayerId" :: Maybe (NonZeroAndMaxString), "RegionIdentifier" :: Maybe (NonZeroAndMaxString), "LatencyInMilliseconds" :: Maybe (Number) }
```

<p>Regional latency information for a player, used when requesting a new game session with <a>StartGameSessionPlacement</a>. This value indicates the amount of time lag that exists when the player is connected to a fleet in the specified region. The relative difference between a player's latency values for multiple regions are used to determine which fleets are best suited to place a new game session for the player. </p>

##### Instances
``` purescript
Newtype PlayerLatency _
Generic PlayerLatency _
Show PlayerLatency
Decode PlayerLatency
Encode PlayerLatency
```

#### `newPlayerLatency`

``` purescript
newPlayerLatency :: PlayerLatency
```

Constructs PlayerLatency from required parameters

#### `newPlayerLatency'`

``` purescript
newPlayerLatency' :: ({ "PlayerId" :: Maybe (NonZeroAndMaxString), "RegionIdentifier" :: Maybe (NonZeroAndMaxString), "LatencyInMilliseconds" :: Maybe (Number) } -> { "PlayerId" :: Maybe (NonZeroAndMaxString), "RegionIdentifier" :: Maybe (NonZeroAndMaxString), "LatencyInMilliseconds" :: Maybe (Number) }) -> PlayerLatency
```

Constructs PlayerLatency's fields from required parameters

#### `PlayerLatencyList`

``` purescript
newtype PlayerLatencyList
  = PlayerLatencyList (Array PlayerLatency)
```

##### Instances
``` purescript
Newtype PlayerLatencyList _
Generic PlayerLatencyList _
Show PlayerLatencyList
Decode PlayerLatencyList
Encode PlayerLatencyList
```

#### `PlayerLatencyPolicy`

``` purescript
newtype PlayerLatencyPolicy
  = PlayerLatencyPolicy { "MaximumIndividualPlayerLatencyMilliseconds" :: Maybe (WholeNumber), "PolicyDurationSeconds" :: Maybe (WholeNumber) }
```

<p>Queue setting that determines the highest latency allowed for individual players when placing a game session. When a latency policy is in force, a game session cannot be placed at any destination in a region where a player is reporting latency higher than the cap. Latency policies are only enforced when the placement request contains player latency information.</p> <p>Queue-related operations include:</p> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>DescribeGameSessionQueues</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>DeleteGameSessionQueue</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype PlayerLatencyPolicy _
Generic PlayerLatencyPolicy _
Show PlayerLatencyPolicy
Decode PlayerLatencyPolicy
Encode PlayerLatencyPolicy
```

#### `newPlayerLatencyPolicy`

``` purescript
newPlayerLatencyPolicy :: PlayerLatencyPolicy
```

Constructs PlayerLatencyPolicy from required parameters

#### `newPlayerLatencyPolicy'`

``` purescript
newPlayerLatencyPolicy' :: ({ "MaximumIndividualPlayerLatencyMilliseconds" :: Maybe (WholeNumber), "PolicyDurationSeconds" :: Maybe (WholeNumber) } -> { "MaximumIndividualPlayerLatencyMilliseconds" :: Maybe (WholeNumber), "PolicyDurationSeconds" :: Maybe (WholeNumber) }) -> PlayerLatencyPolicy
```

Constructs PlayerLatencyPolicy's fields from required parameters

#### `PlayerLatencyPolicyList`

``` purescript
newtype PlayerLatencyPolicyList
  = PlayerLatencyPolicyList (Array PlayerLatencyPolicy)
```

##### Instances
``` purescript
Newtype PlayerLatencyPolicyList _
Generic PlayerLatencyPolicyList _
Show PlayerLatencyPolicyList
Decode PlayerLatencyPolicyList
Encode PlayerLatencyPolicyList
```

#### `PlayerList`

``` purescript
newtype PlayerList
  = PlayerList (Array Player)
```

##### Instances
``` purescript
Newtype PlayerList _
Generic PlayerList _
Show PlayerList
Decode PlayerList
Encode PlayerList
```

#### `PlayerSession`

``` purescript
newtype PlayerSession
  = PlayerSession { "PlayerSessionId" :: Maybe (PlayerSessionId), "PlayerId" :: Maybe (NonZeroAndMaxString), "GameSessionId" :: Maybe (NonZeroAndMaxString), "FleetId" :: Maybe (FleetId), "CreationTime" :: Maybe (Timestamp), "TerminationTime" :: Maybe (Timestamp), "Status" :: Maybe (PlayerSessionStatus), "IpAddress" :: Maybe (IpAddress), "Port" :: Maybe (PortNumber), "PlayerData" :: Maybe (PlayerData) }
```

<p>Properties describing a player session. Player session objects are created either by creating a player session for a specific game session, or as part of a game session placement. A player session represents either a player reservation for a game session (status <code>RESERVED</code>) or actual player activity in a game session (status <code>ACTIVE</code>). A player session object (including player data) is automatically passed to a game session when the player connects to the game session and is validated.</p> <p>When a player disconnects, the player session status changes to <code>COMPLETED</code>. Once the session ends, the player session object is retained for 30 days and then removed.</p> <p>Player-session-related operations include:</p> <ul> <li> <p> <a>CreatePlayerSession</a> </p> </li> <li> <p> <a>CreatePlayerSessions</a> </p> </li> <li> <p> <a>DescribePlayerSessions</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>

##### Instances
``` purescript
Newtype PlayerSession _
Generic PlayerSession _
Show PlayerSession
Decode PlayerSession
Encode PlayerSession
```

#### `newPlayerSession`

``` purescript
newPlayerSession :: PlayerSession
```

Constructs PlayerSession from required parameters

#### `newPlayerSession'`

``` purescript
newPlayerSession' :: ({ "PlayerSessionId" :: Maybe (PlayerSessionId), "PlayerId" :: Maybe (NonZeroAndMaxString), "GameSessionId" :: Maybe (NonZeroAndMaxString), "FleetId" :: Maybe (FleetId), "CreationTime" :: Maybe (Timestamp), "TerminationTime" :: Maybe (Timestamp), "Status" :: Maybe (PlayerSessionStatus), "IpAddress" :: Maybe (IpAddress), "Port" :: Maybe (PortNumber), "PlayerData" :: Maybe (PlayerData) } -> { "PlayerSessionId" :: Maybe (PlayerSessionId), "PlayerId" :: Maybe (NonZeroAndMaxString), "GameSessionId" :: Maybe (NonZeroAndMaxString), "FleetId" :: Maybe (FleetId), "CreationTime" :: Maybe (Timestamp), "TerminationTime" :: Maybe (Timestamp), "Status" :: Maybe (PlayerSessionStatus), "IpAddress" :: Maybe (IpAddress), "Port" :: Maybe (PortNumber), "PlayerData" :: Maybe (PlayerData) }) -> PlayerSession
```

Constructs PlayerSession's fields from required parameters

#### `PlayerSessionCreationPolicy`

``` purescript
newtype PlayerSessionCreationPolicy
  = PlayerSessionCreationPolicy String
```

##### Instances
``` purescript
Newtype PlayerSessionCreationPolicy _
Generic PlayerSessionCreationPolicy _
Show PlayerSessionCreationPolicy
Decode PlayerSessionCreationPolicy
Encode PlayerSessionCreationPolicy
```

#### `PlayerSessionId`

``` purescript
newtype PlayerSessionId
  = PlayerSessionId String
```

##### Instances
``` purescript
Newtype PlayerSessionId _
Generic PlayerSessionId _
Show PlayerSessionId
Decode PlayerSessionId
Encode PlayerSessionId
```

#### `PlayerSessionList`

``` purescript
newtype PlayerSessionList
  = PlayerSessionList (Array PlayerSession)
```

##### Instances
``` purescript
Newtype PlayerSessionList _
Generic PlayerSessionList _
Show PlayerSessionList
Decode PlayerSessionList
Encode PlayerSessionList
```

#### `PlayerSessionStatus`

``` purescript
newtype PlayerSessionStatus
  = PlayerSessionStatus String
```

##### Instances
``` purescript
Newtype PlayerSessionStatus _
Generic PlayerSessionStatus _
Show PlayerSessionStatus
Decode PlayerSessionStatus
Encode PlayerSessionStatus
```

#### `PortNumber`

``` purescript
newtype PortNumber
  = PortNumber Int
```

##### Instances
``` purescript
Newtype PortNumber _
Generic PortNumber _
Show PortNumber
Decode PortNumber
Encode PortNumber
```

#### `PositiveInteger`

``` purescript
newtype PositiveInteger
  = PositiveInteger Int
```

##### Instances
``` purescript
Newtype PositiveInteger _
Generic PositiveInteger _
Show PositiveInteger
Decode PositiveInteger
Encode PositiveInteger
```

#### `PositiveLong`

``` purescript
newtype PositiveLong
  = PositiveLong Number
```

##### Instances
``` purescript
Newtype PositiveLong _
Generic PositiveLong _
Show PositiveLong
Decode PositiveLong
Encode PositiveLong
```

#### `ProtectionPolicy`

``` purescript
newtype ProtectionPolicy
  = ProtectionPolicy String
```

##### Instances
``` purescript
Newtype ProtectionPolicy _
Generic ProtectionPolicy _
Show ProtectionPolicy
Decode ProtectionPolicy
Encode ProtectionPolicy
```

#### `PutScalingPolicyInput`

``` purescript
newtype PutScalingPolicyInput
  = PutScalingPolicyInput { "Name" :: NonZeroAndMaxString, "FleetId" :: FleetId, "ScalingAdjustment" :: Int, "ScalingAdjustmentType" :: ScalingAdjustmentType, "Threshold" :: Number, "ComparisonOperator" :: ComparisonOperatorType, "EvaluationPeriods" :: PositiveInteger, "MetricName" :: MetricName }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype PutScalingPolicyInput _
Generic PutScalingPolicyInput _
Show PutScalingPolicyInput
Decode PutScalingPolicyInput
Encode PutScalingPolicyInput
```

#### `newPutScalingPolicyInput`

``` purescript
newPutScalingPolicyInput :: ComparisonOperatorType -> PositiveInteger -> FleetId -> MetricName -> NonZeroAndMaxString -> Int -> ScalingAdjustmentType -> Number -> PutScalingPolicyInput
```

Constructs PutScalingPolicyInput from required parameters

#### `newPutScalingPolicyInput'`

``` purescript
newPutScalingPolicyInput' :: ComparisonOperatorType -> PositiveInteger -> FleetId -> MetricName -> NonZeroAndMaxString -> Int -> ScalingAdjustmentType -> Number -> ({ "Name" :: NonZeroAndMaxString, "FleetId" :: FleetId, "ScalingAdjustment" :: Int, "ScalingAdjustmentType" :: ScalingAdjustmentType, "Threshold" :: Number, "ComparisonOperator" :: ComparisonOperatorType, "EvaluationPeriods" :: PositiveInteger, "MetricName" :: MetricName } -> { "Name" :: NonZeroAndMaxString, "FleetId" :: FleetId, "ScalingAdjustment" :: Int, "ScalingAdjustmentType" :: ScalingAdjustmentType, "Threshold" :: Number, "ComparisonOperator" :: ComparisonOperatorType, "EvaluationPeriods" :: PositiveInteger, "MetricName" :: MetricName }) -> PutScalingPolicyInput
```

Constructs PutScalingPolicyInput's fields from required parameters

#### `PutScalingPolicyOutput`

``` purescript
newtype PutScalingPolicyOutput
  = PutScalingPolicyOutput { "Name" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype PutScalingPolicyOutput _
Generic PutScalingPolicyOutput _
Show PutScalingPolicyOutput
Decode PutScalingPolicyOutput
Encode PutScalingPolicyOutput
```

#### `newPutScalingPolicyOutput`

``` purescript
newPutScalingPolicyOutput :: PutScalingPolicyOutput
```

Constructs PutScalingPolicyOutput from required parameters

#### `newPutScalingPolicyOutput'`

``` purescript
newPutScalingPolicyOutput' :: ({ "Name" :: Maybe (NonZeroAndMaxString) } -> { "Name" :: Maybe (NonZeroAndMaxString) }) -> PutScalingPolicyOutput
```

Constructs PutScalingPolicyOutput's fields from required parameters

#### `QueueArnsList`

``` purescript
newtype QueueArnsList
  = QueueArnsList (Array ArnStringModel)
```

##### Instances
``` purescript
Newtype QueueArnsList _
Generic QueueArnsList _
Show QueueArnsList
Decode QueueArnsList
Encode QueueArnsList
```

#### `RequestUploadCredentialsInput`

``` purescript
newtype RequestUploadCredentialsInput
  = RequestUploadCredentialsInput { "BuildId" :: BuildId }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype RequestUploadCredentialsInput _
Generic RequestUploadCredentialsInput _
Show RequestUploadCredentialsInput
Decode RequestUploadCredentialsInput
Encode RequestUploadCredentialsInput
```

#### `newRequestUploadCredentialsInput`

``` purescript
newRequestUploadCredentialsInput :: BuildId -> RequestUploadCredentialsInput
```

Constructs RequestUploadCredentialsInput from required parameters

#### `newRequestUploadCredentialsInput'`

``` purescript
newRequestUploadCredentialsInput' :: BuildId -> ({ "BuildId" :: BuildId } -> { "BuildId" :: BuildId }) -> RequestUploadCredentialsInput
```

Constructs RequestUploadCredentialsInput's fields from required parameters

#### `RequestUploadCredentialsOutput`

``` purescript
newtype RequestUploadCredentialsOutput
  = RequestUploadCredentialsOutput { "UploadCredentials" :: Maybe (AwsCredentials), "StorageLocation" :: Maybe (S3Location) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype RequestUploadCredentialsOutput _
Generic RequestUploadCredentialsOutput _
Show RequestUploadCredentialsOutput
Decode RequestUploadCredentialsOutput
Encode RequestUploadCredentialsOutput
```

#### `newRequestUploadCredentialsOutput`

``` purescript
newRequestUploadCredentialsOutput :: RequestUploadCredentialsOutput
```

Constructs RequestUploadCredentialsOutput from required parameters

#### `newRequestUploadCredentialsOutput'`

``` purescript
newRequestUploadCredentialsOutput' :: ({ "UploadCredentials" :: Maybe (AwsCredentials), "StorageLocation" :: Maybe (S3Location) } -> { "UploadCredentials" :: Maybe (AwsCredentials), "StorageLocation" :: Maybe (S3Location) }) -> RequestUploadCredentialsOutput
```

Constructs RequestUploadCredentialsOutput's fields from required parameters

#### `ResolveAliasInput`

``` purescript
newtype ResolveAliasInput
  = ResolveAliasInput { "AliasId" :: AliasId }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype ResolveAliasInput _
Generic ResolveAliasInput _
Show ResolveAliasInput
Decode ResolveAliasInput
Encode ResolveAliasInput
```

#### `newResolveAliasInput`

``` purescript
newResolveAliasInput :: AliasId -> ResolveAliasInput
```

Constructs ResolveAliasInput from required parameters

#### `newResolveAliasInput'`

``` purescript
newResolveAliasInput' :: AliasId -> ({ "AliasId" :: AliasId } -> { "AliasId" :: AliasId }) -> ResolveAliasInput
```

Constructs ResolveAliasInput's fields from required parameters

#### `ResolveAliasOutput`

``` purescript
newtype ResolveAliasOutput
  = ResolveAliasOutput { "FleetId" :: Maybe (FleetId) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype ResolveAliasOutput _
Generic ResolveAliasOutput _
Show ResolveAliasOutput
Decode ResolveAliasOutput
Encode ResolveAliasOutput
```

#### `newResolveAliasOutput`

``` purescript
newResolveAliasOutput :: ResolveAliasOutput
```

Constructs ResolveAliasOutput from required parameters

#### `newResolveAliasOutput'`

``` purescript
newResolveAliasOutput' :: ({ "FleetId" :: Maybe (FleetId) } -> { "FleetId" :: Maybe (FleetId) }) -> ResolveAliasOutput
```

Constructs ResolveAliasOutput's fields from required parameters

#### `ResourceCreationLimitPolicy`

``` purescript
newtype ResourceCreationLimitPolicy
  = ResourceCreationLimitPolicy { "NewGameSessionsPerCreator" :: Maybe (WholeNumber), "PolicyPeriodInMinutes" :: Maybe (WholeNumber) }
```

<p>Policy that limits the number of game sessions a player can create on the same fleet. This optional policy gives game owners control over how players can consume available game server resources. A resource creation policy makes the following statement: "An individual player can create a maximum number of new game sessions within a specified time period".</p> <p>The policy is evaluated when a player tries to create a new game session. For example, with a policy of 10 new game sessions and a time period of 60 minutes, on receiving a <code>CreateGameSession</code> request, Amazon GameLift checks that the player (identified by <code>CreatorId</code>) has created fewer than 10 game sessions in the past 60 minutes.</p>

##### Instances
``` purescript
Newtype ResourceCreationLimitPolicy _
Generic ResourceCreationLimitPolicy _
Show ResourceCreationLimitPolicy
Decode ResourceCreationLimitPolicy
Encode ResourceCreationLimitPolicy
```

#### `newResourceCreationLimitPolicy`

``` purescript
newResourceCreationLimitPolicy :: ResourceCreationLimitPolicy
```

Constructs ResourceCreationLimitPolicy from required parameters

#### `newResourceCreationLimitPolicy'`

``` purescript
newResourceCreationLimitPolicy' :: ({ "NewGameSessionsPerCreator" :: Maybe (WholeNumber), "PolicyPeriodInMinutes" :: Maybe (WholeNumber) } -> { "NewGameSessionsPerCreator" :: Maybe (WholeNumber), "PolicyPeriodInMinutes" :: Maybe (WholeNumber) }) -> ResourceCreationLimitPolicy
```

Constructs ResourceCreationLimitPolicy's fields from required parameters

#### `RoutingStrategy`

``` purescript
newtype RoutingStrategy
  = RoutingStrategy { "Type" :: Maybe (RoutingStrategyType), "FleetId" :: Maybe (FleetId), "Message" :: Maybe (FreeText) }
```

<p>Routing configuration for a fleet alias.</p> <p>Fleet-related operations include:</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet capacity:</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>PutScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (automatic scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> </ul> </li> <li> <p> <a>DeleteFleet</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype RoutingStrategy _
Generic RoutingStrategy _
Show RoutingStrategy
Decode RoutingStrategy
Encode RoutingStrategy
```

#### `newRoutingStrategy`

``` purescript
newRoutingStrategy :: RoutingStrategy
```

Constructs RoutingStrategy from required parameters

#### `newRoutingStrategy'`

``` purescript
newRoutingStrategy' :: ({ "Type" :: Maybe (RoutingStrategyType), "FleetId" :: Maybe (FleetId), "Message" :: Maybe (FreeText) } -> { "Type" :: Maybe (RoutingStrategyType), "FleetId" :: Maybe (FleetId), "Message" :: Maybe (FreeText) }) -> RoutingStrategy
```

Constructs RoutingStrategy's fields from required parameters

#### `RoutingStrategyType`

``` purescript
newtype RoutingStrategyType
  = RoutingStrategyType String
```

##### Instances
``` purescript
Newtype RoutingStrategyType _
Generic RoutingStrategyType _
Show RoutingStrategyType
Decode RoutingStrategyType
Encode RoutingStrategyType
```

#### `RuleSetBody`

``` purescript
newtype RuleSetBody
  = RuleSetBody String
```

##### Instances
``` purescript
Newtype RuleSetBody _
Generic RuleSetBody _
Show RuleSetBody
Decode RuleSetBody
Encode RuleSetBody
```

#### `RuleSetLimit`

``` purescript
newtype RuleSetLimit
  = RuleSetLimit Int
```

##### Instances
``` purescript
Newtype RuleSetLimit _
Generic RuleSetLimit _
Show RuleSetLimit
Decode RuleSetLimit
Encode RuleSetLimit
```

#### `RuntimeConfiguration`

``` purescript
newtype RuntimeConfiguration
  = RuntimeConfiguration { "ServerProcesses" :: Maybe (ServerProcessList), "MaxConcurrentGameSessionActivations" :: Maybe (MaxConcurrentGameSessionActivations), "GameSessionActivationTimeoutSeconds" :: Maybe (GameSessionActivationTimeoutSeconds) }
```

<p>A collection of server process configurations that describe what processes to run on each instance in a fleet. All fleets must have a run-time configuration. Each instance in the fleet launches the server processes specified in the run-time configuration and launches new ones as existing processes end. Each instance regularly checks for an updated run-time configuration and follows the new instructions. </p> <p>The run-time configuration enables the instances in a fleet to run multiple processes simultaneously. Potential scenarios are as follows: (1) Run multiple processes of a single game server executable to maximize usage of your hosting resources. (2) Run one or more processes of different build executables, such as your game server executable and a related program, or two or more different versions of a game server. (3) Run multiple processes of a single game server but with different launch parameters, for example to run one process on each instance in debug mode.</p> <p>A Amazon GameLift instance is limited to 50 processes running simultaneously. A run-time configuration must specify fewer than this limit. To calculate the total number of processes specified in a run-time configuration, add the values of the <code>ConcurrentExecutions</code> parameter for each <code> <a>ServerProcess</a> </code> object in the run-time configuration.</p> <p>Fleet-related operations include:</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet capacity:</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>PutScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (automatic scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> </ul> </li> <li> <p> <a>DeleteFleet</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype RuntimeConfiguration _
Generic RuntimeConfiguration _
Show RuntimeConfiguration
Decode RuntimeConfiguration
Encode RuntimeConfiguration
```

#### `newRuntimeConfiguration`

``` purescript
newRuntimeConfiguration :: RuntimeConfiguration
```

Constructs RuntimeConfiguration from required parameters

#### `newRuntimeConfiguration'`

``` purescript
newRuntimeConfiguration' :: ({ "ServerProcesses" :: Maybe (ServerProcessList), "MaxConcurrentGameSessionActivations" :: Maybe (MaxConcurrentGameSessionActivations), "GameSessionActivationTimeoutSeconds" :: Maybe (GameSessionActivationTimeoutSeconds) } -> { "ServerProcesses" :: Maybe (ServerProcessList), "MaxConcurrentGameSessionActivations" :: Maybe (MaxConcurrentGameSessionActivations), "GameSessionActivationTimeoutSeconds" :: Maybe (GameSessionActivationTimeoutSeconds) }) -> RuntimeConfiguration
```

Constructs RuntimeConfiguration's fields from required parameters

#### `S3Location`

``` purescript
newtype S3Location
  = S3Location { "Bucket" :: Maybe (NonEmptyString), "Key" :: Maybe (NonEmptyString), "RoleArn" :: Maybe (NonEmptyString) }
```

<p>Location in Amazon Simple Storage Service (Amazon S3) where build files can be stored for access by Amazon GameLift. This location is specified in a <a>CreateBuild</a> request. For more details, see the <a href="http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build">Create a Build with Files in Amazon S3</a>.</p>

##### Instances
``` purescript
Newtype S3Location _
Generic S3Location _
Show S3Location
Decode S3Location
Encode S3Location
```

#### `newS3Location`

``` purescript
newS3Location :: S3Location
```

Constructs S3Location from required parameters

#### `newS3Location'`

``` purescript
newS3Location' :: ({ "Bucket" :: Maybe (NonEmptyString), "Key" :: Maybe (NonEmptyString), "RoleArn" :: Maybe (NonEmptyString) } -> { "Bucket" :: Maybe (NonEmptyString), "Key" :: Maybe (NonEmptyString), "RoleArn" :: Maybe (NonEmptyString) }) -> S3Location
```

Constructs S3Location's fields from required parameters

#### `ScalingAdjustmentType`

``` purescript
newtype ScalingAdjustmentType
  = ScalingAdjustmentType String
```

##### Instances
``` purescript
Newtype ScalingAdjustmentType _
Generic ScalingAdjustmentType _
Show ScalingAdjustmentType
Decode ScalingAdjustmentType
Encode ScalingAdjustmentType
```

#### `ScalingPolicy`

``` purescript
newtype ScalingPolicy
  = ScalingPolicy { "FleetId" :: Maybe (FleetId), "Name" :: Maybe (NonZeroAndMaxString), "Status" :: Maybe (ScalingStatusType), "ScalingAdjustment" :: Maybe (Int), "ScalingAdjustmentType" :: Maybe (ScalingAdjustmentType), "ComparisonOperator" :: Maybe (ComparisonOperatorType), "Threshold" :: Maybe (Number), "EvaluationPeriods" :: Maybe (PositiveInteger), "MetricName" :: Maybe (MetricName) }
```

<p>Rule that controls how a fleet is scaled. Scaling policies are uniquely identified by the combination of name and fleet ID.</p> <p>Fleet-related operations include:</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet capacity:</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>PutScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (automatic scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> </ul> </li> <li> <p> <a>DeleteFleet</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype ScalingPolicy _
Generic ScalingPolicy _
Show ScalingPolicy
Decode ScalingPolicy
Encode ScalingPolicy
```

#### `newScalingPolicy`

``` purescript
newScalingPolicy :: ScalingPolicy
```

Constructs ScalingPolicy from required parameters

#### `newScalingPolicy'`

``` purescript
newScalingPolicy' :: ({ "FleetId" :: Maybe (FleetId), "Name" :: Maybe (NonZeroAndMaxString), "Status" :: Maybe (ScalingStatusType), "ScalingAdjustment" :: Maybe (Int), "ScalingAdjustmentType" :: Maybe (ScalingAdjustmentType), "ComparisonOperator" :: Maybe (ComparisonOperatorType), "Threshold" :: Maybe (Number), "EvaluationPeriods" :: Maybe (PositiveInteger), "MetricName" :: Maybe (MetricName) } -> { "FleetId" :: Maybe (FleetId), "Name" :: Maybe (NonZeroAndMaxString), "Status" :: Maybe (ScalingStatusType), "ScalingAdjustment" :: Maybe (Int), "ScalingAdjustmentType" :: Maybe (ScalingAdjustmentType), "ComparisonOperator" :: Maybe (ComparisonOperatorType), "Threshold" :: Maybe (Number), "EvaluationPeriods" :: Maybe (PositiveInteger), "MetricName" :: Maybe (MetricName) }) -> ScalingPolicy
```

Constructs ScalingPolicy's fields from required parameters

#### `ScalingPolicyList`

``` purescript
newtype ScalingPolicyList
  = ScalingPolicyList (Array ScalingPolicy)
```

##### Instances
``` purescript
Newtype ScalingPolicyList _
Generic ScalingPolicyList _
Show ScalingPolicyList
Decode ScalingPolicyList
Encode ScalingPolicyList
```

#### `ScalingStatusType`

``` purescript
newtype ScalingStatusType
  = ScalingStatusType String
```

##### Instances
``` purescript
Newtype ScalingStatusType _
Generic ScalingStatusType _
Show ScalingStatusType
Decode ScalingStatusType
Encode ScalingStatusType
```

#### `SearchGameSessionsInput`

``` purescript
newtype SearchGameSessionsInput
  = SearchGameSessionsInput { "FleetId" :: Maybe (FleetId), "AliasId" :: Maybe (AliasId), "FilterExpression" :: Maybe (NonZeroAndMaxString), "SortExpression" :: Maybe (NonZeroAndMaxString), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype SearchGameSessionsInput _
Generic SearchGameSessionsInput _
Show SearchGameSessionsInput
Decode SearchGameSessionsInput
Encode SearchGameSessionsInput
```

#### `newSearchGameSessionsInput`

``` purescript
newSearchGameSessionsInput :: SearchGameSessionsInput
```

Constructs SearchGameSessionsInput from required parameters

#### `newSearchGameSessionsInput'`

``` purescript
newSearchGameSessionsInput' :: ({ "FleetId" :: Maybe (FleetId), "AliasId" :: Maybe (AliasId), "FilterExpression" :: Maybe (NonZeroAndMaxString), "SortExpression" :: Maybe (NonZeroAndMaxString), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "FleetId" :: Maybe (FleetId), "AliasId" :: Maybe (AliasId), "FilterExpression" :: Maybe (NonZeroAndMaxString), "SortExpression" :: Maybe (NonZeroAndMaxString), "Limit" :: Maybe (PositiveInteger), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> SearchGameSessionsInput
```

Constructs SearchGameSessionsInput's fields from required parameters

#### `SearchGameSessionsOutput`

``` purescript
newtype SearchGameSessionsOutput
  = SearchGameSessionsOutput { "GameSessions" :: Maybe (GameSessionList), "NextToken" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype SearchGameSessionsOutput _
Generic SearchGameSessionsOutput _
Show SearchGameSessionsOutput
Decode SearchGameSessionsOutput
Encode SearchGameSessionsOutput
```

#### `newSearchGameSessionsOutput`

``` purescript
newSearchGameSessionsOutput :: SearchGameSessionsOutput
```

Constructs SearchGameSessionsOutput from required parameters

#### `newSearchGameSessionsOutput'`

``` purescript
newSearchGameSessionsOutput' :: ({ "GameSessions" :: Maybe (GameSessionList), "NextToken" :: Maybe (NonZeroAndMaxString) } -> { "GameSessions" :: Maybe (GameSessionList), "NextToken" :: Maybe (NonZeroAndMaxString) }) -> SearchGameSessionsOutput
```

Constructs SearchGameSessionsOutput's fields from required parameters

#### `ServerProcess`

``` purescript
newtype ServerProcess
  = ServerProcess { "LaunchPath" :: NonZeroAndMaxString, "Parameters" :: Maybe (NonZeroAndMaxString), "ConcurrentExecutions" :: PositiveInteger }
```

<p>A set of instructions for launching server processes on each instance in a fleet. Each instruction set identifies the location of the server executable, optional launch parameters, and the number of server processes with this configuration to maintain concurrently on the instance. Server process configurations make up a fleet's <code> <a>RuntimeConfiguration</a> </code>.</p>

##### Instances
``` purescript
Newtype ServerProcess _
Generic ServerProcess _
Show ServerProcess
Decode ServerProcess
Encode ServerProcess
```

#### `newServerProcess`

``` purescript
newServerProcess :: PositiveInteger -> NonZeroAndMaxString -> ServerProcess
```

Constructs ServerProcess from required parameters

#### `newServerProcess'`

``` purescript
newServerProcess' :: PositiveInteger -> NonZeroAndMaxString -> ({ "LaunchPath" :: NonZeroAndMaxString, "Parameters" :: Maybe (NonZeroAndMaxString), "ConcurrentExecutions" :: PositiveInteger } -> { "LaunchPath" :: NonZeroAndMaxString, "Parameters" :: Maybe (NonZeroAndMaxString), "ConcurrentExecutions" :: PositiveInteger }) -> ServerProcess
```

Constructs ServerProcess's fields from required parameters

#### `ServerProcessList`

``` purescript
newtype ServerProcessList
  = ServerProcessList (Array ServerProcess)
```

##### Instances
``` purescript
Newtype ServerProcessList _
Generic ServerProcessList _
Show ServerProcessList
Decode ServerProcessList
Encode ServerProcessList
```

#### `SnsArnStringModel`

``` purescript
newtype SnsArnStringModel
  = SnsArnStringModel String
```

##### Instances
``` purescript
Newtype SnsArnStringModel _
Generic SnsArnStringModel _
Show SnsArnStringModel
Decode SnsArnStringModel
Encode SnsArnStringModel
```

#### `StartGameSessionPlacementInput`

``` purescript
newtype StartGameSessionPlacementInput
  = StartGameSessionPlacementInput { "PlacementId" :: IdStringModel, "GameSessionQueueName" :: GameSessionQueueName, "GameProperties" :: Maybe (GamePropertyList), "MaximumPlayerSessionCount" :: WholeNumber, "GameSessionName" :: Maybe (NonZeroAndMaxString), "PlayerLatencies" :: Maybe (PlayerLatencyList), "DesiredPlayerSessions" :: Maybe (DesiredPlayerSessionList), "GameSessionData" :: Maybe (GameSessionData) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype StartGameSessionPlacementInput _
Generic StartGameSessionPlacementInput _
Show StartGameSessionPlacementInput
Decode StartGameSessionPlacementInput
Encode StartGameSessionPlacementInput
```

#### `newStartGameSessionPlacementInput`

``` purescript
newStartGameSessionPlacementInput :: GameSessionQueueName -> WholeNumber -> IdStringModel -> StartGameSessionPlacementInput
```

Constructs StartGameSessionPlacementInput from required parameters

#### `newStartGameSessionPlacementInput'`

``` purescript
newStartGameSessionPlacementInput' :: GameSessionQueueName -> WholeNumber -> IdStringModel -> ({ "PlacementId" :: IdStringModel, "GameSessionQueueName" :: GameSessionQueueName, "GameProperties" :: Maybe (GamePropertyList), "MaximumPlayerSessionCount" :: WholeNumber, "GameSessionName" :: Maybe (NonZeroAndMaxString), "PlayerLatencies" :: Maybe (PlayerLatencyList), "DesiredPlayerSessions" :: Maybe (DesiredPlayerSessionList), "GameSessionData" :: Maybe (GameSessionData) } -> { "PlacementId" :: IdStringModel, "GameSessionQueueName" :: GameSessionQueueName, "GameProperties" :: Maybe (GamePropertyList), "MaximumPlayerSessionCount" :: WholeNumber, "GameSessionName" :: Maybe (NonZeroAndMaxString), "PlayerLatencies" :: Maybe (PlayerLatencyList), "DesiredPlayerSessions" :: Maybe (DesiredPlayerSessionList), "GameSessionData" :: Maybe (GameSessionData) }) -> StartGameSessionPlacementInput
```

Constructs StartGameSessionPlacementInput's fields from required parameters

#### `StartGameSessionPlacementOutput`

``` purescript
newtype StartGameSessionPlacementOutput
  = StartGameSessionPlacementOutput { "GameSessionPlacement" :: Maybe (GameSessionPlacement) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype StartGameSessionPlacementOutput _
Generic StartGameSessionPlacementOutput _
Show StartGameSessionPlacementOutput
Decode StartGameSessionPlacementOutput
Encode StartGameSessionPlacementOutput
```

#### `newStartGameSessionPlacementOutput`

``` purescript
newStartGameSessionPlacementOutput :: StartGameSessionPlacementOutput
```

Constructs StartGameSessionPlacementOutput from required parameters

#### `newStartGameSessionPlacementOutput'`

``` purescript
newStartGameSessionPlacementOutput' :: ({ "GameSessionPlacement" :: Maybe (GameSessionPlacement) } -> { "GameSessionPlacement" :: Maybe (GameSessionPlacement) }) -> StartGameSessionPlacementOutput
```

Constructs StartGameSessionPlacementOutput's fields from required parameters

#### `StartMatchBackfillInput`

``` purescript
newtype StartMatchBackfillInput
  = StartMatchBackfillInput { "TicketId" :: Maybe (MatchmakingIdStringModel), "ConfigurationName" :: MatchmakingIdStringModel, "GameSessionArn" :: ArnStringModel, "Players" :: PlayerList }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype StartMatchBackfillInput _
Generic StartMatchBackfillInput _
Show StartMatchBackfillInput
Decode StartMatchBackfillInput
Encode StartMatchBackfillInput
```

#### `newStartMatchBackfillInput`

``` purescript
newStartMatchBackfillInput :: MatchmakingIdStringModel -> ArnStringModel -> PlayerList -> StartMatchBackfillInput
```

Constructs StartMatchBackfillInput from required parameters

#### `newStartMatchBackfillInput'`

``` purescript
newStartMatchBackfillInput' :: MatchmakingIdStringModel -> ArnStringModel -> PlayerList -> ({ "TicketId" :: Maybe (MatchmakingIdStringModel), "ConfigurationName" :: MatchmakingIdStringModel, "GameSessionArn" :: ArnStringModel, "Players" :: PlayerList } -> { "TicketId" :: Maybe (MatchmakingIdStringModel), "ConfigurationName" :: MatchmakingIdStringModel, "GameSessionArn" :: ArnStringModel, "Players" :: PlayerList }) -> StartMatchBackfillInput
```

Constructs StartMatchBackfillInput's fields from required parameters

#### `StartMatchBackfillOutput`

``` purescript
newtype StartMatchBackfillOutput
  = StartMatchBackfillOutput { "MatchmakingTicket" :: Maybe (MatchmakingTicket) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype StartMatchBackfillOutput _
Generic StartMatchBackfillOutput _
Show StartMatchBackfillOutput
Decode StartMatchBackfillOutput
Encode StartMatchBackfillOutput
```

#### `newStartMatchBackfillOutput`

``` purescript
newStartMatchBackfillOutput :: StartMatchBackfillOutput
```

Constructs StartMatchBackfillOutput from required parameters

#### `newStartMatchBackfillOutput'`

``` purescript
newStartMatchBackfillOutput' :: ({ "MatchmakingTicket" :: Maybe (MatchmakingTicket) } -> { "MatchmakingTicket" :: Maybe (MatchmakingTicket) }) -> StartMatchBackfillOutput
```

Constructs StartMatchBackfillOutput's fields from required parameters

#### `StartMatchmakingInput`

``` purescript
newtype StartMatchmakingInput
  = StartMatchmakingInput { "TicketId" :: Maybe (MatchmakingIdStringModel), "ConfigurationName" :: MatchmakingIdStringModel, "Players" :: PlayerList }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype StartMatchmakingInput _
Generic StartMatchmakingInput _
Show StartMatchmakingInput
Decode StartMatchmakingInput
Encode StartMatchmakingInput
```

#### `newStartMatchmakingInput`

``` purescript
newStartMatchmakingInput :: MatchmakingIdStringModel -> PlayerList -> StartMatchmakingInput
```

Constructs StartMatchmakingInput from required parameters

#### `newStartMatchmakingInput'`

``` purescript
newStartMatchmakingInput' :: MatchmakingIdStringModel -> PlayerList -> ({ "TicketId" :: Maybe (MatchmakingIdStringModel), "ConfigurationName" :: MatchmakingIdStringModel, "Players" :: PlayerList } -> { "TicketId" :: Maybe (MatchmakingIdStringModel), "ConfigurationName" :: MatchmakingIdStringModel, "Players" :: PlayerList }) -> StartMatchmakingInput
```

Constructs StartMatchmakingInput's fields from required parameters

#### `StartMatchmakingOutput`

``` purescript
newtype StartMatchmakingOutput
  = StartMatchmakingOutput { "MatchmakingTicket" :: Maybe (MatchmakingTicket) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype StartMatchmakingOutput _
Generic StartMatchmakingOutput _
Show StartMatchmakingOutput
Decode StartMatchmakingOutput
Encode StartMatchmakingOutput
```

#### `newStartMatchmakingOutput`

``` purescript
newStartMatchmakingOutput :: StartMatchmakingOutput
```

Constructs StartMatchmakingOutput from required parameters

#### `newStartMatchmakingOutput'`

``` purescript
newStartMatchmakingOutput' :: ({ "MatchmakingTicket" :: Maybe (MatchmakingTicket) } -> { "MatchmakingTicket" :: Maybe (MatchmakingTicket) }) -> StartMatchmakingOutput
```

Constructs StartMatchmakingOutput's fields from required parameters

#### `StopGameSessionPlacementInput`

``` purescript
newtype StopGameSessionPlacementInput
  = StopGameSessionPlacementInput { "PlacementId" :: IdStringModel }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype StopGameSessionPlacementInput _
Generic StopGameSessionPlacementInput _
Show StopGameSessionPlacementInput
Decode StopGameSessionPlacementInput
Encode StopGameSessionPlacementInput
```

#### `newStopGameSessionPlacementInput`

``` purescript
newStopGameSessionPlacementInput :: IdStringModel -> StopGameSessionPlacementInput
```

Constructs StopGameSessionPlacementInput from required parameters

#### `newStopGameSessionPlacementInput'`

``` purescript
newStopGameSessionPlacementInput' :: IdStringModel -> ({ "PlacementId" :: IdStringModel } -> { "PlacementId" :: IdStringModel }) -> StopGameSessionPlacementInput
```

Constructs StopGameSessionPlacementInput's fields from required parameters

#### `StopGameSessionPlacementOutput`

``` purescript
newtype StopGameSessionPlacementOutput
  = StopGameSessionPlacementOutput { "GameSessionPlacement" :: Maybe (GameSessionPlacement) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype StopGameSessionPlacementOutput _
Generic StopGameSessionPlacementOutput _
Show StopGameSessionPlacementOutput
Decode StopGameSessionPlacementOutput
Encode StopGameSessionPlacementOutput
```

#### `newStopGameSessionPlacementOutput`

``` purescript
newStopGameSessionPlacementOutput :: StopGameSessionPlacementOutput
```

Constructs StopGameSessionPlacementOutput from required parameters

#### `newStopGameSessionPlacementOutput'`

``` purescript
newStopGameSessionPlacementOutput' :: ({ "GameSessionPlacement" :: Maybe (GameSessionPlacement) } -> { "GameSessionPlacement" :: Maybe (GameSessionPlacement) }) -> StopGameSessionPlacementOutput
```

Constructs StopGameSessionPlacementOutput's fields from required parameters

#### `StopMatchmakingInput`

``` purescript
newtype StopMatchmakingInput
  = StopMatchmakingInput { "TicketId" :: MatchmakingIdStringModel }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype StopMatchmakingInput _
Generic StopMatchmakingInput _
Show StopMatchmakingInput
Decode StopMatchmakingInput
Encode StopMatchmakingInput
```

#### `newStopMatchmakingInput`

``` purescript
newStopMatchmakingInput :: MatchmakingIdStringModel -> StopMatchmakingInput
```

Constructs StopMatchmakingInput from required parameters

#### `newStopMatchmakingInput'`

``` purescript
newStopMatchmakingInput' :: MatchmakingIdStringModel -> ({ "TicketId" :: MatchmakingIdStringModel } -> { "TicketId" :: MatchmakingIdStringModel }) -> StopMatchmakingInput
```

Constructs StopMatchmakingInput's fields from required parameters

#### `StopMatchmakingOutput`

``` purescript
newtype StopMatchmakingOutput
  = StopMatchmakingOutput NoArguments
```

##### Instances
``` purescript
Newtype StopMatchmakingOutput _
Generic StopMatchmakingOutput _
Show StopMatchmakingOutput
Decode StopMatchmakingOutput
Encode StopMatchmakingOutput
```

#### `StringDoubleMap`

``` purescript
newtype StringDoubleMap
  = StringDoubleMap (StrMap DoubleObject)
```

##### Instances
``` purescript
Newtype StringDoubleMap _
Generic StringDoubleMap _
Show StringDoubleMap
Decode StringDoubleMap
Encode StringDoubleMap
```

#### `StringList`

``` purescript
newtype StringList
  = StringList (Array NonZeroAndMaxString)
```

##### Instances
``` purescript
Newtype StringList _
Generic StringList _
Show StringList
Decode StringList
Encode StringList
```

#### `StringModel`

``` purescript
newtype StringModel
  = StringModel String
```

##### Instances
``` purescript
Newtype StringModel _
Generic StringModel _
Show StringModel
Decode StringModel
Encode StringModel
```

#### `TerminalRoutingStrategyException`

``` purescript
newtype TerminalRoutingStrategyException
  = TerminalRoutingStrategyException { "Message" :: Maybe (NonEmptyString) }
```

<p>The service is unable to resolve the routing for a particular alias because it has a terminal <a>RoutingStrategy</a> associated with it. The message returned in this exception is the message defined in the routing strategy itself. Such requests should only be retried if the routing strategy for the specified alias is modified. </p>

##### Instances
``` purescript
Newtype TerminalRoutingStrategyException _
Generic TerminalRoutingStrategyException _
Show TerminalRoutingStrategyException
Decode TerminalRoutingStrategyException
Encode TerminalRoutingStrategyException
```

#### `newTerminalRoutingStrategyException`

``` purescript
newTerminalRoutingStrategyException :: TerminalRoutingStrategyException
```

Constructs TerminalRoutingStrategyException from required parameters

#### `newTerminalRoutingStrategyException'`

``` purescript
newTerminalRoutingStrategyException' :: ({ "Message" :: Maybe (NonEmptyString) } -> { "Message" :: Maybe (NonEmptyString) }) -> TerminalRoutingStrategyException
```

Constructs TerminalRoutingStrategyException's fields from required parameters

#### `UnauthorizedException`

``` purescript
newtype UnauthorizedException
  = UnauthorizedException { "Message" :: Maybe (NonEmptyString) }
```

<p>The client failed authentication. Clients should not retry such requests.</p>

##### Instances
``` purescript
Newtype UnauthorizedException _
Generic UnauthorizedException _
Show UnauthorizedException
Decode UnauthorizedException
Encode UnauthorizedException
```

#### `newUnauthorizedException`

``` purescript
newUnauthorizedException :: UnauthorizedException
```

Constructs UnauthorizedException from required parameters

#### `newUnauthorizedException'`

``` purescript
newUnauthorizedException' :: ({ "Message" :: Maybe (NonEmptyString) } -> { "Message" :: Maybe (NonEmptyString) }) -> UnauthorizedException
```

Constructs UnauthorizedException's fields from required parameters

#### `UnsupportedRegionException`

``` purescript
newtype UnsupportedRegionException
  = UnsupportedRegionException { "Message" :: Maybe (NonEmptyString) }
```

<p>The requested operation is not supported in the region specified.</p>

##### Instances
``` purescript
Newtype UnsupportedRegionException _
Generic UnsupportedRegionException _
Show UnsupportedRegionException
Decode UnsupportedRegionException
Encode UnsupportedRegionException
```

#### `newUnsupportedRegionException`

``` purescript
newUnsupportedRegionException :: UnsupportedRegionException
```

Constructs UnsupportedRegionException from required parameters

#### `newUnsupportedRegionException'`

``` purescript
newUnsupportedRegionException' :: ({ "Message" :: Maybe (NonEmptyString) } -> { "Message" :: Maybe (NonEmptyString) }) -> UnsupportedRegionException
```

Constructs UnsupportedRegionException's fields from required parameters

#### `UpdateAliasInput`

``` purescript
newtype UpdateAliasInput
  = UpdateAliasInput { "AliasId" :: AliasId, "Name" :: Maybe (NonBlankAndLengthConstraintString), "Description" :: Maybe (NonZeroAndMaxString), "RoutingStrategy" :: Maybe (RoutingStrategy) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype UpdateAliasInput _
Generic UpdateAliasInput _
Show UpdateAliasInput
Decode UpdateAliasInput
Encode UpdateAliasInput
```

#### `newUpdateAliasInput`

``` purescript
newUpdateAliasInput :: AliasId -> UpdateAliasInput
```

Constructs UpdateAliasInput from required parameters

#### `newUpdateAliasInput'`

``` purescript
newUpdateAliasInput' :: AliasId -> ({ "AliasId" :: AliasId, "Name" :: Maybe (NonBlankAndLengthConstraintString), "Description" :: Maybe (NonZeroAndMaxString), "RoutingStrategy" :: Maybe (RoutingStrategy) } -> { "AliasId" :: AliasId, "Name" :: Maybe (NonBlankAndLengthConstraintString), "Description" :: Maybe (NonZeroAndMaxString), "RoutingStrategy" :: Maybe (RoutingStrategy) }) -> UpdateAliasInput
```

Constructs UpdateAliasInput's fields from required parameters

#### `UpdateAliasOutput`

``` purescript
newtype UpdateAliasOutput
  = UpdateAliasOutput { "Alias" :: Maybe (Alias) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype UpdateAliasOutput _
Generic UpdateAliasOutput _
Show UpdateAliasOutput
Decode UpdateAliasOutput
Encode UpdateAliasOutput
```

#### `newUpdateAliasOutput`

``` purescript
newUpdateAliasOutput :: UpdateAliasOutput
```

Constructs UpdateAliasOutput from required parameters

#### `newUpdateAliasOutput'`

``` purescript
newUpdateAliasOutput' :: ({ "Alias" :: Maybe (Alias) } -> { "Alias" :: Maybe (Alias) }) -> UpdateAliasOutput
```

Constructs UpdateAliasOutput's fields from required parameters

#### `UpdateBuildInput`

``` purescript
newtype UpdateBuildInput
  = UpdateBuildInput { "BuildId" :: BuildId, "Name" :: Maybe (NonZeroAndMaxString), "Version" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype UpdateBuildInput _
Generic UpdateBuildInput _
Show UpdateBuildInput
Decode UpdateBuildInput
Encode UpdateBuildInput
```

#### `newUpdateBuildInput`

``` purescript
newUpdateBuildInput :: BuildId -> UpdateBuildInput
```

Constructs UpdateBuildInput from required parameters

#### `newUpdateBuildInput'`

``` purescript
newUpdateBuildInput' :: BuildId -> ({ "BuildId" :: BuildId, "Name" :: Maybe (NonZeroAndMaxString), "Version" :: Maybe (NonZeroAndMaxString) } -> { "BuildId" :: BuildId, "Name" :: Maybe (NonZeroAndMaxString), "Version" :: Maybe (NonZeroAndMaxString) }) -> UpdateBuildInput
```

Constructs UpdateBuildInput's fields from required parameters

#### `UpdateBuildOutput`

``` purescript
newtype UpdateBuildOutput
  = UpdateBuildOutput { "Build" :: Maybe (Build) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype UpdateBuildOutput _
Generic UpdateBuildOutput _
Show UpdateBuildOutput
Decode UpdateBuildOutput
Encode UpdateBuildOutput
```

#### `newUpdateBuildOutput`

``` purescript
newUpdateBuildOutput :: UpdateBuildOutput
```

Constructs UpdateBuildOutput from required parameters

#### `newUpdateBuildOutput'`

``` purescript
newUpdateBuildOutput' :: ({ "Build" :: Maybe (Build) } -> { "Build" :: Maybe (Build) }) -> UpdateBuildOutput
```

Constructs UpdateBuildOutput's fields from required parameters

#### `UpdateFleetAttributesInput`

``` purescript
newtype UpdateFleetAttributesInput
  = UpdateFleetAttributesInput { "FleetId" :: FleetId, "Name" :: Maybe (NonZeroAndMaxString), "Description" :: Maybe (NonZeroAndMaxString), "NewGameSessionProtectionPolicy" :: Maybe (ProtectionPolicy), "ResourceCreationLimitPolicy" :: Maybe (ResourceCreationLimitPolicy), "MetricGroups" :: Maybe (MetricGroupList) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype UpdateFleetAttributesInput _
Generic UpdateFleetAttributesInput _
Show UpdateFleetAttributesInput
Decode UpdateFleetAttributesInput
Encode UpdateFleetAttributesInput
```

#### `newUpdateFleetAttributesInput`

``` purescript
newUpdateFleetAttributesInput :: FleetId -> UpdateFleetAttributesInput
```

Constructs UpdateFleetAttributesInput from required parameters

#### `newUpdateFleetAttributesInput'`

``` purescript
newUpdateFleetAttributesInput' :: FleetId -> ({ "FleetId" :: FleetId, "Name" :: Maybe (NonZeroAndMaxString), "Description" :: Maybe (NonZeroAndMaxString), "NewGameSessionProtectionPolicy" :: Maybe (ProtectionPolicy), "ResourceCreationLimitPolicy" :: Maybe (ResourceCreationLimitPolicy), "MetricGroups" :: Maybe (MetricGroupList) } -> { "FleetId" :: FleetId, "Name" :: Maybe (NonZeroAndMaxString), "Description" :: Maybe (NonZeroAndMaxString), "NewGameSessionProtectionPolicy" :: Maybe (ProtectionPolicy), "ResourceCreationLimitPolicy" :: Maybe (ResourceCreationLimitPolicy), "MetricGroups" :: Maybe (MetricGroupList) }) -> UpdateFleetAttributesInput
```

Constructs UpdateFleetAttributesInput's fields from required parameters

#### `UpdateFleetAttributesOutput`

``` purescript
newtype UpdateFleetAttributesOutput
  = UpdateFleetAttributesOutput { "FleetId" :: Maybe (FleetId) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype UpdateFleetAttributesOutput _
Generic UpdateFleetAttributesOutput _
Show UpdateFleetAttributesOutput
Decode UpdateFleetAttributesOutput
Encode UpdateFleetAttributesOutput
```

#### `newUpdateFleetAttributesOutput`

``` purescript
newUpdateFleetAttributesOutput :: UpdateFleetAttributesOutput
```

Constructs UpdateFleetAttributesOutput from required parameters

#### `newUpdateFleetAttributesOutput'`

``` purescript
newUpdateFleetAttributesOutput' :: ({ "FleetId" :: Maybe (FleetId) } -> { "FleetId" :: Maybe (FleetId) }) -> UpdateFleetAttributesOutput
```

Constructs UpdateFleetAttributesOutput's fields from required parameters

#### `UpdateFleetCapacityInput`

``` purescript
newtype UpdateFleetCapacityInput
  = UpdateFleetCapacityInput { "FleetId" :: FleetId, "DesiredInstances" :: Maybe (WholeNumber), "MinSize" :: Maybe (WholeNumber), "MaxSize" :: Maybe (WholeNumber) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype UpdateFleetCapacityInput _
Generic UpdateFleetCapacityInput _
Show UpdateFleetCapacityInput
Decode UpdateFleetCapacityInput
Encode UpdateFleetCapacityInput
```

#### `newUpdateFleetCapacityInput`

``` purescript
newUpdateFleetCapacityInput :: FleetId -> UpdateFleetCapacityInput
```

Constructs UpdateFleetCapacityInput from required parameters

#### `newUpdateFleetCapacityInput'`

``` purescript
newUpdateFleetCapacityInput' :: FleetId -> ({ "FleetId" :: FleetId, "DesiredInstances" :: Maybe (WholeNumber), "MinSize" :: Maybe (WholeNumber), "MaxSize" :: Maybe (WholeNumber) } -> { "FleetId" :: FleetId, "DesiredInstances" :: Maybe (WholeNumber), "MinSize" :: Maybe (WholeNumber), "MaxSize" :: Maybe (WholeNumber) }) -> UpdateFleetCapacityInput
```

Constructs UpdateFleetCapacityInput's fields from required parameters

#### `UpdateFleetCapacityOutput`

``` purescript
newtype UpdateFleetCapacityOutput
  = UpdateFleetCapacityOutput { "FleetId" :: Maybe (FleetId) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype UpdateFleetCapacityOutput _
Generic UpdateFleetCapacityOutput _
Show UpdateFleetCapacityOutput
Decode UpdateFleetCapacityOutput
Encode UpdateFleetCapacityOutput
```

#### `newUpdateFleetCapacityOutput`

``` purescript
newUpdateFleetCapacityOutput :: UpdateFleetCapacityOutput
```

Constructs UpdateFleetCapacityOutput from required parameters

#### `newUpdateFleetCapacityOutput'`

``` purescript
newUpdateFleetCapacityOutput' :: ({ "FleetId" :: Maybe (FleetId) } -> { "FleetId" :: Maybe (FleetId) }) -> UpdateFleetCapacityOutput
```

Constructs UpdateFleetCapacityOutput's fields from required parameters

#### `UpdateFleetPortSettingsInput`

``` purescript
newtype UpdateFleetPortSettingsInput
  = UpdateFleetPortSettingsInput { "FleetId" :: FleetId, "InboundPermissionAuthorizations" :: Maybe (IpPermissionsList), "InboundPermissionRevocations" :: Maybe (IpPermissionsList) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype UpdateFleetPortSettingsInput _
Generic UpdateFleetPortSettingsInput _
Show UpdateFleetPortSettingsInput
Decode UpdateFleetPortSettingsInput
Encode UpdateFleetPortSettingsInput
```

#### `newUpdateFleetPortSettingsInput`

``` purescript
newUpdateFleetPortSettingsInput :: FleetId -> UpdateFleetPortSettingsInput
```

Constructs UpdateFleetPortSettingsInput from required parameters

#### `newUpdateFleetPortSettingsInput'`

``` purescript
newUpdateFleetPortSettingsInput' :: FleetId -> ({ "FleetId" :: FleetId, "InboundPermissionAuthorizations" :: Maybe (IpPermissionsList), "InboundPermissionRevocations" :: Maybe (IpPermissionsList) } -> { "FleetId" :: FleetId, "InboundPermissionAuthorizations" :: Maybe (IpPermissionsList), "InboundPermissionRevocations" :: Maybe (IpPermissionsList) }) -> UpdateFleetPortSettingsInput
```

Constructs UpdateFleetPortSettingsInput's fields from required parameters

#### `UpdateFleetPortSettingsOutput`

``` purescript
newtype UpdateFleetPortSettingsOutput
  = UpdateFleetPortSettingsOutput { "FleetId" :: Maybe (FleetId) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype UpdateFleetPortSettingsOutput _
Generic UpdateFleetPortSettingsOutput _
Show UpdateFleetPortSettingsOutput
Decode UpdateFleetPortSettingsOutput
Encode UpdateFleetPortSettingsOutput
```

#### `newUpdateFleetPortSettingsOutput`

``` purescript
newUpdateFleetPortSettingsOutput :: UpdateFleetPortSettingsOutput
```

Constructs UpdateFleetPortSettingsOutput from required parameters

#### `newUpdateFleetPortSettingsOutput'`

``` purescript
newUpdateFleetPortSettingsOutput' :: ({ "FleetId" :: Maybe (FleetId) } -> { "FleetId" :: Maybe (FleetId) }) -> UpdateFleetPortSettingsOutput
```

Constructs UpdateFleetPortSettingsOutput's fields from required parameters

#### `UpdateGameSessionInput`

``` purescript
newtype UpdateGameSessionInput
  = UpdateGameSessionInput { "GameSessionId" :: ArnStringModel, "MaximumPlayerSessionCount" :: Maybe (WholeNumber), "Name" :: Maybe (NonZeroAndMaxString), "PlayerSessionCreationPolicy" :: Maybe (PlayerSessionCreationPolicy), "ProtectionPolicy" :: Maybe (ProtectionPolicy) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype UpdateGameSessionInput _
Generic UpdateGameSessionInput _
Show UpdateGameSessionInput
Decode UpdateGameSessionInput
Encode UpdateGameSessionInput
```

#### `newUpdateGameSessionInput`

``` purescript
newUpdateGameSessionInput :: ArnStringModel -> UpdateGameSessionInput
```

Constructs UpdateGameSessionInput from required parameters

#### `newUpdateGameSessionInput'`

``` purescript
newUpdateGameSessionInput' :: ArnStringModel -> ({ "GameSessionId" :: ArnStringModel, "MaximumPlayerSessionCount" :: Maybe (WholeNumber), "Name" :: Maybe (NonZeroAndMaxString), "PlayerSessionCreationPolicy" :: Maybe (PlayerSessionCreationPolicy), "ProtectionPolicy" :: Maybe (ProtectionPolicy) } -> { "GameSessionId" :: ArnStringModel, "MaximumPlayerSessionCount" :: Maybe (WholeNumber), "Name" :: Maybe (NonZeroAndMaxString), "PlayerSessionCreationPolicy" :: Maybe (PlayerSessionCreationPolicy), "ProtectionPolicy" :: Maybe (ProtectionPolicy) }) -> UpdateGameSessionInput
```

Constructs UpdateGameSessionInput's fields from required parameters

#### `UpdateGameSessionOutput`

``` purescript
newtype UpdateGameSessionOutput
  = UpdateGameSessionOutput { "GameSession" :: Maybe (GameSession) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype UpdateGameSessionOutput _
Generic UpdateGameSessionOutput _
Show UpdateGameSessionOutput
Decode UpdateGameSessionOutput
Encode UpdateGameSessionOutput
```

#### `newUpdateGameSessionOutput`

``` purescript
newUpdateGameSessionOutput :: UpdateGameSessionOutput
```

Constructs UpdateGameSessionOutput from required parameters

#### `newUpdateGameSessionOutput'`

``` purescript
newUpdateGameSessionOutput' :: ({ "GameSession" :: Maybe (GameSession) } -> { "GameSession" :: Maybe (GameSession) }) -> UpdateGameSessionOutput
```

Constructs UpdateGameSessionOutput's fields from required parameters

#### `UpdateGameSessionQueueInput`

``` purescript
newtype UpdateGameSessionQueueInput
  = UpdateGameSessionQueueInput { "Name" :: GameSessionQueueName, "TimeoutInSeconds" :: Maybe (WholeNumber), "PlayerLatencyPolicies" :: Maybe (PlayerLatencyPolicyList), "Destinations" :: Maybe (GameSessionQueueDestinationList) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype UpdateGameSessionQueueInput _
Generic UpdateGameSessionQueueInput _
Show UpdateGameSessionQueueInput
Decode UpdateGameSessionQueueInput
Encode UpdateGameSessionQueueInput
```

#### `newUpdateGameSessionQueueInput`

``` purescript
newUpdateGameSessionQueueInput :: GameSessionQueueName -> UpdateGameSessionQueueInput
```

Constructs UpdateGameSessionQueueInput from required parameters

#### `newUpdateGameSessionQueueInput'`

``` purescript
newUpdateGameSessionQueueInput' :: GameSessionQueueName -> ({ "Name" :: GameSessionQueueName, "TimeoutInSeconds" :: Maybe (WholeNumber), "PlayerLatencyPolicies" :: Maybe (PlayerLatencyPolicyList), "Destinations" :: Maybe (GameSessionQueueDestinationList) } -> { "Name" :: GameSessionQueueName, "TimeoutInSeconds" :: Maybe (WholeNumber), "PlayerLatencyPolicies" :: Maybe (PlayerLatencyPolicyList), "Destinations" :: Maybe (GameSessionQueueDestinationList) }) -> UpdateGameSessionQueueInput
```

Constructs UpdateGameSessionQueueInput's fields from required parameters

#### `UpdateGameSessionQueueOutput`

``` purescript
newtype UpdateGameSessionQueueOutput
  = UpdateGameSessionQueueOutput { "GameSessionQueue" :: Maybe (GameSessionQueue) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype UpdateGameSessionQueueOutput _
Generic UpdateGameSessionQueueOutput _
Show UpdateGameSessionQueueOutput
Decode UpdateGameSessionQueueOutput
Encode UpdateGameSessionQueueOutput
```

#### `newUpdateGameSessionQueueOutput`

``` purescript
newUpdateGameSessionQueueOutput :: UpdateGameSessionQueueOutput
```

Constructs UpdateGameSessionQueueOutput from required parameters

#### `newUpdateGameSessionQueueOutput'`

``` purescript
newUpdateGameSessionQueueOutput' :: ({ "GameSessionQueue" :: Maybe (GameSessionQueue) } -> { "GameSessionQueue" :: Maybe (GameSessionQueue) }) -> UpdateGameSessionQueueOutput
```

Constructs UpdateGameSessionQueueOutput's fields from required parameters

#### `UpdateMatchmakingConfigurationInput`

``` purescript
newtype UpdateMatchmakingConfigurationInput
  = UpdateMatchmakingConfigurationInput { "Name" :: MatchmakingIdStringModel, "Description" :: Maybe (NonZeroAndMaxString), "GameSessionQueueArns" :: Maybe (QueueArnsList), "RequestTimeoutSeconds" :: Maybe (MatchmakingRequestTimeoutInteger), "AcceptanceTimeoutSeconds" :: Maybe (MatchmakingAcceptanceTimeoutInteger), "AcceptanceRequired" :: Maybe (BooleanModel), "RuleSetName" :: Maybe (MatchmakingIdStringModel), "NotificationTarget" :: Maybe (SnsArnStringModel), "AdditionalPlayerCount" :: Maybe (WholeNumber), "CustomEventData" :: Maybe (CustomEventData), "GameProperties" :: Maybe (GamePropertyList), "GameSessionData" :: Maybe (GameSessionData) }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype UpdateMatchmakingConfigurationInput _
Generic UpdateMatchmakingConfigurationInput _
Show UpdateMatchmakingConfigurationInput
Decode UpdateMatchmakingConfigurationInput
Encode UpdateMatchmakingConfigurationInput
```

#### `newUpdateMatchmakingConfigurationInput`

``` purescript
newUpdateMatchmakingConfigurationInput :: MatchmakingIdStringModel -> UpdateMatchmakingConfigurationInput
```

Constructs UpdateMatchmakingConfigurationInput from required parameters

#### `newUpdateMatchmakingConfigurationInput'`

``` purescript
newUpdateMatchmakingConfigurationInput' :: MatchmakingIdStringModel -> ({ "Name" :: MatchmakingIdStringModel, "Description" :: Maybe (NonZeroAndMaxString), "GameSessionQueueArns" :: Maybe (QueueArnsList), "RequestTimeoutSeconds" :: Maybe (MatchmakingRequestTimeoutInteger), "AcceptanceTimeoutSeconds" :: Maybe (MatchmakingAcceptanceTimeoutInteger), "AcceptanceRequired" :: Maybe (BooleanModel), "RuleSetName" :: Maybe (MatchmakingIdStringModel), "NotificationTarget" :: Maybe (SnsArnStringModel), "AdditionalPlayerCount" :: Maybe (WholeNumber), "CustomEventData" :: Maybe (CustomEventData), "GameProperties" :: Maybe (GamePropertyList), "GameSessionData" :: Maybe (GameSessionData) } -> { "Name" :: MatchmakingIdStringModel, "Description" :: Maybe (NonZeroAndMaxString), "GameSessionQueueArns" :: Maybe (QueueArnsList), "RequestTimeoutSeconds" :: Maybe (MatchmakingRequestTimeoutInteger), "AcceptanceTimeoutSeconds" :: Maybe (MatchmakingAcceptanceTimeoutInteger), "AcceptanceRequired" :: Maybe (BooleanModel), "RuleSetName" :: Maybe (MatchmakingIdStringModel), "NotificationTarget" :: Maybe (SnsArnStringModel), "AdditionalPlayerCount" :: Maybe (WholeNumber), "CustomEventData" :: Maybe (CustomEventData), "GameProperties" :: Maybe (GamePropertyList), "GameSessionData" :: Maybe (GameSessionData) }) -> UpdateMatchmakingConfigurationInput
```

Constructs UpdateMatchmakingConfigurationInput's fields from required parameters

#### `UpdateMatchmakingConfigurationOutput`

``` purescript
newtype UpdateMatchmakingConfigurationOutput
  = UpdateMatchmakingConfigurationOutput { "Configuration" :: Maybe (MatchmakingConfiguration) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype UpdateMatchmakingConfigurationOutput _
Generic UpdateMatchmakingConfigurationOutput _
Show UpdateMatchmakingConfigurationOutput
Decode UpdateMatchmakingConfigurationOutput
Encode UpdateMatchmakingConfigurationOutput
```

#### `newUpdateMatchmakingConfigurationOutput`

``` purescript
newUpdateMatchmakingConfigurationOutput :: UpdateMatchmakingConfigurationOutput
```

Constructs UpdateMatchmakingConfigurationOutput from required parameters

#### `newUpdateMatchmakingConfigurationOutput'`

``` purescript
newUpdateMatchmakingConfigurationOutput' :: ({ "Configuration" :: Maybe (MatchmakingConfiguration) } -> { "Configuration" :: Maybe (MatchmakingConfiguration) }) -> UpdateMatchmakingConfigurationOutput
```

Constructs UpdateMatchmakingConfigurationOutput's fields from required parameters

#### `UpdateRuntimeConfigurationInput`

``` purescript
newtype UpdateRuntimeConfigurationInput
  = UpdateRuntimeConfigurationInput { "FleetId" :: FleetId, "RuntimeConfiguration" :: RuntimeConfiguration }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype UpdateRuntimeConfigurationInput _
Generic UpdateRuntimeConfigurationInput _
Show UpdateRuntimeConfigurationInput
Decode UpdateRuntimeConfigurationInput
Encode UpdateRuntimeConfigurationInput
```

#### `newUpdateRuntimeConfigurationInput`

``` purescript
newUpdateRuntimeConfigurationInput :: FleetId -> RuntimeConfiguration -> UpdateRuntimeConfigurationInput
```

Constructs UpdateRuntimeConfigurationInput from required parameters

#### `newUpdateRuntimeConfigurationInput'`

``` purescript
newUpdateRuntimeConfigurationInput' :: FleetId -> RuntimeConfiguration -> ({ "FleetId" :: FleetId, "RuntimeConfiguration" :: RuntimeConfiguration } -> { "FleetId" :: FleetId, "RuntimeConfiguration" :: RuntimeConfiguration }) -> UpdateRuntimeConfigurationInput
```

Constructs UpdateRuntimeConfigurationInput's fields from required parameters

#### `UpdateRuntimeConfigurationOutput`

``` purescript
newtype UpdateRuntimeConfigurationOutput
  = UpdateRuntimeConfigurationOutput { "RuntimeConfiguration" :: Maybe (RuntimeConfiguration) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype UpdateRuntimeConfigurationOutput _
Generic UpdateRuntimeConfigurationOutput _
Show UpdateRuntimeConfigurationOutput
Decode UpdateRuntimeConfigurationOutput
Encode UpdateRuntimeConfigurationOutput
```

#### `newUpdateRuntimeConfigurationOutput`

``` purescript
newUpdateRuntimeConfigurationOutput :: UpdateRuntimeConfigurationOutput
```

Constructs UpdateRuntimeConfigurationOutput from required parameters

#### `newUpdateRuntimeConfigurationOutput'`

``` purescript
newUpdateRuntimeConfigurationOutput' :: ({ "RuntimeConfiguration" :: Maybe (RuntimeConfiguration) } -> { "RuntimeConfiguration" :: Maybe (RuntimeConfiguration) }) -> UpdateRuntimeConfigurationOutput
```

Constructs UpdateRuntimeConfigurationOutput's fields from required parameters

#### `ValidateMatchmakingRuleSetInput`

``` purescript
newtype ValidateMatchmakingRuleSetInput
  = ValidateMatchmakingRuleSetInput { "RuleSetBody" :: RuleSetBody }
```

<p>Represents the input for a request action.</p>

##### Instances
``` purescript
Newtype ValidateMatchmakingRuleSetInput _
Generic ValidateMatchmakingRuleSetInput _
Show ValidateMatchmakingRuleSetInput
Decode ValidateMatchmakingRuleSetInput
Encode ValidateMatchmakingRuleSetInput
```

#### `newValidateMatchmakingRuleSetInput`

``` purescript
newValidateMatchmakingRuleSetInput :: RuleSetBody -> ValidateMatchmakingRuleSetInput
```

Constructs ValidateMatchmakingRuleSetInput from required parameters

#### `newValidateMatchmakingRuleSetInput'`

``` purescript
newValidateMatchmakingRuleSetInput' :: RuleSetBody -> ({ "RuleSetBody" :: RuleSetBody } -> { "RuleSetBody" :: RuleSetBody }) -> ValidateMatchmakingRuleSetInput
```

Constructs ValidateMatchmakingRuleSetInput's fields from required parameters

#### `ValidateMatchmakingRuleSetOutput`

``` purescript
newtype ValidateMatchmakingRuleSetOutput
  = ValidateMatchmakingRuleSetOutput { "Valid" :: Maybe (BooleanModel) }
```

<p>Represents the returned data in response to a request action.</p>

##### Instances
``` purescript
Newtype ValidateMatchmakingRuleSetOutput _
Generic ValidateMatchmakingRuleSetOutput _
Show ValidateMatchmakingRuleSetOutput
Decode ValidateMatchmakingRuleSetOutput
Encode ValidateMatchmakingRuleSetOutput
```

#### `newValidateMatchmakingRuleSetOutput`

``` purescript
newValidateMatchmakingRuleSetOutput :: ValidateMatchmakingRuleSetOutput
```

Constructs ValidateMatchmakingRuleSetOutput from required parameters

#### `newValidateMatchmakingRuleSetOutput'`

``` purescript
newValidateMatchmakingRuleSetOutput' :: ({ "Valid" :: Maybe (BooleanModel) } -> { "Valid" :: Maybe (BooleanModel) }) -> ValidateMatchmakingRuleSetOutput
```

Constructs ValidateMatchmakingRuleSetOutput's fields from required parameters

#### `VpcPeeringAuthorization`

``` purescript
newtype VpcPeeringAuthorization
  = VpcPeeringAuthorization { "GameLiftAwsAccountId" :: Maybe (NonZeroAndMaxString), "PeerVpcAwsAccountId" :: Maybe (NonZeroAndMaxString), "PeerVpcId" :: Maybe (NonZeroAndMaxString), "CreationTime" :: Maybe (Timestamp), "ExpirationTime" :: Maybe (Timestamp) }
```

<p>Represents an authorization for a VPC peering connection between the VPC for an Amazon GameLift fleet and another VPC on an account you have access to. This authorization must exist and be valid for the peering connection to be established. Authorizations are valid for 24 hours after they are issued.</p> <p>VPC peering connection operations include:</p> <ul> <li> <p> <a>CreateVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>DescribeVpcPeeringAuthorizations</a> </p> </li> <li> <p> <a>DeleteVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>CreateVpcPeeringConnection</a> </p> </li> <li> <p> <a>DescribeVpcPeeringConnections</a> </p> </li> <li> <p> <a>DeleteVpcPeeringConnection</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype VpcPeeringAuthorization _
Generic VpcPeeringAuthorization _
Show VpcPeeringAuthorization
Decode VpcPeeringAuthorization
Encode VpcPeeringAuthorization
```

#### `newVpcPeeringAuthorization`

``` purescript
newVpcPeeringAuthorization :: VpcPeeringAuthorization
```

Constructs VpcPeeringAuthorization from required parameters

#### `newVpcPeeringAuthorization'`

``` purescript
newVpcPeeringAuthorization' :: ({ "GameLiftAwsAccountId" :: Maybe (NonZeroAndMaxString), "PeerVpcAwsAccountId" :: Maybe (NonZeroAndMaxString), "PeerVpcId" :: Maybe (NonZeroAndMaxString), "CreationTime" :: Maybe (Timestamp), "ExpirationTime" :: Maybe (Timestamp) } -> { "GameLiftAwsAccountId" :: Maybe (NonZeroAndMaxString), "PeerVpcAwsAccountId" :: Maybe (NonZeroAndMaxString), "PeerVpcId" :: Maybe (NonZeroAndMaxString), "CreationTime" :: Maybe (Timestamp), "ExpirationTime" :: Maybe (Timestamp) }) -> VpcPeeringAuthorization
```

Constructs VpcPeeringAuthorization's fields from required parameters

#### `VpcPeeringAuthorizationList`

``` purescript
newtype VpcPeeringAuthorizationList
  = VpcPeeringAuthorizationList (Array VpcPeeringAuthorization)
```

##### Instances
``` purescript
Newtype VpcPeeringAuthorizationList _
Generic VpcPeeringAuthorizationList _
Show VpcPeeringAuthorizationList
Decode VpcPeeringAuthorizationList
Encode VpcPeeringAuthorizationList
```

#### `VpcPeeringConnection`

``` purescript
newtype VpcPeeringConnection
  = VpcPeeringConnection { "FleetId" :: Maybe (FleetId), "IpV4CidrBlock" :: Maybe (NonZeroAndMaxString), "VpcPeeringConnectionId" :: Maybe (NonZeroAndMaxString), "Status" :: Maybe (VpcPeeringConnectionStatus), "PeerVpcId" :: Maybe (NonZeroAndMaxString), "GameLiftVpcId" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents a peering connection between a VPC on one of your AWS accounts and the VPC for your Amazon GameLift fleets. This record may be for an active peering connection or a pending connection that has not yet been established.</p> <p>VPC peering connection operations include:</p> <ul> <li> <p> <a>CreateVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>DescribeVpcPeeringAuthorizations</a> </p> </li> <li> <p> <a>DeleteVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>CreateVpcPeeringConnection</a> </p> </li> <li> <p> <a>DescribeVpcPeeringConnections</a> </p> </li> <li> <p> <a>DeleteVpcPeeringConnection</a> </p> </li> </ul>

##### Instances
``` purescript
Newtype VpcPeeringConnection _
Generic VpcPeeringConnection _
Show VpcPeeringConnection
Decode VpcPeeringConnection
Encode VpcPeeringConnection
```

#### `newVpcPeeringConnection`

``` purescript
newVpcPeeringConnection :: VpcPeeringConnection
```

Constructs VpcPeeringConnection from required parameters

#### `newVpcPeeringConnection'`

``` purescript
newVpcPeeringConnection' :: ({ "FleetId" :: Maybe (FleetId), "IpV4CidrBlock" :: Maybe (NonZeroAndMaxString), "VpcPeeringConnectionId" :: Maybe (NonZeroAndMaxString), "Status" :: Maybe (VpcPeeringConnectionStatus), "PeerVpcId" :: Maybe (NonZeroAndMaxString), "GameLiftVpcId" :: Maybe (NonZeroAndMaxString) } -> { "FleetId" :: Maybe (FleetId), "IpV4CidrBlock" :: Maybe (NonZeroAndMaxString), "VpcPeeringConnectionId" :: Maybe (NonZeroAndMaxString), "Status" :: Maybe (VpcPeeringConnectionStatus), "PeerVpcId" :: Maybe (NonZeroAndMaxString), "GameLiftVpcId" :: Maybe (NonZeroAndMaxString) }) -> VpcPeeringConnection
```

Constructs VpcPeeringConnection's fields from required parameters

#### `VpcPeeringConnectionList`

``` purescript
newtype VpcPeeringConnectionList
  = VpcPeeringConnectionList (Array VpcPeeringConnection)
```

##### Instances
``` purescript
Newtype VpcPeeringConnectionList _
Generic VpcPeeringConnectionList _
Show VpcPeeringConnectionList
Decode VpcPeeringConnectionList
Encode VpcPeeringConnectionList
```

#### `VpcPeeringConnectionStatus`

``` purescript
newtype VpcPeeringConnectionStatus
  = VpcPeeringConnectionStatus { "Code" :: Maybe (NonZeroAndMaxString), "Message" :: Maybe (NonZeroAndMaxString) }
```

<p>Represents status information for a VPC peering connection. Status is associated with a <a>VpcPeeringConnection</a> object. Status codes and messages are provided from EC2 (see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VpcPeeringConnectionStateReason.html">VpcPeeringConnectionStateReason</a>). Connection status information is also communicated as a fleet <a>Event</a>.</p>

##### Instances
``` purescript
Newtype VpcPeeringConnectionStatus _
Generic VpcPeeringConnectionStatus _
Show VpcPeeringConnectionStatus
Decode VpcPeeringConnectionStatus
Encode VpcPeeringConnectionStatus
```

#### `newVpcPeeringConnectionStatus`

``` purescript
newVpcPeeringConnectionStatus :: VpcPeeringConnectionStatus
```

Constructs VpcPeeringConnectionStatus from required parameters

#### `newVpcPeeringConnectionStatus'`

``` purescript
newVpcPeeringConnectionStatus' :: ({ "Code" :: Maybe (NonZeroAndMaxString), "Message" :: Maybe (NonZeroAndMaxString) } -> { "Code" :: Maybe (NonZeroAndMaxString), "Message" :: Maybe (NonZeroAndMaxString) }) -> VpcPeeringConnectionStatus
```

Constructs VpcPeeringConnectionStatus's fields from required parameters

#### `WholeNumber`

``` purescript
newtype WholeNumber
  = WholeNumber Int
```

##### Instances
``` purescript
Newtype WholeNumber _
Generic WholeNumber _
Show WholeNumber
Decode WholeNumber
Encode WholeNumber
```


