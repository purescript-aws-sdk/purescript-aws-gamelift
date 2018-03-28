
module AWS.GameLift.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>Represents the input for a request action.</p>
newtype AcceptMatchInput = AcceptMatchInput 
  { "TicketId" :: (MatchmakingIdStringModel)
  , "PlayerIds" :: (StringList)
  , "AcceptanceType" :: (AcceptanceType)
  }
derive instance newtypeAcceptMatchInput :: Newtype AcceptMatchInput _
derive instance repGenericAcceptMatchInput :: Generic AcceptMatchInput _
instance showAcceptMatchInput :: Show AcceptMatchInput where show = genericShow
instance decodeAcceptMatchInput :: Decode AcceptMatchInput where decode = genericDecode options
instance encodeAcceptMatchInput :: Encode AcceptMatchInput where encode = genericEncode options

-- | Constructs AcceptMatchInput from required parameters
newAcceptMatchInput :: AcceptanceType -> StringList -> MatchmakingIdStringModel -> AcceptMatchInput
newAcceptMatchInput _AcceptanceType _PlayerIds _TicketId = AcceptMatchInput { "AcceptanceType": _AcceptanceType, "PlayerIds": _PlayerIds, "TicketId": _TicketId }

-- | Constructs AcceptMatchInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAcceptMatchInput' :: AcceptanceType -> StringList -> MatchmakingIdStringModel -> ( { "TicketId" :: (MatchmakingIdStringModel) , "PlayerIds" :: (StringList) , "AcceptanceType" :: (AcceptanceType) } -> {"TicketId" :: (MatchmakingIdStringModel) , "PlayerIds" :: (StringList) , "AcceptanceType" :: (AcceptanceType) } ) -> AcceptMatchInput
newAcceptMatchInput' _AcceptanceType _PlayerIds _TicketId customize = (AcceptMatchInput <<< customize) { "AcceptanceType": _AcceptanceType, "PlayerIds": _PlayerIds, "TicketId": _TicketId }



newtype AcceptMatchOutput = AcceptMatchOutput Types.NoArguments
derive instance newtypeAcceptMatchOutput :: Newtype AcceptMatchOutput _
derive instance repGenericAcceptMatchOutput :: Generic AcceptMatchOutput _
instance showAcceptMatchOutput :: Show AcceptMatchOutput where show = genericShow
instance decodeAcceptMatchOutput :: Decode AcceptMatchOutput where decode = genericDecode options
instance encodeAcceptMatchOutput :: Encode AcceptMatchOutput where encode = genericEncode options



newtype AcceptanceType = AcceptanceType String
derive instance newtypeAcceptanceType :: Newtype AcceptanceType _
derive instance repGenericAcceptanceType :: Generic AcceptanceType _
instance showAcceptanceType :: Show AcceptanceType where show = genericShow
instance decodeAcceptanceType :: Decode AcceptanceType where decode = genericDecode options
instance encodeAcceptanceType :: Encode AcceptanceType where encode = genericEncode options



-- | <p>Properties describing a fleet alias.</p> <p>Alias-related operations include:</p> <ul> <li> <p> <a>CreateAlias</a> </p> </li> <li> <p> <a>ListAliases</a> </p> </li> <li> <p> <a>DescribeAlias</a> </p> </li> <li> <p> <a>UpdateAlias</a> </p> </li> <li> <p> <a>DeleteAlias</a> </p> </li> <li> <p> <a>ResolveAlias</a> </p> </li> </ul>
newtype Alias = Alias 
  { "AliasId" :: NullOrUndefined (AliasId)
  , "Name" :: NullOrUndefined (NonBlankAndLengthConstraintString)
  , "AliasArn" :: NullOrUndefined (ArnStringModel)
  , "Description" :: NullOrUndefined (FreeText)
  , "RoutingStrategy" :: NullOrUndefined (RoutingStrategy)
  , "CreationTime" :: NullOrUndefined (Types.Timestamp)
  , "LastUpdatedTime" :: NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeAlias :: Newtype Alias _
derive instance repGenericAlias :: Generic Alias _
instance showAlias :: Show Alias where show = genericShow
instance decodeAlias :: Decode Alias where decode = genericDecode options
instance encodeAlias :: Encode Alias where encode = genericEncode options

-- | Constructs Alias from required parameters
newAlias :: Alias
newAlias  = Alias { "AliasArn": (NullOrUndefined Nothing), "AliasId": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "LastUpdatedTime": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "RoutingStrategy": (NullOrUndefined Nothing) }

-- | Constructs Alias's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAlias' :: ( { "AliasId" :: NullOrUndefined (AliasId) , "Name" :: NullOrUndefined (NonBlankAndLengthConstraintString) , "AliasArn" :: NullOrUndefined (ArnStringModel) , "Description" :: NullOrUndefined (FreeText) , "RoutingStrategy" :: NullOrUndefined (RoutingStrategy) , "CreationTime" :: NullOrUndefined (Types.Timestamp) , "LastUpdatedTime" :: NullOrUndefined (Types.Timestamp) } -> {"AliasId" :: NullOrUndefined (AliasId) , "Name" :: NullOrUndefined (NonBlankAndLengthConstraintString) , "AliasArn" :: NullOrUndefined (ArnStringModel) , "Description" :: NullOrUndefined (FreeText) , "RoutingStrategy" :: NullOrUndefined (RoutingStrategy) , "CreationTime" :: NullOrUndefined (Types.Timestamp) , "LastUpdatedTime" :: NullOrUndefined (Types.Timestamp) } ) -> Alias
newAlias'  customize = (Alias <<< customize) { "AliasArn": (NullOrUndefined Nothing), "AliasId": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "LastUpdatedTime": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "RoutingStrategy": (NullOrUndefined Nothing) }



newtype AliasId = AliasId String
derive instance newtypeAliasId :: Newtype AliasId _
derive instance repGenericAliasId :: Generic AliasId _
instance showAliasId :: Show AliasId where show = genericShow
instance decodeAliasId :: Decode AliasId where decode = genericDecode options
instance encodeAliasId :: Encode AliasId where encode = genericEncode options



newtype AliasList = AliasList (Array Alias)
derive instance newtypeAliasList :: Newtype AliasList _
derive instance repGenericAliasList :: Generic AliasList _
instance showAliasList :: Show AliasList where show = genericShow
instance decodeAliasList :: Decode AliasList where decode = genericDecode options
instance encodeAliasList :: Encode AliasList where encode = genericEncode options



newtype ArnStringModel = ArnStringModel String
derive instance newtypeArnStringModel :: Newtype ArnStringModel _
derive instance repGenericArnStringModel :: Generic ArnStringModel _
instance showArnStringModel :: Show ArnStringModel where show = genericShow
instance decodeArnStringModel :: Decode ArnStringModel where decode = genericDecode options
instance encodeArnStringModel :: Encode ArnStringModel where encode = genericEncode options



-- | <p>Values for use in <a>Player</a> attribute key:value pairs. This object lets you specify an attribute value using any of the valid data types: string, number, string array or data map. Each <code>AttributeValue</code> object can use only one of the available properties.</p>
newtype AttributeValue = AttributeValue 
  { "S" :: NullOrUndefined (NonZeroAndMaxString)
  , "N" :: NullOrUndefined (DoubleObject)
  , "SL" :: NullOrUndefined (StringList)
  , "SDM" :: NullOrUndefined (StringDoubleMap)
  }
derive instance newtypeAttributeValue :: Newtype AttributeValue _
derive instance repGenericAttributeValue :: Generic AttributeValue _
instance showAttributeValue :: Show AttributeValue where show = genericShow
instance decodeAttributeValue :: Decode AttributeValue where decode = genericDecode options
instance encodeAttributeValue :: Encode AttributeValue where encode = genericEncode options

-- | Constructs AttributeValue from required parameters
newAttributeValue :: AttributeValue
newAttributeValue  = AttributeValue { "N": (NullOrUndefined Nothing), "S": (NullOrUndefined Nothing), "SDM": (NullOrUndefined Nothing), "SL": (NullOrUndefined Nothing) }

-- | Constructs AttributeValue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttributeValue' :: ( { "S" :: NullOrUndefined (NonZeroAndMaxString) , "N" :: NullOrUndefined (DoubleObject) , "SL" :: NullOrUndefined (StringList) , "SDM" :: NullOrUndefined (StringDoubleMap) } -> {"S" :: NullOrUndefined (NonZeroAndMaxString) , "N" :: NullOrUndefined (DoubleObject) , "SL" :: NullOrUndefined (StringList) , "SDM" :: NullOrUndefined (StringDoubleMap) } ) -> AttributeValue
newAttributeValue'  customize = (AttributeValue <<< customize) { "N": (NullOrUndefined Nothing), "S": (NullOrUndefined Nothing), "SDM": (NullOrUndefined Nothing), "SL": (NullOrUndefined Nothing) }



-- | <p>Temporary access credentials used for uploading game build files to Amazon GameLift. They are valid for a limited time. If they expire before you upload your game build, get a new set by calling <a>RequestUploadCredentials</a>.</p>
newtype AwsCredentials = AwsCredentials 
  { "AccessKeyId" :: NullOrUndefined (NonEmptyString)
  , "SecretAccessKey" :: NullOrUndefined (NonEmptyString)
  , "SessionToken" :: NullOrUndefined (NonEmptyString)
  }
derive instance newtypeAwsCredentials :: Newtype AwsCredentials _
derive instance repGenericAwsCredentials :: Generic AwsCredentials _
instance showAwsCredentials :: Show AwsCredentials where show = genericShow
instance decodeAwsCredentials :: Decode AwsCredentials where decode = genericDecode options
instance encodeAwsCredentials :: Encode AwsCredentials where encode = genericEncode options

-- | Constructs AwsCredentials from required parameters
newAwsCredentials :: AwsCredentials
newAwsCredentials  = AwsCredentials { "AccessKeyId": (NullOrUndefined Nothing), "SecretAccessKey": (NullOrUndefined Nothing), "SessionToken": (NullOrUndefined Nothing) }

-- | Constructs AwsCredentials's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAwsCredentials' :: ( { "AccessKeyId" :: NullOrUndefined (NonEmptyString) , "SecretAccessKey" :: NullOrUndefined (NonEmptyString) , "SessionToken" :: NullOrUndefined (NonEmptyString) } -> {"AccessKeyId" :: NullOrUndefined (NonEmptyString) , "SecretAccessKey" :: NullOrUndefined (NonEmptyString) , "SessionToken" :: NullOrUndefined (NonEmptyString) } ) -> AwsCredentials
newAwsCredentials'  customize = (AwsCredentials <<< customize) { "AccessKeyId": (NullOrUndefined Nothing), "SecretAccessKey": (NullOrUndefined Nothing), "SessionToken": (NullOrUndefined Nothing) }



newtype BooleanModel = BooleanModel Boolean
derive instance newtypeBooleanModel :: Newtype BooleanModel _
derive instance repGenericBooleanModel :: Generic BooleanModel _
instance showBooleanModel :: Show BooleanModel where show = genericShow
instance decodeBooleanModel :: Decode BooleanModel where decode = genericDecode options
instance encodeBooleanModel :: Encode BooleanModel where encode = genericEncode options



-- | <p>Properties describing a game build.</p> <p>Build-related operations include:</p> <ul> <li> <p> <a>CreateBuild</a> </p> </li> <li> <p> <a>ListBuilds</a> </p> </li> <li> <p> <a>DescribeBuild</a> </p> </li> <li> <p> <a>UpdateBuild</a> </p> </li> <li> <p> <a>DeleteBuild</a> </p> </li> </ul>
newtype Build = Build 
  { "BuildId" :: NullOrUndefined (BuildId)
  , "Name" :: NullOrUndefined (FreeText)
  , "Version" :: NullOrUndefined (FreeText)
  , "Status" :: NullOrUndefined (BuildStatus)
  , "SizeOnDisk" :: NullOrUndefined (PositiveLong)
  , "OperatingSystem" :: NullOrUndefined (OperatingSystem)
  , "CreationTime" :: NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeBuild :: Newtype Build _
derive instance repGenericBuild :: Generic Build _
instance showBuild :: Show Build where show = genericShow
instance decodeBuild :: Decode Build where decode = genericDecode options
instance encodeBuild :: Encode Build where encode = genericEncode options

-- | Constructs Build from required parameters
newBuild :: Build
newBuild  = Build { "BuildId": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "OperatingSystem": (NullOrUndefined Nothing), "SizeOnDisk": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }

-- | Constructs Build's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBuild' :: ( { "BuildId" :: NullOrUndefined (BuildId) , "Name" :: NullOrUndefined (FreeText) , "Version" :: NullOrUndefined (FreeText) , "Status" :: NullOrUndefined (BuildStatus) , "SizeOnDisk" :: NullOrUndefined (PositiveLong) , "OperatingSystem" :: NullOrUndefined (OperatingSystem) , "CreationTime" :: NullOrUndefined (Types.Timestamp) } -> {"BuildId" :: NullOrUndefined (BuildId) , "Name" :: NullOrUndefined (FreeText) , "Version" :: NullOrUndefined (FreeText) , "Status" :: NullOrUndefined (BuildStatus) , "SizeOnDisk" :: NullOrUndefined (PositiveLong) , "OperatingSystem" :: NullOrUndefined (OperatingSystem) , "CreationTime" :: NullOrUndefined (Types.Timestamp) } ) -> Build
newBuild'  customize = (Build <<< customize) { "BuildId": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "OperatingSystem": (NullOrUndefined Nothing), "SizeOnDisk": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }



newtype BuildId = BuildId String
derive instance newtypeBuildId :: Newtype BuildId _
derive instance repGenericBuildId :: Generic BuildId _
instance showBuildId :: Show BuildId where show = genericShow
instance decodeBuildId :: Decode BuildId where decode = genericDecode options
instance encodeBuildId :: Encode BuildId where encode = genericEncode options



newtype BuildList = BuildList (Array Build)
derive instance newtypeBuildList :: Newtype BuildList _
derive instance repGenericBuildList :: Generic BuildList _
instance showBuildList :: Show BuildList where show = genericShow
instance decodeBuildList :: Decode BuildList where decode = genericDecode options
instance encodeBuildList :: Encode BuildList where encode = genericEncode options



newtype BuildStatus = BuildStatus String
derive instance newtypeBuildStatus :: Newtype BuildStatus _
derive instance repGenericBuildStatus :: Generic BuildStatus _
instance showBuildStatus :: Show BuildStatus where show = genericShow
instance decodeBuildStatus :: Decode BuildStatus where decode = genericDecode options
instance encodeBuildStatus :: Encode BuildStatus where encode = genericEncode options



newtype ComparisonOperatorType = ComparisonOperatorType String
derive instance newtypeComparisonOperatorType :: Newtype ComparisonOperatorType _
derive instance repGenericComparisonOperatorType :: Generic ComparisonOperatorType _
instance showComparisonOperatorType :: Show ComparisonOperatorType where show = genericShow
instance decodeComparisonOperatorType :: Decode ComparisonOperatorType where decode = genericDecode options
instance encodeComparisonOperatorType :: Encode ComparisonOperatorType where encode = genericEncode options



-- | <p>The requested operation would cause a conflict with the current state of a service resource associated with the request. Resolve the conflict before retrying this request.</p>
newtype ConflictException = ConflictException 
  { "Message" :: NullOrUndefined (NonEmptyString)
  }
derive instance newtypeConflictException :: Newtype ConflictException _
derive instance repGenericConflictException :: Generic ConflictException _
instance showConflictException :: Show ConflictException where show = genericShow
instance decodeConflictException :: Decode ConflictException where decode = genericDecode options
instance encodeConflictException :: Encode ConflictException where encode = genericEncode options

-- | Constructs ConflictException from required parameters
newConflictException :: ConflictException
newConflictException  = ConflictException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ConflictException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConflictException' :: ( { "Message" :: NullOrUndefined (NonEmptyString) } -> {"Message" :: NullOrUndefined (NonEmptyString) } ) -> ConflictException
newConflictException'  customize = (ConflictException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype CreateAliasInput = CreateAliasInput 
  { "Name" :: (NonBlankAndLengthConstraintString)
  , "Description" :: NullOrUndefined (NonZeroAndMaxString)
  , "RoutingStrategy" :: (RoutingStrategy)
  }
derive instance newtypeCreateAliasInput :: Newtype CreateAliasInput _
derive instance repGenericCreateAliasInput :: Generic CreateAliasInput _
instance showCreateAliasInput :: Show CreateAliasInput where show = genericShow
instance decodeCreateAliasInput :: Decode CreateAliasInput where decode = genericDecode options
instance encodeCreateAliasInput :: Encode CreateAliasInput where encode = genericEncode options

-- | Constructs CreateAliasInput from required parameters
newCreateAliasInput :: NonBlankAndLengthConstraintString -> RoutingStrategy -> CreateAliasInput
newCreateAliasInput _Name _RoutingStrategy = CreateAliasInput { "Name": _Name, "RoutingStrategy": _RoutingStrategy, "Description": (NullOrUndefined Nothing) }

-- | Constructs CreateAliasInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAliasInput' :: NonBlankAndLengthConstraintString -> RoutingStrategy -> ( { "Name" :: (NonBlankAndLengthConstraintString) , "Description" :: NullOrUndefined (NonZeroAndMaxString) , "RoutingStrategy" :: (RoutingStrategy) } -> {"Name" :: (NonBlankAndLengthConstraintString) , "Description" :: NullOrUndefined (NonZeroAndMaxString) , "RoutingStrategy" :: (RoutingStrategy) } ) -> CreateAliasInput
newCreateAliasInput' _Name _RoutingStrategy customize = (CreateAliasInput <<< customize) { "Name": _Name, "RoutingStrategy": _RoutingStrategy, "Description": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype CreateAliasOutput = CreateAliasOutput 
  { "Alias" :: NullOrUndefined (Alias)
  }
derive instance newtypeCreateAliasOutput :: Newtype CreateAliasOutput _
derive instance repGenericCreateAliasOutput :: Generic CreateAliasOutput _
instance showCreateAliasOutput :: Show CreateAliasOutput where show = genericShow
instance decodeCreateAliasOutput :: Decode CreateAliasOutput where decode = genericDecode options
instance encodeCreateAliasOutput :: Encode CreateAliasOutput where encode = genericEncode options

-- | Constructs CreateAliasOutput from required parameters
newCreateAliasOutput :: CreateAliasOutput
newCreateAliasOutput  = CreateAliasOutput { "Alias": (NullOrUndefined Nothing) }

-- | Constructs CreateAliasOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAliasOutput' :: ( { "Alias" :: NullOrUndefined (Alias) } -> {"Alias" :: NullOrUndefined (Alias) } ) -> CreateAliasOutput
newCreateAliasOutput'  customize = (CreateAliasOutput <<< customize) { "Alias": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype CreateBuildInput = CreateBuildInput 
  { "Name" :: NullOrUndefined (NonZeroAndMaxString)
  , "Version" :: NullOrUndefined (NonZeroAndMaxString)
  , "StorageLocation" :: NullOrUndefined (S3Location)
  , "OperatingSystem" :: NullOrUndefined (OperatingSystem)
  }
derive instance newtypeCreateBuildInput :: Newtype CreateBuildInput _
derive instance repGenericCreateBuildInput :: Generic CreateBuildInput _
instance showCreateBuildInput :: Show CreateBuildInput where show = genericShow
instance decodeCreateBuildInput :: Decode CreateBuildInput where decode = genericDecode options
instance encodeCreateBuildInput :: Encode CreateBuildInput where encode = genericEncode options

-- | Constructs CreateBuildInput from required parameters
newCreateBuildInput :: CreateBuildInput
newCreateBuildInput  = CreateBuildInput { "Name": (NullOrUndefined Nothing), "OperatingSystem": (NullOrUndefined Nothing), "StorageLocation": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }

-- | Constructs CreateBuildInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateBuildInput' :: ( { "Name" :: NullOrUndefined (NonZeroAndMaxString) , "Version" :: NullOrUndefined (NonZeroAndMaxString) , "StorageLocation" :: NullOrUndefined (S3Location) , "OperatingSystem" :: NullOrUndefined (OperatingSystem) } -> {"Name" :: NullOrUndefined (NonZeroAndMaxString) , "Version" :: NullOrUndefined (NonZeroAndMaxString) , "StorageLocation" :: NullOrUndefined (S3Location) , "OperatingSystem" :: NullOrUndefined (OperatingSystem) } ) -> CreateBuildInput
newCreateBuildInput'  customize = (CreateBuildInput <<< customize) { "Name": (NullOrUndefined Nothing), "OperatingSystem": (NullOrUndefined Nothing), "StorageLocation": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype CreateBuildOutput = CreateBuildOutput 
  { "Build" :: NullOrUndefined (Build)
  , "UploadCredentials" :: NullOrUndefined (AwsCredentials)
  , "StorageLocation" :: NullOrUndefined (S3Location)
  }
derive instance newtypeCreateBuildOutput :: Newtype CreateBuildOutput _
derive instance repGenericCreateBuildOutput :: Generic CreateBuildOutput _
instance showCreateBuildOutput :: Show CreateBuildOutput where show = genericShow
instance decodeCreateBuildOutput :: Decode CreateBuildOutput where decode = genericDecode options
instance encodeCreateBuildOutput :: Encode CreateBuildOutput where encode = genericEncode options

-- | Constructs CreateBuildOutput from required parameters
newCreateBuildOutput :: CreateBuildOutput
newCreateBuildOutput  = CreateBuildOutput { "Build": (NullOrUndefined Nothing), "StorageLocation": (NullOrUndefined Nothing), "UploadCredentials": (NullOrUndefined Nothing) }

-- | Constructs CreateBuildOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateBuildOutput' :: ( { "Build" :: NullOrUndefined (Build) , "UploadCredentials" :: NullOrUndefined (AwsCredentials) , "StorageLocation" :: NullOrUndefined (S3Location) } -> {"Build" :: NullOrUndefined (Build) , "UploadCredentials" :: NullOrUndefined (AwsCredentials) , "StorageLocation" :: NullOrUndefined (S3Location) } ) -> CreateBuildOutput
newCreateBuildOutput'  customize = (CreateBuildOutput <<< customize) { "Build": (NullOrUndefined Nothing), "StorageLocation": (NullOrUndefined Nothing), "UploadCredentials": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype CreateFleetInput = CreateFleetInput 
  { "Name" :: (NonZeroAndMaxString)
  , "Description" :: NullOrUndefined (NonZeroAndMaxString)
  , "BuildId" :: (BuildId)
  , "ServerLaunchPath" :: NullOrUndefined (NonZeroAndMaxString)
  , "ServerLaunchParameters" :: NullOrUndefined (NonZeroAndMaxString)
  , "LogPaths" :: NullOrUndefined (StringList)
  , "EC2InstanceType" :: (EC2InstanceType)
  , "EC2InboundPermissions" :: NullOrUndefined (IpPermissionsList)
  , "NewGameSessionProtectionPolicy" :: NullOrUndefined (ProtectionPolicy)
  , "RuntimeConfiguration" :: NullOrUndefined (RuntimeConfiguration)
  , "ResourceCreationLimitPolicy" :: NullOrUndefined (ResourceCreationLimitPolicy)
  , "MetricGroups" :: NullOrUndefined (MetricGroupList)
  , "PeerVpcAwsAccountId" :: NullOrUndefined (NonZeroAndMaxString)
  , "PeerVpcId" :: NullOrUndefined (NonZeroAndMaxString)
  , "FleetType" :: NullOrUndefined (FleetType)
  }
derive instance newtypeCreateFleetInput :: Newtype CreateFleetInput _
derive instance repGenericCreateFleetInput :: Generic CreateFleetInput _
instance showCreateFleetInput :: Show CreateFleetInput where show = genericShow
instance decodeCreateFleetInput :: Decode CreateFleetInput where decode = genericDecode options
instance encodeCreateFleetInput :: Encode CreateFleetInput where encode = genericEncode options

-- | Constructs CreateFleetInput from required parameters
newCreateFleetInput :: BuildId -> EC2InstanceType -> NonZeroAndMaxString -> CreateFleetInput
newCreateFleetInput _BuildId _EC2InstanceType _Name = CreateFleetInput { "BuildId": _BuildId, "EC2InstanceType": _EC2InstanceType, "Name": _Name, "Description": (NullOrUndefined Nothing), "EC2InboundPermissions": (NullOrUndefined Nothing), "FleetType": (NullOrUndefined Nothing), "LogPaths": (NullOrUndefined Nothing), "MetricGroups": (NullOrUndefined Nothing), "NewGameSessionProtectionPolicy": (NullOrUndefined Nothing), "PeerVpcAwsAccountId": (NullOrUndefined Nothing), "PeerVpcId": (NullOrUndefined Nothing), "ResourceCreationLimitPolicy": (NullOrUndefined Nothing), "RuntimeConfiguration": (NullOrUndefined Nothing), "ServerLaunchParameters": (NullOrUndefined Nothing), "ServerLaunchPath": (NullOrUndefined Nothing) }

-- | Constructs CreateFleetInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateFleetInput' :: BuildId -> EC2InstanceType -> NonZeroAndMaxString -> ( { "Name" :: (NonZeroAndMaxString) , "Description" :: NullOrUndefined (NonZeroAndMaxString) , "BuildId" :: (BuildId) , "ServerLaunchPath" :: NullOrUndefined (NonZeroAndMaxString) , "ServerLaunchParameters" :: NullOrUndefined (NonZeroAndMaxString) , "LogPaths" :: NullOrUndefined (StringList) , "EC2InstanceType" :: (EC2InstanceType) , "EC2InboundPermissions" :: NullOrUndefined (IpPermissionsList) , "NewGameSessionProtectionPolicy" :: NullOrUndefined (ProtectionPolicy) , "RuntimeConfiguration" :: NullOrUndefined (RuntimeConfiguration) , "ResourceCreationLimitPolicy" :: NullOrUndefined (ResourceCreationLimitPolicy) , "MetricGroups" :: NullOrUndefined (MetricGroupList) , "PeerVpcAwsAccountId" :: NullOrUndefined (NonZeroAndMaxString) , "PeerVpcId" :: NullOrUndefined (NonZeroAndMaxString) , "FleetType" :: NullOrUndefined (FleetType) } -> {"Name" :: (NonZeroAndMaxString) , "Description" :: NullOrUndefined (NonZeroAndMaxString) , "BuildId" :: (BuildId) , "ServerLaunchPath" :: NullOrUndefined (NonZeroAndMaxString) , "ServerLaunchParameters" :: NullOrUndefined (NonZeroAndMaxString) , "LogPaths" :: NullOrUndefined (StringList) , "EC2InstanceType" :: (EC2InstanceType) , "EC2InboundPermissions" :: NullOrUndefined (IpPermissionsList) , "NewGameSessionProtectionPolicy" :: NullOrUndefined (ProtectionPolicy) , "RuntimeConfiguration" :: NullOrUndefined (RuntimeConfiguration) , "ResourceCreationLimitPolicy" :: NullOrUndefined (ResourceCreationLimitPolicy) , "MetricGroups" :: NullOrUndefined (MetricGroupList) , "PeerVpcAwsAccountId" :: NullOrUndefined (NonZeroAndMaxString) , "PeerVpcId" :: NullOrUndefined (NonZeroAndMaxString) , "FleetType" :: NullOrUndefined (FleetType) } ) -> CreateFleetInput
newCreateFleetInput' _BuildId _EC2InstanceType _Name customize = (CreateFleetInput <<< customize) { "BuildId": _BuildId, "EC2InstanceType": _EC2InstanceType, "Name": _Name, "Description": (NullOrUndefined Nothing), "EC2InboundPermissions": (NullOrUndefined Nothing), "FleetType": (NullOrUndefined Nothing), "LogPaths": (NullOrUndefined Nothing), "MetricGroups": (NullOrUndefined Nothing), "NewGameSessionProtectionPolicy": (NullOrUndefined Nothing), "PeerVpcAwsAccountId": (NullOrUndefined Nothing), "PeerVpcId": (NullOrUndefined Nothing), "ResourceCreationLimitPolicy": (NullOrUndefined Nothing), "RuntimeConfiguration": (NullOrUndefined Nothing), "ServerLaunchParameters": (NullOrUndefined Nothing), "ServerLaunchPath": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype CreateFleetOutput = CreateFleetOutput 
  { "FleetAttributes" :: NullOrUndefined (FleetAttributes)
  }
derive instance newtypeCreateFleetOutput :: Newtype CreateFleetOutput _
derive instance repGenericCreateFleetOutput :: Generic CreateFleetOutput _
instance showCreateFleetOutput :: Show CreateFleetOutput where show = genericShow
instance decodeCreateFleetOutput :: Decode CreateFleetOutput where decode = genericDecode options
instance encodeCreateFleetOutput :: Encode CreateFleetOutput where encode = genericEncode options

-- | Constructs CreateFleetOutput from required parameters
newCreateFleetOutput :: CreateFleetOutput
newCreateFleetOutput  = CreateFleetOutput { "FleetAttributes": (NullOrUndefined Nothing) }

-- | Constructs CreateFleetOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateFleetOutput' :: ( { "FleetAttributes" :: NullOrUndefined (FleetAttributes) } -> {"FleetAttributes" :: NullOrUndefined (FleetAttributes) } ) -> CreateFleetOutput
newCreateFleetOutput'  customize = (CreateFleetOutput <<< customize) { "FleetAttributes": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype CreateGameSessionInput = CreateGameSessionInput 
  { "FleetId" :: NullOrUndefined (FleetId)
  , "AliasId" :: NullOrUndefined (AliasId)
  , "MaximumPlayerSessionCount" :: (WholeNumber)
  , "Name" :: NullOrUndefined (NonZeroAndMaxString)
  , "GameProperties" :: NullOrUndefined (GamePropertyList)
  , "CreatorId" :: NullOrUndefined (NonZeroAndMaxString)
  , "GameSessionId" :: NullOrUndefined (IdStringModel)
  , "IdempotencyToken" :: NullOrUndefined (IdStringModel)
  , "GameSessionData" :: NullOrUndefined (GameSessionData)
  }
derive instance newtypeCreateGameSessionInput :: Newtype CreateGameSessionInput _
derive instance repGenericCreateGameSessionInput :: Generic CreateGameSessionInput _
instance showCreateGameSessionInput :: Show CreateGameSessionInput where show = genericShow
instance decodeCreateGameSessionInput :: Decode CreateGameSessionInput where decode = genericDecode options
instance encodeCreateGameSessionInput :: Encode CreateGameSessionInput where encode = genericEncode options

-- | Constructs CreateGameSessionInput from required parameters
newCreateGameSessionInput :: WholeNumber -> CreateGameSessionInput
newCreateGameSessionInput _MaximumPlayerSessionCount = CreateGameSessionInput { "MaximumPlayerSessionCount": _MaximumPlayerSessionCount, "AliasId": (NullOrUndefined Nothing), "CreatorId": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "GameProperties": (NullOrUndefined Nothing), "GameSessionData": (NullOrUndefined Nothing), "GameSessionId": (NullOrUndefined Nothing), "IdempotencyToken": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }

-- | Constructs CreateGameSessionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGameSessionInput' :: WholeNumber -> ( { "FleetId" :: NullOrUndefined (FleetId) , "AliasId" :: NullOrUndefined (AliasId) , "MaximumPlayerSessionCount" :: (WholeNumber) , "Name" :: NullOrUndefined (NonZeroAndMaxString) , "GameProperties" :: NullOrUndefined (GamePropertyList) , "CreatorId" :: NullOrUndefined (NonZeroAndMaxString) , "GameSessionId" :: NullOrUndefined (IdStringModel) , "IdempotencyToken" :: NullOrUndefined (IdStringModel) , "GameSessionData" :: NullOrUndefined (GameSessionData) } -> {"FleetId" :: NullOrUndefined (FleetId) , "AliasId" :: NullOrUndefined (AliasId) , "MaximumPlayerSessionCount" :: (WholeNumber) , "Name" :: NullOrUndefined (NonZeroAndMaxString) , "GameProperties" :: NullOrUndefined (GamePropertyList) , "CreatorId" :: NullOrUndefined (NonZeroAndMaxString) , "GameSessionId" :: NullOrUndefined (IdStringModel) , "IdempotencyToken" :: NullOrUndefined (IdStringModel) , "GameSessionData" :: NullOrUndefined (GameSessionData) } ) -> CreateGameSessionInput
newCreateGameSessionInput' _MaximumPlayerSessionCount customize = (CreateGameSessionInput <<< customize) { "MaximumPlayerSessionCount": _MaximumPlayerSessionCount, "AliasId": (NullOrUndefined Nothing), "CreatorId": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "GameProperties": (NullOrUndefined Nothing), "GameSessionData": (NullOrUndefined Nothing), "GameSessionId": (NullOrUndefined Nothing), "IdempotencyToken": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype CreateGameSessionOutput = CreateGameSessionOutput 
  { "GameSession" :: NullOrUndefined (GameSession)
  }
derive instance newtypeCreateGameSessionOutput :: Newtype CreateGameSessionOutput _
derive instance repGenericCreateGameSessionOutput :: Generic CreateGameSessionOutput _
instance showCreateGameSessionOutput :: Show CreateGameSessionOutput where show = genericShow
instance decodeCreateGameSessionOutput :: Decode CreateGameSessionOutput where decode = genericDecode options
instance encodeCreateGameSessionOutput :: Encode CreateGameSessionOutput where encode = genericEncode options

-- | Constructs CreateGameSessionOutput from required parameters
newCreateGameSessionOutput :: CreateGameSessionOutput
newCreateGameSessionOutput  = CreateGameSessionOutput { "GameSession": (NullOrUndefined Nothing) }

-- | Constructs CreateGameSessionOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGameSessionOutput' :: ( { "GameSession" :: NullOrUndefined (GameSession) } -> {"GameSession" :: NullOrUndefined (GameSession) } ) -> CreateGameSessionOutput
newCreateGameSessionOutput'  customize = (CreateGameSessionOutput <<< customize) { "GameSession": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype CreateGameSessionQueueInput = CreateGameSessionQueueInput 
  { "Name" :: (GameSessionQueueName)
  , "TimeoutInSeconds" :: NullOrUndefined (WholeNumber)
  , "PlayerLatencyPolicies" :: NullOrUndefined (PlayerLatencyPolicyList)
  , "Destinations" :: NullOrUndefined (GameSessionQueueDestinationList)
  }
derive instance newtypeCreateGameSessionQueueInput :: Newtype CreateGameSessionQueueInput _
derive instance repGenericCreateGameSessionQueueInput :: Generic CreateGameSessionQueueInput _
instance showCreateGameSessionQueueInput :: Show CreateGameSessionQueueInput where show = genericShow
instance decodeCreateGameSessionQueueInput :: Decode CreateGameSessionQueueInput where decode = genericDecode options
instance encodeCreateGameSessionQueueInput :: Encode CreateGameSessionQueueInput where encode = genericEncode options

-- | Constructs CreateGameSessionQueueInput from required parameters
newCreateGameSessionQueueInput :: GameSessionQueueName -> CreateGameSessionQueueInput
newCreateGameSessionQueueInput _Name = CreateGameSessionQueueInput { "Name": _Name, "Destinations": (NullOrUndefined Nothing), "PlayerLatencyPolicies": (NullOrUndefined Nothing), "TimeoutInSeconds": (NullOrUndefined Nothing) }

-- | Constructs CreateGameSessionQueueInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGameSessionQueueInput' :: GameSessionQueueName -> ( { "Name" :: (GameSessionQueueName) , "TimeoutInSeconds" :: NullOrUndefined (WholeNumber) , "PlayerLatencyPolicies" :: NullOrUndefined (PlayerLatencyPolicyList) , "Destinations" :: NullOrUndefined (GameSessionQueueDestinationList) } -> {"Name" :: (GameSessionQueueName) , "TimeoutInSeconds" :: NullOrUndefined (WholeNumber) , "PlayerLatencyPolicies" :: NullOrUndefined (PlayerLatencyPolicyList) , "Destinations" :: NullOrUndefined (GameSessionQueueDestinationList) } ) -> CreateGameSessionQueueInput
newCreateGameSessionQueueInput' _Name customize = (CreateGameSessionQueueInput <<< customize) { "Name": _Name, "Destinations": (NullOrUndefined Nothing), "PlayerLatencyPolicies": (NullOrUndefined Nothing), "TimeoutInSeconds": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype CreateGameSessionQueueOutput = CreateGameSessionQueueOutput 
  { "GameSessionQueue" :: NullOrUndefined (GameSessionQueue)
  }
derive instance newtypeCreateGameSessionQueueOutput :: Newtype CreateGameSessionQueueOutput _
derive instance repGenericCreateGameSessionQueueOutput :: Generic CreateGameSessionQueueOutput _
instance showCreateGameSessionQueueOutput :: Show CreateGameSessionQueueOutput where show = genericShow
instance decodeCreateGameSessionQueueOutput :: Decode CreateGameSessionQueueOutput where decode = genericDecode options
instance encodeCreateGameSessionQueueOutput :: Encode CreateGameSessionQueueOutput where encode = genericEncode options

-- | Constructs CreateGameSessionQueueOutput from required parameters
newCreateGameSessionQueueOutput :: CreateGameSessionQueueOutput
newCreateGameSessionQueueOutput  = CreateGameSessionQueueOutput { "GameSessionQueue": (NullOrUndefined Nothing) }

-- | Constructs CreateGameSessionQueueOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGameSessionQueueOutput' :: ( { "GameSessionQueue" :: NullOrUndefined (GameSessionQueue) } -> {"GameSessionQueue" :: NullOrUndefined (GameSessionQueue) } ) -> CreateGameSessionQueueOutput
newCreateGameSessionQueueOutput'  customize = (CreateGameSessionQueueOutput <<< customize) { "GameSessionQueue": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype CreateMatchmakingConfigurationInput = CreateMatchmakingConfigurationInput 
  { "Name" :: (MatchmakingIdStringModel)
  , "Description" :: NullOrUndefined (NonZeroAndMaxString)
  , "GameSessionQueueArns" :: (QueueArnsList)
  , "RequestTimeoutSeconds" :: (MatchmakingRequestTimeoutInteger)
  , "AcceptanceTimeoutSeconds" :: NullOrUndefined (MatchmakingAcceptanceTimeoutInteger)
  , "AcceptanceRequired" :: (BooleanModel)
  , "RuleSetName" :: (MatchmakingIdStringModel)
  , "NotificationTarget" :: NullOrUndefined (SnsArnStringModel)
  , "AdditionalPlayerCount" :: NullOrUndefined (WholeNumber)
  , "CustomEventData" :: NullOrUndefined (CustomEventData)
  , "GameProperties" :: NullOrUndefined (GamePropertyList)
  , "GameSessionData" :: NullOrUndefined (GameSessionData)
  }
derive instance newtypeCreateMatchmakingConfigurationInput :: Newtype CreateMatchmakingConfigurationInput _
derive instance repGenericCreateMatchmakingConfigurationInput :: Generic CreateMatchmakingConfigurationInput _
instance showCreateMatchmakingConfigurationInput :: Show CreateMatchmakingConfigurationInput where show = genericShow
instance decodeCreateMatchmakingConfigurationInput :: Decode CreateMatchmakingConfigurationInput where decode = genericDecode options
instance encodeCreateMatchmakingConfigurationInput :: Encode CreateMatchmakingConfigurationInput where encode = genericEncode options

-- | Constructs CreateMatchmakingConfigurationInput from required parameters
newCreateMatchmakingConfigurationInput :: BooleanModel -> QueueArnsList -> MatchmakingIdStringModel -> MatchmakingRequestTimeoutInteger -> MatchmakingIdStringModel -> CreateMatchmakingConfigurationInput
newCreateMatchmakingConfigurationInput _AcceptanceRequired _GameSessionQueueArns _Name _RequestTimeoutSeconds _RuleSetName = CreateMatchmakingConfigurationInput { "AcceptanceRequired": _AcceptanceRequired, "GameSessionQueueArns": _GameSessionQueueArns, "Name": _Name, "RequestTimeoutSeconds": _RequestTimeoutSeconds, "RuleSetName": _RuleSetName, "AcceptanceTimeoutSeconds": (NullOrUndefined Nothing), "AdditionalPlayerCount": (NullOrUndefined Nothing), "CustomEventData": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "GameProperties": (NullOrUndefined Nothing), "GameSessionData": (NullOrUndefined Nothing), "NotificationTarget": (NullOrUndefined Nothing) }

-- | Constructs CreateMatchmakingConfigurationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateMatchmakingConfigurationInput' :: BooleanModel -> QueueArnsList -> MatchmakingIdStringModel -> MatchmakingRequestTimeoutInteger -> MatchmakingIdStringModel -> ( { "Name" :: (MatchmakingIdStringModel) , "Description" :: NullOrUndefined (NonZeroAndMaxString) , "GameSessionQueueArns" :: (QueueArnsList) , "RequestTimeoutSeconds" :: (MatchmakingRequestTimeoutInteger) , "AcceptanceTimeoutSeconds" :: NullOrUndefined (MatchmakingAcceptanceTimeoutInteger) , "AcceptanceRequired" :: (BooleanModel) , "RuleSetName" :: (MatchmakingIdStringModel) , "NotificationTarget" :: NullOrUndefined (SnsArnStringModel) , "AdditionalPlayerCount" :: NullOrUndefined (WholeNumber) , "CustomEventData" :: NullOrUndefined (CustomEventData) , "GameProperties" :: NullOrUndefined (GamePropertyList) , "GameSessionData" :: NullOrUndefined (GameSessionData) } -> {"Name" :: (MatchmakingIdStringModel) , "Description" :: NullOrUndefined (NonZeroAndMaxString) , "GameSessionQueueArns" :: (QueueArnsList) , "RequestTimeoutSeconds" :: (MatchmakingRequestTimeoutInteger) , "AcceptanceTimeoutSeconds" :: NullOrUndefined (MatchmakingAcceptanceTimeoutInteger) , "AcceptanceRequired" :: (BooleanModel) , "RuleSetName" :: (MatchmakingIdStringModel) , "NotificationTarget" :: NullOrUndefined (SnsArnStringModel) , "AdditionalPlayerCount" :: NullOrUndefined (WholeNumber) , "CustomEventData" :: NullOrUndefined (CustomEventData) , "GameProperties" :: NullOrUndefined (GamePropertyList) , "GameSessionData" :: NullOrUndefined (GameSessionData) } ) -> CreateMatchmakingConfigurationInput
newCreateMatchmakingConfigurationInput' _AcceptanceRequired _GameSessionQueueArns _Name _RequestTimeoutSeconds _RuleSetName customize = (CreateMatchmakingConfigurationInput <<< customize) { "AcceptanceRequired": _AcceptanceRequired, "GameSessionQueueArns": _GameSessionQueueArns, "Name": _Name, "RequestTimeoutSeconds": _RequestTimeoutSeconds, "RuleSetName": _RuleSetName, "AcceptanceTimeoutSeconds": (NullOrUndefined Nothing), "AdditionalPlayerCount": (NullOrUndefined Nothing), "CustomEventData": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "GameProperties": (NullOrUndefined Nothing), "GameSessionData": (NullOrUndefined Nothing), "NotificationTarget": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype CreateMatchmakingConfigurationOutput = CreateMatchmakingConfigurationOutput 
  { "Configuration" :: NullOrUndefined (MatchmakingConfiguration)
  }
derive instance newtypeCreateMatchmakingConfigurationOutput :: Newtype CreateMatchmakingConfigurationOutput _
derive instance repGenericCreateMatchmakingConfigurationOutput :: Generic CreateMatchmakingConfigurationOutput _
instance showCreateMatchmakingConfigurationOutput :: Show CreateMatchmakingConfigurationOutput where show = genericShow
instance decodeCreateMatchmakingConfigurationOutput :: Decode CreateMatchmakingConfigurationOutput where decode = genericDecode options
instance encodeCreateMatchmakingConfigurationOutput :: Encode CreateMatchmakingConfigurationOutput where encode = genericEncode options

-- | Constructs CreateMatchmakingConfigurationOutput from required parameters
newCreateMatchmakingConfigurationOutput :: CreateMatchmakingConfigurationOutput
newCreateMatchmakingConfigurationOutput  = CreateMatchmakingConfigurationOutput { "Configuration": (NullOrUndefined Nothing) }

-- | Constructs CreateMatchmakingConfigurationOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateMatchmakingConfigurationOutput' :: ( { "Configuration" :: NullOrUndefined (MatchmakingConfiguration) } -> {"Configuration" :: NullOrUndefined (MatchmakingConfiguration) } ) -> CreateMatchmakingConfigurationOutput
newCreateMatchmakingConfigurationOutput'  customize = (CreateMatchmakingConfigurationOutput <<< customize) { "Configuration": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype CreateMatchmakingRuleSetInput = CreateMatchmakingRuleSetInput 
  { "Name" :: (MatchmakingIdStringModel)
  , "RuleSetBody" :: (RuleSetBody)
  }
derive instance newtypeCreateMatchmakingRuleSetInput :: Newtype CreateMatchmakingRuleSetInput _
derive instance repGenericCreateMatchmakingRuleSetInput :: Generic CreateMatchmakingRuleSetInput _
instance showCreateMatchmakingRuleSetInput :: Show CreateMatchmakingRuleSetInput where show = genericShow
instance decodeCreateMatchmakingRuleSetInput :: Decode CreateMatchmakingRuleSetInput where decode = genericDecode options
instance encodeCreateMatchmakingRuleSetInput :: Encode CreateMatchmakingRuleSetInput where encode = genericEncode options

-- | Constructs CreateMatchmakingRuleSetInput from required parameters
newCreateMatchmakingRuleSetInput :: MatchmakingIdStringModel -> RuleSetBody -> CreateMatchmakingRuleSetInput
newCreateMatchmakingRuleSetInput _Name _RuleSetBody = CreateMatchmakingRuleSetInput { "Name": _Name, "RuleSetBody": _RuleSetBody }

-- | Constructs CreateMatchmakingRuleSetInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateMatchmakingRuleSetInput' :: MatchmakingIdStringModel -> RuleSetBody -> ( { "Name" :: (MatchmakingIdStringModel) , "RuleSetBody" :: (RuleSetBody) } -> {"Name" :: (MatchmakingIdStringModel) , "RuleSetBody" :: (RuleSetBody) } ) -> CreateMatchmakingRuleSetInput
newCreateMatchmakingRuleSetInput' _Name _RuleSetBody customize = (CreateMatchmakingRuleSetInput <<< customize) { "Name": _Name, "RuleSetBody": _RuleSetBody }



-- | <p>Represents the returned data in response to a request action.</p>
newtype CreateMatchmakingRuleSetOutput = CreateMatchmakingRuleSetOutput 
  { "RuleSet" :: (MatchmakingRuleSet)
  }
derive instance newtypeCreateMatchmakingRuleSetOutput :: Newtype CreateMatchmakingRuleSetOutput _
derive instance repGenericCreateMatchmakingRuleSetOutput :: Generic CreateMatchmakingRuleSetOutput _
instance showCreateMatchmakingRuleSetOutput :: Show CreateMatchmakingRuleSetOutput where show = genericShow
instance decodeCreateMatchmakingRuleSetOutput :: Decode CreateMatchmakingRuleSetOutput where decode = genericDecode options
instance encodeCreateMatchmakingRuleSetOutput :: Encode CreateMatchmakingRuleSetOutput where encode = genericEncode options

-- | Constructs CreateMatchmakingRuleSetOutput from required parameters
newCreateMatchmakingRuleSetOutput :: MatchmakingRuleSet -> CreateMatchmakingRuleSetOutput
newCreateMatchmakingRuleSetOutput _RuleSet = CreateMatchmakingRuleSetOutput { "RuleSet": _RuleSet }

-- | Constructs CreateMatchmakingRuleSetOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateMatchmakingRuleSetOutput' :: MatchmakingRuleSet -> ( { "RuleSet" :: (MatchmakingRuleSet) } -> {"RuleSet" :: (MatchmakingRuleSet) } ) -> CreateMatchmakingRuleSetOutput
newCreateMatchmakingRuleSetOutput' _RuleSet customize = (CreateMatchmakingRuleSetOutput <<< customize) { "RuleSet": _RuleSet }



-- | <p>Represents the input for a request action.</p>
newtype CreatePlayerSessionInput = CreatePlayerSessionInput 
  { "GameSessionId" :: (ArnStringModel)
  , "PlayerId" :: (NonZeroAndMaxString)
  , "PlayerData" :: NullOrUndefined (PlayerData)
  }
derive instance newtypeCreatePlayerSessionInput :: Newtype CreatePlayerSessionInput _
derive instance repGenericCreatePlayerSessionInput :: Generic CreatePlayerSessionInput _
instance showCreatePlayerSessionInput :: Show CreatePlayerSessionInput where show = genericShow
instance decodeCreatePlayerSessionInput :: Decode CreatePlayerSessionInput where decode = genericDecode options
instance encodeCreatePlayerSessionInput :: Encode CreatePlayerSessionInput where encode = genericEncode options

-- | Constructs CreatePlayerSessionInput from required parameters
newCreatePlayerSessionInput :: ArnStringModel -> NonZeroAndMaxString -> CreatePlayerSessionInput
newCreatePlayerSessionInput _GameSessionId _PlayerId = CreatePlayerSessionInput { "GameSessionId": _GameSessionId, "PlayerId": _PlayerId, "PlayerData": (NullOrUndefined Nothing) }

-- | Constructs CreatePlayerSessionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePlayerSessionInput' :: ArnStringModel -> NonZeroAndMaxString -> ( { "GameSessionId" :: (ArnStringModel) , "PlayerId" :: (NonZeroAndMaxString) , "PlayerData" :: NullOrUndefined (PlayerData) } -> {"GameSessionId" :: (ArnStringModel) , "PlayerId" :: (NonZeroAndMaxString) , "PlayerData" :: NullOrUndefined (PlayerData) } ) -> CreatePlayerSessionInput
newCreatePlayerSessionInput' _GameSessionId _PlayerId customize = (CreatePlayerSessionInput <<< customize) { "GameSessionId": _GameSessionId, "PlayerId": _PlayerId, "PlayerData": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype CreatePlayerSessionOutput = CreatePlayerSessionOutput 
  { "PlayerSession" :: NullOrUndefined (PlayerSession)
  }
derive instance newtypeCreatePlayerSessionOutput :: Newtype CreatePlayerSessionOutput _
derive instance repGenericCreatePlayerSessionOutput :: Generic CreatePlayerSessionOutput _
instance showCreatePlayerSessionOutput :: Show CreatePlayerSessionOutput where show = genericShow
instance decodeCreatePlayerSessionOutput :: Decode CreatePlayerSessionOutput where decode = genericDecode options
instance encodeCreatePlayerSessionOutput :: Encode CreatePlayerSessionOutput where encode = genericEncode options

-- | Constructs CreatePlayerSessionOutput from required parameters
newCreatePlayerSessionOutput :: CreatePlayerSessionOutput
newCreatePlayerSessionOutput  = CreatePlayerSessionOutput { "PlayerSession": (NullOrUndefined Nothing) }

-- | Constructs CreatePlayerSessionOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePlayerSessionOutput' :: ( { "PlayerSession" :: NullOrUndefined (PlayerSession) } -> {"PlayerSession" :: NullOrUndefined (PlayerSession) } ) -> CreatePlayerSessionOutput
newCreatePlayerSessionOutput'  customize = (CreatePlayerSessionOutput <<< customize) { "PlayerSession": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype CreatePlayerSessionsInput = CreatePlayerSessionsInput 
  { "GameSessionId" :: (ArnStringModel)
  , "PlayerIds" :: (PlayerIdList)
  , "PlayerDataMap" :: NullOrUndefined (PlayerDataMap)
  }
derive instance newtypeCreatePlayerSessionsInput :: Newtype CreatePlayerSessionsInput _
derive instance repGenericCreatePlayerSessionsInput :: Generic CreatePlayerSessionsInput _
instance showCreatePlayerSessionsInput :: Show CreatePlayerSessionsInput where show = genericShow
instance decodeCreatePlayerSessionsInput :: Decode CreatePlayerSessionsInput where decode = genericDecode options
instance encodeCreatePlayerSessionsInput :: Encode CreatePlayerSessionsInput where encode = genericEncode options

-- | Constructs CreatePlayerSessionsInput from required parameters
newCreatePlayerSessionsInput :: ArnStringModel -> PlayerIdList -> CreatePlayerSessionsInput
newCreatePlayerSessionsInput _GameSessionId _PlayerIds = CreatePlayerSessionsInput { "GameSessionId": _GameSessionId, "PlayerIds": _PlayerIds, "PlayerDataMap": (NullOrUndefined Nothing) }

-- | Constructs CreatePlayerSessionsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePlayerSessionsInput' :: ArnStringModel -> PlayerIdList -> ( { "GameSessionId" :: (ArnStringModel) , "PlayerIds" :: (PlayerIdList) , "PlayerDataMap" :: NullOrUndefined (PlayerDataMap) } -> {"GameSessionId" :: (ArnStringModel) , "PlayerIds" :: (PlayerIdList) , "PlayerDataMap" :: NullOrUndefined (PlayerDataMap) } ) -> CreatePlayerSessionsInput
newCreatePlayerSessionsInput' _GameSessionId _PlayerIds customize = (CreatePlayerSessionsInput <<< customize) { "GameSessionId": _GameSessionId, "PlayerIds": _PlayerIds, "PlayerDataMap": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype CreatePlayerSessionsOutput = CreatePlayerSessionsOutput 
  { "PlayerSessions" :: NullOrUndefined (PlayerSessionList)
  }
derive instance newtypeCreatePlayerSessionsOutput :: Newtype CreatePlayerSessionsOutput _
derive instance repGenericCreatePlayerSessionsOutput :: Generic CreatePlayerSessionsOutput _
instance showCreatePlayerSessionsOutput :: Show CreatePlayerSessionsOutput where show = genericShow
instance decodeCreatePlayerSessionsOutput :: Decode CreatePlayerSessionsOutput where decode = genericDecode options
instance encodeCreatePlayerSessionsOutput :: Encode CreatePlayerSessionsOutput where encode = genericEncode options

-- | Constructs CreatePlayerSessionsOutput from required parameters
newCreatePlayerSessionsOutput :: CreatePlayerSessionsOutput
newCreatePlayerSessionsOutput  = CreatePlayerSessionsOutput { "PlayerSessions": (NullOrUndefined Nothing) }

-- | Constructs CreatePlayerSessionsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePlayerSessionsOutput' :: ( { "PlayerSessions" :: NullOrUndefined (PlayerSessionList) } -> {"PlayerSessions" :: NullOrUndefined (PlayerSessionList) } ) -> CreatePlayerSessionsOutput
newCreatePlayerSessionsOutput'  customize = (CreatePlayerSessionsOutput <<< customize) { "PlayerSessions": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype CreateVpcPeeringAuthorizationInput = CreateVpcPeeringAuthorizationInput 
  { "GameLiftAwsAccountId" :: (NonZeroAndMaxString)
  , "PeerVpcId" :: (NonZeroAndMaxString)
  }
derive instance newtypeCreateVpcPeeringAuthorizationInput :: Newtype CreateVpcPeeringAuthorizationInput _
derive instance repGenericCreateVpcPeeringAuthorizationInput :: Generic CreateVpcPeeringAuthorizationInput _
instance showCreateVpcPeeringAuthorizationInput :: Show CreateVpcPeeringAuthorizationInput where show = genericShow
instance decodeCreateVpcPeeringAuthorizationInput :: Decode CreateVpcPeeringAuthorizationInput where decode = genericDecode options
instance encodeCreateVpcPeeringAuthorizationInput :: Encode CreateVpcPeeringAuthorizationInput where encode = genericEncode options

-- | Constructs CreateVpcPeeringAuthorizationInput from required parameters
newCreateVpcPeeringAuthorizationInput :: NonZeroAndMaxString -> NonZeroAndMaxString -> CreateVpcPeeringAuthorizationInput
newCreateVpcPeeringAuthorizationInput _GameLiftAwsAccountId _PeerVpcId = CreateVpcPeeringAuthorizationInput { "GameLiftAwsAccountId": _GameLiftAwsAccountId, "PeerVpcId": _PeerVpcId }

-- | Constructs CreateVpcPeeringAuthorizationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateVpcPeeringAuthorizationInput' :: NonZeroAndMaxString -> NonZeroAndMaxString -> ( { "GameLiftAwsAccountId" :: (NonZeroAndMaxString) , "PeerVpcId" :: (NonZeroAndMaxString) } -> {"GameLiftAwsAccountId" :: (NonZeroAndMaxString) , "PeerVpcId" :: (NonZeroAndMaxString) } ) -> CreateVpcPeeringAuthorizationInput
newCreateVpcPeeringAuthorizationInput' _GameLiftAwsAccountId _PeerVpcId customize = (CreateVpcPeeringAuthorizationInput <<< customize) { "GameLiftAwsAccountId": _GameLiftAwsAccountId, "PeerVpcId": _PeerVpcId }



-- | <p>Represents the returned data in response to a request action.</p>
newtype CreateVpcPeeringAuthorizationOutput = CreateVpcPeeringAuthorizationOutput 
  { "VpcPeeringAuthorization" :: NullOrUndefined (VpcPeeringAuthorization)
  }
derive instance newtypeCreateVpcPeeringAuthorizationOutput :: Newtype CreateVpcPeeringAuthorizationOutput _
derive instance repGenericCreateVpcPeeringAuthorizationOutput :: Generic CreateVpcPeeringAuthorizationOutput _
instance showCreateVpcPeeringAuthorizationOutput :: Show CreateVpcPeeringAuthorizationOutput where show = genericShow
instance decodeCreateVpcPeeringAuthorizationOutput :: Decode CreateVpcPeeringAuthorizationOutput where decode = genericDecode options
instance encodeCreateVpcPeeringAuthorizationOutput :: Encode CreateVpcPeeringAuthorizationOutput where encode = genericEncode options

-- | Constructs CreateVpcPeeringAuthorizationOutput from required parameters
newCreateVpcPeeringAuthorizationOutput :: CreateVpcPeeringAuthorizationOutput
newCreateVpcPeeringAuthorizationOutput  = CreateVpcPeeringAuthorizationOutput { "VpcPeeringAuthorization": (NullOrUndefined Nothing) }

-- | Constructs CreateVpcPeeringAuthorizationOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateVpcPeeringAuthorizationOutput' :: ( { "VpcPeeringAuthorization" :: NullOrUndefined (VpcPeeringAuthorization) } -> {"VpcPeeringAuthorization" :: NullOrUndefined (VpcPeeringAuthorization) } ) -> CreateVpcPeeringAuthorizationOutput
newCreateVpcPeeringAuthorizationOutput'  customize = (CreateVpcPeeringAuthorizationOutput <<< customize) { "VpcPeeringAuthorization": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype CreateVpcPeeringConnectionInput = CreateVpcPeeringConnectionInput 
  { "FleetId" :: (FleetId)
  , "PeerVpcAwsAccountId" :: (NonZeroAndMaxString)
  , "PeerVpcId" :: (NonZeroAndMaxString)
  }
derive instance newtypeCreateVpcPeeringConnectionInput :: Newtype CreateVpcPeeringConnectionInput _
derive instance repGenericCreateVpcPeeringConnectionInput :: Generic CreateVpcPeeringConnectionInput _
instance showCreateVpcPeeringConnectionInput :: Show CreateVpcPeeringConnectionInput where show = genericShow
instance decodeCreateVpcPeeringConnectionInput :: Decode CreateVpcPeeringConnectionInput where decode = genericDecode options
instance encodeCreateVpcPeeringConnectionInput :: Encode CreateVpcPeeringConnectionInput where encode = genericEncode options

-- | Constructs CreateVpcPeeringConnectionInput from required parameters
newCreateVpcPeeringConnectionInput :: FleetId -> NonZeroAndMaxString -> NonZeroAndMaxString -> CreateVpcPeeringConnectionInput
newCreateVpcPeeringConnectionInput _FleetId _PeerVpcAwsAccountId _PeerVpcId = CreateVpcPeeringConnectionInput { "FleetId": _FleetId, "PeerVpcAwsAccountId": _PeerVpcAwsAccountId, "PeerVpcId": _PeerVpcId }

-- | Constructs CreateVpcPeeringConnectionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateVpcPeeringConnectionInput' :: FleetId -> NonZeroAndMaxString -> NonZeroAndMaxString -> ( { "FleetId" :: (FleetId) , "PeerVpcAwsAccountId" :: (NonZeroAndMaxString) , "PeerVpcId" :: (NonZeroAndMaxString) } -> {"FleetId" :: (FleetId) , "PeerVpcAwsAccountId" :: (NonZeroAndMaxString) , "PeerVpcId" :: (NonZeroAndMaxString) } ) -> CreateVpcPeeringConnectionInput
newCreateVpcPeeringConnectionInput' _FleetId _PeerVpcAwsAccountId _PeerVpcId customize = (CreateVpcPeeringConnectionInput <<< customize) { "FleetId": _FleetId, "PeerVpcAwsAccountId": _PeerVpcAwsAccountId, "PeerVpcId": _PeerVpcId }



newtype CreateVpcPeeringConnectionOutput = CreateVpcPeeringConnectionOutput Types.NoArguments
derive instance newtypeCreateVpcPeeringConnectionOutput :: Newtype CreateVpcPeeringConnectionOutput _
derive instance repGenericCreateVpcPeeringConnectionOutput :: Generic CreateVpcPeeringConnectionOutput _
instance showCreateVpcPeeringConnectionOutput :: Show CreateVpcPeeringConnectionOutput where show = genericShow
instance decodeCreateVpcPeeringConnectionOutput :: Decode CreateVpcPeeringConnectionOutput where decode = genericDecode options
instance encodeCreateVpcPeeringConnectionOutput :: Encode CreateVpcPeeringConnectionOutput where encode = genericEncode options



newtype CustomEventData = CustomEventData String
derive instance newtypeCustomEventData :: Newtype CustomEventData _
derive instance repGenericCustomEventData :: Generic CustomEventData _
instance showCustomEventData :: Show CustomEventData where show = genericShow
instance decodeCustomEventData :: Decode CustomEventData where decode = genericDecode options
instance encodeCustomEventData :: Encode CustomEventData where encode = genericEncode options



-- | <p>Represents the input for a request action.</p>
newtype DeleteAliasInput = DeleteAliasInput 
  { "AliasId" :: (AliasId)
  }
derive instance newtypeDeleteAliasInput :: Newtype DeleteAliasInput _
derive instance repGenericDeleteAliasInput :: Generic DeleteAliasInput _
instance showDeleteAliasInput :: Show DeleteAliasInput where show = genericShow
instance decodeDeleteAliasInput :: Decode DeleteAliasInput where decode = genericDecode options
instance encodeDeleteAliasInput :: Encode DeleteAliasInput where encode = genericEncode options

-- | Constructs DeleteAliasInput from required parameters
newDeleteAliasInput :: AliasId -> DeleteAliasInput
newDeleteAliasInput _AliasId = DeleteAliasInput { "AliasId": _AliasId }

-- | Constructs DeleteAliasInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteAliasInput' :: AliasId -> ( { "AliasId" :: (AliasId) } -> {"AliasId" :: (AliasId) } ) -> DeleteAliasInput
newDeleteAliasInput' _AliasId customize = (DeleteAliasInput <<< customize) { "AliasId": _AliasId }



-- | <p>Represents the input for a request action.</p>
newtype DeleteBuildInput = DeleteBuildInput 
  { "BuildId" :: (BuildId)
  }
derive instance newtypeDeleteBuildInput :: Newtype DeleteBuildInput _
derive instance repGenericDeleteBuildInput :: Generic DeleteBuildInput _
instance showDeleteBuildInput :: Show DeleteBuildInput where show = genericShow
instance decodeDeleteBuildInput :: Decode DeleteBuildInput where decode = genericDecode options
instance encodeDeleteBuildInput :: Encode DeleteBuildInput where encode = genericEncode options

-- | Constructs DeleteBuildInput from required parameters
newDeleteBuildInput :: BuildId -> DeleteBuildInput
newDeleteBuildInput _BuildId = DeleteBuildInput { "BuildId": _BuildId }

-- | Constructs DeleteBuildInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteBuildInput' :: BuildId -> ( { "BuildId" :: (BuildId) } -> {"BuildId" :: (BuildId) } ) -> DeleteBuildInput
newDeleteBuildInput' _BuildId customize = (DeleteBuildInput <<< customize) { "BuildId": _BuildId }



-- | <p>Represents the input for a request action.</p>
newtype DeleteFleetInput = DeleteFleetInput 
  { "FleetId" :: (FleetId)
  }
derive instance newtypeDeleteFleetInput :: Newtype DeleteFleetInput _
derive instance repGenericDeleteFleetInput :: Generic DeleteFleetInput _
instance showDeleteFleetInput :: Show DeleteFleetInput where show = genericShow
instance decodeDeleteFleetInput :: Decode DeleteFleetInput where decode = genericDecode options
instance encodeDeleteFleetInput :: Encode DeleteFleetInput where encode = genericEncode options

-- | Constructs DeleteFleetInput from required parameters
newDeleteFleetInput :: FleetId -> DeleteFleetInput
newDeleteFleetInput _FleetId = DeleteFleetInput { "FleetId": _FleetId }

-- | Constructs DeleteFleetInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteFleetInput' :: FleetId -> ( { "FleetId" :: (FleetId) } -> {"FleetId" :: (FleetId) } ) -> DeleteFleetInput
newDeleteFleetInput' _FleetId customize = (DeleteFleetInput <<< customize) { "FleetId": _FleetId }



-- | <p>Represents the input for a request action.</p>
newtype DeleteGameSessionQueueInput = DeleteGameSessionQueueInput 
  { "Name" :: (GameSessionQueueName)
  }
derive instance newtypeDeleteGameSessionQueueInput :: Newtype DeleteGameSessionQueueInput _
derive instance repGenericDeleteGameSessionQueueInput :: Generic DeleteGameSessionQueueInput _
instance showDeleteGameSessionQueueInput :: Show DeleteGameSessionQueueInput where show = genericShow
instance decodeDeleteGameSessionQueueInput :: Decode DeleteGameSessionQueueInput where decode = genericDecode options
instance encodeDeleteGameSessionQueueInput :: Encode DeleteGameSessionQueueInput where encode = genericEncode options

-- | Constructs DeleteGameSessionQueueInput from required parameters
newDeleteGameSessionQueueInput :: GameSessionQueueName -> DeleteGameSessionQueueInput
newDeleteGameSessionQueueInput _Name = DeleteGameSessionQueueInput { "Name": _Name }

-- | Constructs DeleteGameSessionQueueInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteGameSessionQueueInput' :: GameSessionQueueName -> ( { "Name" :: (GameSessionQueueName) } -> {"Name" :: (GameSessionQueueName) } ) -> DeleteGameSessionQueueInput
newDeleteGameSessionQueueInput' _Name customize = (DeleteGameSessionQueueInput <<< customize) { "Name": _Name }



newtype DeleteGameSessionQueueOutput = DeleteGameSessionQueueOutput Types.NoArguments
derive instance newtypeDeleteGameSessionQueueOutput :: Newtype DeleteGameSessionQueueOutput _
derive instance repGenericDeleteGameSessionQueueOutput :: Generic DeleteGameSessionQueueOutput _
instance showDeleteGameSessionQueueOutput :: Show DeleteGameSessionQueueOutput where show = genericShow
instance decodeDeleteGameSessionQueueOutput :: Decode DeleteGameSessionQueueOutput where decode = genericDecode options
instance encodeDeleteGameSessionQueueOutput :: Encode DeleteGameSessionQueueOutput where encode = genericEncode options



-- | <p>Represents the input for a request action.</p>
newtype DeleteMatchmakingConfigurationInput = DeleteMatchmakingConfigurationInput 
  { "Name" :: (MatchmakingIdStringModel)
  }
derive instance newtypeDeleteMatchmakingConfigurationInput :: Newtype DeleteMatchmakingConfigurationInput _
derive instance repGenericDeleteMatchmakingConfigurationInput :: Generic DeleteMatchmakingConfigurationInput _
instance showDeleteMatchmakingConfigurationInput :: Show DeleteMatchmakingConfigurationInput where show = genericShow
instance decodeDeleteMatchmakingConfigurationInput :: Decode DeleteMatchmakingConfigurationInput where decode = genericDecode options
instance encodeDeleteMatchmakingConfigurationInput :: Encode DeleteMatchmakingConfigurationInput where encode = genericEncode options

-- | Constructs DeleteMatchmakingConfigurationInput from required parameters
newDeleteMatchmakingConfigurationInput :: MatchmakingIdStringModel -> DeleteMatchmakingConfigurationInput
newDeleteMatchmakingConfigurationInput _Name = DeleteMatchmakingConfigurationInput { "Name": _Name }

-- | Constructs DeleteMatchmakingConfigurationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteMatchmakingConfigurationInput' :: MatchmakingIdStringModel -> ( { "Name" :: (MatchmakingIdStringModel) } -> {"Name" :: (MatchmakingIdStringModel) } ) -> DeleteMatchmakingConfigurationInput
newDeleteMatchmakingConfigurationInput' _Name customize = (DeleteMatchmakingConfigurationInput <<< customize) { "Name": _Name }



newtype DeleteMatchmakingConfigurationOutput = DeleteMatchmakingConfigurationOutput Types.NoArguments
derive instance newtypeDeleteMatchmakingConfigurationOutput :: Newtype DeleteMatchmakingConfigurationOutput _
derive instance repGenericDeleteMatchmakingConfigurationOutput :: Generic DeleteMatchmakingConfigurationOutput _
instance showDeleteMatchmakingConfigurationOutput :: Show DeleteMatchmakingConfigurationOutput where show = genericShow
instance decodeDeleteMatchmakingConfigurationOutput :: Decode DeleteMatchmakingConfigurationOutput where decode = genericDecode options
instance encodeDeleteMatchmakingConfigurationOutput :: Encode DeleteMatchmakingConfigurationOutput where encode = genericEncode options



-- | <p>Represents the input for a request action.</p>
newtype DeleteScalingPolicyInput = DeleteScalingPolicyInput 
  { "Name" :: (NonZeroAndMaxString)
  , "FleetId" :: (FleetId)
  }
derive instance newtypeDeleteScalingPolicyInput :: Newtype DeleteScalingPolicyInput _
derive instance repGenericDeleteScalingPolicyInput :: Generic DeleteScalingPolicyInput _
instance showDeleteScalingPolicyInput :: Show DeleteScalingPolicyInput where show = genericShow
instance decodeDeleteScalingPolicyInput :: Decode DeleteScalingPolicyInput where decode = genericDecode options
instance encodeDeleteScalingPolicyInput :: Encode DeleteScalingPolicyInput where encode = genericEncode options

-- | Constructs DeleteScalingPolicyInput from required parameters
newDeleteScalingPolicyInput :: FleetId -> NonZeroAndMaxString -> DeleteScalingPolicyInput
newDeleteScalingPolicyInput _FleetId _Name = DeleteScalingPolicyInput { "FleetId": _FleetId, "Name": _Name }

-- | Constructs DeleteScalingPolicyInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteScalingPolicyInput' :: FleetId -> NonZeroAndMaxString -> ( { "Name" :: (NonZeroAndMaxString) , "FleetId" :: (FleetId) } -> {"Name" :: (NonZeroAndMaxString) , "FleetId" :: (FleetId) } ) -> DeleteScalingPolicyInput
newDeleteScalingPolicyInput' _FleetId _Name customize = (DeleteScalingPolicyInput <<< customize) { "FleetId": _FleetId, "Name": _Name }



-- | <p>Represents the input for a request action.</p>
newtype DeleteVpcPeeringAuthorizationInput = DeleteVpcPeeringAuthorizationInput 
  { "GameLiftAwsAccountId" :: (NonZeroAndMaxString)
  , "PeerVpcId" :: (NonZeroAndMaxString)
  }
derive instance newtypeDeleteVpcPeeringAuthorizationInput :: Newtype DeleteVpcPeeringAuthorizationInput _
derive instance repGenericDeleteVpcPeeringAuthorizationInput :: Generic DeleteVpcPeeringAuthorizationInput _
instance showDeleteVpcPeeringAuthorizationInput :: Show DeleteVpcPeeringAuthorizationInput where show = genericShow
instance decodeDeleteVpcPeeringAuthorizationInput :: Decode DeleteVpcPeeringAuthorizationInput where decode = genericDecode options
instance encodeDeleteVpcPeeringAuthorizationInput :: Encode DeleteVpcPeeringAuthorizationInput where encode = genericEncode options

-- | Constructs DeleteVpcPeeringAuthorizationInput from required parameters
newDeleteVpcPeeringAuthorizationInput :: NonZeroAndMaxString -> NonZeroAndMaxString -> DeleteVpcPeeringAuthorizationInput
newDeleteVpcPeeringAuthorizationInput _GameLiftAwsAccountId _PeerVpcId = DeleteVpcPeeringAuthorizationInput { "GameLiftAwsAccountId": _GameLiftAwsAccountId, "PeerVpcId": _PeerVpcId }

-- | Constructs DeleteVpcPeeringAuthorizationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteVpcPeeringAuthorizationInput' :: NonZeroAndMaxString -> NonZeroAndMaxString -> ( { "GameLiftAwsAccountId" :: (NonZeroAndMaxString) , "PeerVpcId" :: (NonZeroAndMaxString) } -> {"GameLiftAwsAccountId" :: (NonZeroAndMaxString) , "PeerVpcId" :: (NonZeroAndMaxString) } ) -> DeleteVpcPeeringAuthorizationInput
newDeleteVpcPeeringAuthorizationInput' _GameLiftAwsAccountId _PeerVpcId customize = (DeleteVpcPeeringAuthorizationInput <<< customize) { "GameLiftAwsAccountId": _GameLiftAwsAccountId, "PeerVpcId": _PeerVpcId }



newtype DeleteVpcPeeringAuthorizationOutput = DeleteVpcPeeringAuthorizationOutput Types.NoArguments
derive instance newtypeDeleteVpcPeeringAuthorizationOutput :: Newtype DeleteVpcPeeringAuthorizationOutput _
derive instance repGenericDeleteVpcPeeringAuthorizationOutput :: Generic DeleteVpcPeeringAuthorizationOutput _
instance showDeleteVpcPeeringAuthorizationOutput :: Show DeleteVpcPeeringAuthorizationOutput where show = genericShow
instance decodeDeleteVpcPeeringAuthorizationOutput :: Decode DeleteVpcPeeringAuthorizationOutput where decode = genericDecode options
instance encodeDeleteVpcPeeringAuthorizationOutput :: Encode DeleteVpcPeeringAuthorizationOutput where encode = genericEncode options



-- | <p>Represents the input for a request action.</p>
newtype DeleteVpcPeeringConnectionInput = DeleteVpcPeeringConnectionInput 
  { "FleetId" :: (FleetId)
  , "VpcPeeringConnectionId" :: (NonZeroAndMaxString)
  }
derive instance newtypeDeleteVpcPeeringConnectionInput :: Newtype DeleteVpcPeeringConnectionInput _
derive instance repGenericDeleteVpcPeeringConnectionInput :: Generic DeleteVpcPeeringConnectionInput _
instance showDeleteVpcPeeringConnectionInput :: Show DeleteVpcPeeringConnectionInput where show = genericShow
instance decodeDeleteVpcPeeringConnectionInput :: Decode DeleteVpcPeeringConnectionInput where decode = genericDecode options
instance encodeDeleteVpcPeeringConnectionInput :: Encode DeleteVpcPeeringConnectionInput where encode = genericEncode options

-- | Constructs DeleteVpcPeeringConnectionInput from required parameters
newDeleteVpcPeeringConnectionInput :: FleetId -> NonZeroAndMaxString -> DeleteVpcPeeringConnectionInput
newDeleteVpcPeeringConnectionInput _FleetId _VpcPeeringConnectionId = DeleteVpcPeeringConnectionInput { "FleetId": _FleetId, "VpcPeeringConnectionId": _VpcPeeringConnectionId }

-- | Constructs DeleteVpcPeeringConnectionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteVpcPeeringConnectionInput' :: FleetId -> NonZeroAndMaxString -> ( { "FleetId" :: (FleetId) , "VpcPeeringConnectionId" :: (NonZeroAndMaxString) } -> {"FleetId" :: (FleetId) , "VpcPeeringConnectionId" :: (NonZeroAndMaxString) } ) -> DeleteVpcPeeringConnectionInput
newDeleteVpcPeeringConnectionInput' _FleetId _VpcPeeringConnectionId customize = (DeleteVpcPeeringConnectionInput <<< customize) { "FleetId": _FleetId, "VpcPeeringConnectionId": _VpcPeeringConnectionId }



newtype DeleteVpcPeeringConnectionOutput = DeleteVpcPeeringConnectionOutput Types.NoArguments
derive instance newtypeDeleteVpcPeeringConnectionOutput :: Newtype DeleteVpcPeeringConnectionOutput _
derive instance repGenericDeleteVpcPeeringConnectionOutput :: Generic DeleteVpcPeeringConnectionOutput _
instance showDeleteVpcPeeringConnectionOutput :: Show DeleteVpcPeeringConnectionOutput where show = genericShow
instance decodeDeleteVpcPeeringConnectionOutput :: Decode DeleteVpcPeeringConnectionOutput where decode = genericDecode options
instance encodeDeleteVpcPeeringConnectionOutput :: Encode DeleteVpcPeeringConnectionOutput where encode = genericEncode options



-- | <p>Represents the input for a request action.</p>
newtype DescribeAliasInput = DescribeAliasInput 
  { "AliasId" :: (AliasId)
  }
derive instance newtypeDescribeAliasInput :: Newtype DescribeAliasInput _
derive instance repGenericDescribeAliasInput :: Generic DescribeAliasInput _
instance showDescribeAliasInput :: Show DescribeAliasInput where show = genericShow
instance decodeDescribeAliasInput :: Decode DescribeAliasInput where decode = genericDecode options
instance encodeDescribeAliasInput :: Encode DescribeAliasInput where encode = genericEncode options

-- | Constructs DescribeAliasInput from required parameters
newDescribeAliasInput :: AliasId -> DescribeAliasInput
newDescribeAliasInput _AliasId = DescribeAliasInput { "AliasId": _AliasId }

-- | Constructs DescribeAliasInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAliasInput' :: AliasId -> ( { "AliasId" :: (AliasId) } -> {"AliasId" :: (AliasId) } ) -> DescribeAliasInput
newDescribeAliasInput' _AliasId customize = (DescribeAliasInput <<< customize) { "AliasId": _AliasId }



-- | <p>Represents the returned data in response to a request action.</p>
newtype DescribeAliasOutput = DescribeAliasOutput 
  { "Alias" :: NullOrUndefined (Alias)
  }
derive instance newtypeDescribeAliasOutput :: Newtype DescribeAliasOutput _
derive instance repGenericDescribeAliasOutput :: Generic DescribeAliasOutput _
instance showDescribeAliasOutput :: Show DescribeAliasOutput where show = genericShow
instance decodeDescribeAliasOutput :: Decode DescribeAliasOutput where decode = genericDecode options
instance encodeDescribeAliasOutput :: Encode DescribeAliasOutput where encode = genericEncode options

-- | Constructs DescribeAliasOutput from required parameters
newDescribeAliasOutput :: DescribeAliasOutput
newDescribeAliasOutput  = DescribeAliasOutput { "Alias": (NullOrUndefined Nothing) }

-- | Constructs DescribeAliasOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAliasOutput' :: ( { "Alias" :: NullOrUndefined (Alias) } -> {"Alias" :: NullOrUndefined (Alias) } ) -> DescribeAliasOutput
newDescribeAliasOutput'  customize = (DescribeAliasOutput <<< customize) { "Alias": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype DescribeBuildInput = DescribeBuildInput 
  { "BuildId" :: (BuildId)
  }
derive instance newtypeDescribeBuildInput :: Newtype DescribeBuildInput _
derive instance repGenericDescribeBuildInput :: Generic DescribeBuildInput _
instance showDescribeBuildInput :: Show DescribeBuildInput where show = genericShow
instance decodeDescribeBuildInput :: Decode DescribeBuildInput where decode = genericDecode options
instance encodeDescribeBuildInput :: Encode DescribeBuildInput where encode = genericEncode options

-- | Constructs DescribeBuildInput from required parameters
newDescribeBuildInput :: BuildId -> DescribeBuildInput
newDescribeBuildInput _BuildId = DescribeBuildInput { "BuildId": _BuildId }

-- | Constructs DescribeBuildInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeBuildInput' :: BuildId -> ( { "BuildId" :: (BuildId) } -> {"BuildId" :: (BuildId) } ) -> DescribeBuildInput
newDescribeBuildInput' _BuildId customize = (DescribeBuildInput <<< customize) { "BuildId": _BuildId }



-- | <p>Represents the returned data in response to a request action.</p>
newtype DescribeBuildOutput = DescribeBuildOutput 
  { "Build" :: NullOrUndefined (Build)
  }
derive instance newtypeDescribeBuildOutput :: Newtype DescribeBuildOutput _
derive instance repGenericDescribeBuildOutput :: Generic DescribeBuildOutput _
instance showDescribeBuildOutput :: Show DescribeBuildOutput where show = genericShow
instance decodeDescribeBuildOutput :: Decode DescribeBuildOutput where decode = genericDecode options
instance encodeDescribeBuildOutput :: Encode DescribeBuildOutput where encode = genericEncode options

-- | Constructs DescribeBuildOutput from required parameters
newDescribeBuildOutput :: DescribeBuildOutput
newDescribeBuildOutput  = DescribeBuildOutput { "Build": (NullOrUndefined Nothing) }

-- | Constructs DescribeBuildOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeBuildOutput' :: ( { "Build" :: NullOrUndefined (Build) } -> {"Build" :: NullOrUndefined (Build) } ) -> DescribeBuildOutput
newDescribeBuildOutput'  customize = (DescribeBuildOutput <<< customize) { "Build": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype DescribeEC2InstanceLimitsInput = DescribeEC2InstanceLimitsInput 
  { "EC2InstanceType" :: NullOrUndefined (EC2InstanceType)
  }
derive instance newtypeDescribeEC2InstanceLimitsInput :: Newtype DescribeEC2InstanceLimitsInput _
derive instance repGenericDescribeEC2InstanceLimitsInput :: Generic DescribeEC2InstanceLimitsInput _
instance showDescribeEC2InstanceLimitsInput :: Show DescribeEC2InstanceLimitsInput where show = genericShow
instance decodeDescribeEC2InstanceLimitsInput :: Decode DescribeEC2InstanceLimitsInput where decode = genericDecode options
instance encodeDescribeEC2InstanceLimitsInput :: Encode DescribeEC2InstanceLimitsInput where encode = genericEncode options

-- | Constructs DescribeEC2InstanceLimitsInput from required parameters
newDescribeEC2InstanceLimitsInput :: DescribeEC2InstanceLimitsInput
newDescribeEC2InstanceLimitsInput  = DescribeEC2InstanceLimitsInput { "EC2InstanceType": (NullOrUndefined Nothing) }

-- | Constructs DescribeEC2InstanceLimitsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEC2InstanceLimitsInput' :: ( { "EC2InstanceType" :: NullOrUndefined (EC2InstanceType) } -> {"EC2InstanceType" :: NullOrUndefined (EC2InstanceType) } ) -> DescribeEC2InstanceLimitsInput
newDescribeEC2InstanceLimitsInput'  customize = (DescribeEC2InstanceLimitsInput <<< customize) { "EC2InstanceType": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype DescribeEC2InstanceLimitsOutput = DescribeEC2InstanceLimitsOutput 
  { "EC2InstanceLimits" :: NullOrUndefined (EC2InstanceLimitList)
  }
derive instance newtypeDescribeEC2InstanceLimitsOutput :: Newtype DescribeEC2InstanceLimitsOutput _
derive instance repGenericDescribeEC2InstanceLimitsOutput :: Generic DescribeEC2InstanceLimitsOutput _
instance showDescribeEC2InstanceLimitsOutput :: Show DescribeEC2InstanceLimitsOutput where show = genericShow
instance decodeDescribeEC2InstanceLimitsOutput :: Decode DescribeEC2InstanceLimitsOutput where decode = genericDecode options
instance encodeDescribeEC2InstanceLimitsOutput :: Encode DescribeEC2InstanceLimitsOutput where encode = genericEncode options

-- | Constructs DescribeEC2InstanceLimitsOutput from required parameters
newDescribeEC2InstanceLimitsOutput :: DescribeEC2InstanceLimitsOutput
newDescribeEC2InstanceLimitsOutput  = DescribeEC2InstanceLimitsOutput { "EC2InstanceLimits": (NullOrUndefined Nothing) }

-- | Constructs DescribeEC2InstanceLimitsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeEC2InstanceLimitsOutput' :: ( { "EC2InstanceLimits" :: NullOrUndefined (EC2InstanceLimitList) } -> {"EC2InstanceLimits" :: NullOrUndefined (EC2InstanceLimitList) } ) -> DescribeEC2InstanceLimitsOutput
newDescribeEC2InstanceLimitsOutput'  customize = (DescribeEC2InstanceLimitsOutput <<< customize) { "EC2InstanceLimits": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype DescribeFleetAttributesInput = DescribeFleetAttributesInput 
  { "FleetIds" :: NullOrUndefined (FleetIdList)
  , "Limit" :: NullOrUndefined (PositiveInteger)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeFleetAttributesInput :: Newtype DescribeFleetAttributesInput _
derive instance repGenericDescribeFleetAttributesInput :: Generic DescribeFleetAttributesInput _
instance showDescribeFleetAttributesInput :: Show DescribeFleetAttributesInput where show = genericShow
instance decodeDescribeFleetAttributesInput :: Decode DescribeFleetAttributesInput where decode = genericDecode options
instance encodeDescribeFleetAttributesInput :: Encode DescribeFleetAttributesInput where encode = genericEncode options

-- | Constructs DescribeFleetAttributesInput from required parameters
newDescribeFleetAttributesInput :: DescribeFleetAttributesInput
newDescribeFleetAttributesInput  = DescribeFleetAttributesInput { "FleetIds": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeFleetAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeFleetAttributesInput' :: ( { "FleetIds" :: NullOrUndefined (FleetIdList) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"FleetIds" :: NullOrUndefined (FleetIdList) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeFleetAttributesInput
newDescribeFleetAttributesInput'  customize = (DescribeFleetAttributesInput <<< customize) { "FleetIds": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype DescribeFleetAttributesOutput = DescribeFleetAttributesOutput 
  { "FleetAttributes" :: NullOrUndefined (FleetAttributesList)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeFleetAttributesOutput :: Newtype DescribeFleetAttributesOutput _
derive instance repGenericDescribeFleetAttributesOutput :: Generic DescribeFleetAttributesOutput _
instance showDescribeFleetAttributesOutput :: Show DescribeFleetAttributesOutput where show = genericShow
instance decodeDescribeFleetAttributesOutput :: Decode DescribeFleetAttributesOutput where decode = genericDecode options
instance encodeDescribeFleetAttributesOutput :: Encode DescribeFleetAttributesOutput where encode = genericEncode options

-- | Constructs DescribeFleetAttributesOutput from required parameters
newDescribeFleetAttributesOutput :: DescribeFleetAttributesOutput
newDescribeFleetAttributesOutput  = DescribeFleetAttributesOutput { "FleetAttributes": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeFleetAttributesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeFleetAttributesOutput' :: ( { "FleetAttributes" :: NullOrUndefined (FleetAttributesList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"FleetAttributes" :: NullOrUndefined (FleetAttributesList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeFleetAttributesOutput
newDescribeFleetAttributesOutput'  customize = (DescribeFleetAttributesOutput <<< customize) { "FleetAttributes": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype DescribeFleetCapacityInput = DescribeFleetCapacityInput 
  { "FleetIds" :: NullOrUndefined (FleetIdList)
  , "Limit" :: NullOrUndefined (PositiveInteger)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeFleetCapacityInput :: Newtype DescribeFleetCapacityInput _
derive instance repGenericDescribeFleetCapacityInput :: Generic DescribeFleetCapacityInput _
instance showDescribeFleetCapacityInput :: Show DescribeFleetCapacityInput where show = genericShow
instance decodeDescribeFleetCapacityInput :: Decode DescribeFleetCapacityInput where decode = genericDecode options
instance encodeDescribeFleetCapacityInput :: Encode DescribeFleetCapacityInput where encode = genericEncode options

-- | Constructs DescribeFleetCapacityInput from required parameters
newDescribeFleetCapacityInput :: DescribeFleetCapacityInput
newDescribeFleetCapacityInput  = DescribeFleetCapacityInput { "FleetIds": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeFleetCapacityInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeFleetCapacityInput' :: ( { "FleetIds" :: NullOrUndefined (FleetIdList) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"FleetIds" :: NullOrUndefined (FleetIdList) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeFleetCapacityInput
newDescribeFleetCapacityInput'  customize = (DescribeFleetCapacityInput <<< customize) { "FleetIds": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype DescribeFleetCapacityOutput = DescribeFleetCapacityOutput 
  { "FleetCapacity" :: NullOrUndefined (FleetCapacityList)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeFleetCapacityOutput :: Newtype DescribeFleetCapacityOutput _
derive instance repGenericDescribeFleetCapacityOutput :: Generic DescribeFleetCapacityOutput _
instance showDescribeFleetCapacityOutput :: Show DescribeFleetCapacityOutput where show = genericShow
instance decodeDescribeFleetCapacityOutput :: Decode DescribeFleetCapacityOutput where decode = genericDecode options
instance encodeDescribeFleetCapacityOutput :: Encode DescribeFleetCapacityOutput where encode = genericEncode options

-- | Constructs DescribeFleetCapacityOutput from required parameters
newDescribeFleetCapacityOutput :: DescribeFleetCapacityOutput
newDescribeFleetCapacityOutput  = DescribeFleetCapacityOutput { "FleetCapacity": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeFleetCapacityOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeFleetCapacityOutput' :: ( { "FleetCapacity" :: NullOrUndefined (FleetCapacityList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"FleetCapacity" :: NullOrUndefined (FleetCapacityList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeFleetCapacityOutput
newDescribeFleetCapacityOutput'  customize = (DescribeFleetCapacityOutput <<< customize) { "FleetCapacity": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype DescribeFleetEventsInput = DescribeFleetEventsInput 
  { "FleetId" :: (FleetId)
  , "StartTime" :: NullOrUndefined (Types.Timestamp)
  , "EndTime" :: NullOrUndefined (Types.Timestamp)
  , "Limit" :: NullOrUndefined (PositiveInteger)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeFleetEventsInput :: Newtype DescribeFleetEventsInput _
derive instance repGenericDescribeFleetEventsInput :: Generic DescribeFleetEventsInput _
instance showDescribeFleetEventsInput :: Show DescribeFleetEventsInput where show = genericShow
instance decodeDescribeFleetEventsInput :: Decode DescribeFleetEventsInput where decode = genericDecode options
instance encodeDescribeFleetEventsInput :: Encode DescribeFleetEventsInput where encode = genericEncode options

-- | Constructs DescribeFleetEventsInput from required parameters
newDescribeFleetEventsInput :: FleetId -> DescribeFleetEventsInput
newDescribeFleetEventsInput _FleetId = DescribeFleetEventsInput { "FleetId": _FleetId, "EndTime": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing) }

-- | Constructs DescribeFleetEventsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeFleetEventsInput' :: FleetId -> ( { "FleetId" :: (FleetId) , "StartTime" :: NullOrUndefined (Types.Timestamp) , "EndTime" :: NullOrUndefined (Types.Timestamp) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"FleetId" :: (FleetId) , "StartTime" :: NullOrUndefined (Types.Timestamp) , "EndTime" :: NullOrUndefined (Types.Timestamp) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeFleetEventsInput
newDescribeFleetEventsInput' _FleetId customize = (DescribeFleetEventsInput <<< customize) { "FleetId": _FleetId, "EndTime": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype DescribeFleetEventsOutput = DescribeFleetEventsOutput 
  { "Events" :: NullOrUndefined (EventList)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeFleetEventsOutput :: Newtype DescribeFleetEventsOutput _
derive instance repGenericDescribeFleetEventsOutput :: Generic DescribeFleetEventsOutput _
instance showDescribeFleetEventsOutput :: Show DescribeFleetEventsOutput where show = genericShow
instance decodeDescribeFleetEventsOutput :: Decode DescribeFleetEventsOutput where decode = genericDecode options
instance encodeDescribeFleetEventsOutput :: Encode DescribeFleetEventsOutput where encode = genericEncode options

-- | Constructs DescribeFleetEventsOutput from required parameters
newDescribeFleetEventsOutput :: DescribeFleetEventsOutput
newDescribeFleetEventsOutput  = DescribeFleetEventsOutput { "Events": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeFleetEventsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeFleetEventsOutput' :: ( { "Events" :: NullOrUndefined (EventList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"Events" :: NullOrUndefined (EventList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeFleetEventsOutput
newDescribeFleetEventsOutput'  customize = (DescribeFleetEventsOutput <<< customize) { "Events": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype DescribeFleetPortSettingsInput = DescribeFleetPortSettingsInput 
  { "FleetId" :: (FleetId)
  }
derive instance newtypeDescribeFleetPortSettingsInput :: Newtype DescribeFleetPortSettingsInput _
derive instance repGenericDescribeFleetPortSettingsInput :: Generic DescribeFleetPortSettingsInput _
instance showDescribeFleetPortSettingsInput :: Show DescribeFleetPortSettingsInput where show = genericShow
instance decodeDescribeFleetPortSettingsInput :: Decode DescribeFleetPortSettingsInput where decode = genericDecode options
instance encodeDescribeFleetPortSettingsInput :: Encode DescribeFleetPortSettingsInput where encode = genericEncode options

-- | Constructs DescribeFleetPortSettingsInput from required parameters
newDescribeFleetPortSettingsInput :: FleetId -> DescribeFleetPortSettingsInput
newDescribeFleetPortSettingsInput _FleetId = DescribeFleetPortSettingsInput { "FleetId": _FleetId }

-- | Constructs DescribeFleetPortSettingsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeFleetPortSettingsInput' :: FleetId -> ( { "FleetId" :: (FleetId) } -> {"FleetId" :: (FleetId) } ) -> DescribeFleetPortSettingsInput
newDescribeFleetPortSettingsInput' _FleetId customize = (DescribeFleetPortSettingsInput <<< customize) { "FleetId": _FleetId }



-- | <p>Represents the returned data in response to a request action.</p>
newtype DescribeFleetPortSettingsOutput = DescribeFleetPortSettingsOutput 
  { "InboundPermissions" :: NullOrUndefined (IpPermissionsList)
  }
derive instance newtypeDescribeFleetPortSettingsOutput :: Newtype DescribeFleetPortSettingsOutput _
derive instance repGenericDescribeFleetPortSettingsOutput :: Generic DescribeFleetPortSettingsOutput _
instance showDescribeFleetPortSettingsOutput :: Show DescribeFleetPortSettingsOutput where show = genericShow
instance decodeDescribeFleetPortSettingsOutput :: Decode DescribeFleetPortSettingsOutput where decode = genericDecode options
instance encodeDescribeFleetPortSettingsOutput :: Encode DescribeFleetPortSettingsOutput where encode = genericEncode options

-- | Constructs DescribeFleetPortSettingsOutput from required parameters
newDescribeFleetPortSettingsOutput :: DescribeFleetPortSettingsOutput
newDescribeFleetPortSettingsOutput  = DescribeFleetPortSettingsOutput { "InboundPermissions": (NullOrUndefined Nothing) }

-- | Constructs DescribeFleetPortSettingsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeFleetPortSettingsOutput' :: ( { "InboundPermissions" :: NullOrUndefined (IpPermissionsList) } -> {"InboundPermissions" :: NullOrUndefined (IpPermissionsList) } ) -> DescribeFleetPortSettingsOutput
newDescribeFleetPortSettingsOutput'  customize = (DescribeFleetPortSettingsOutput <<< customize) { "InboundPermissions": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype DescribeFleetUtilizationInput = DescribeFleetUtilizationInput 
  { "FleetIds" :: NullOrUndefined (FleetIdList)
  , "Limit" :: NullOrUndefined (PositiveInteger)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeFleetUtilizationInput :: Newtype DescribeFleetUtilizationInput _
derive instance repGenericDescribeFleetUtilizationInput :: Generic DescribeFleetUtilizationInput _
instance showDescribeFleetUtilizationInput :: Show DescribeFleetUtilizationInput where show = genericShow
instance decodeDescribeFleetUtilizationInput :: Decode DescribeFleetUtilizationInput where decode = genericDecode options
instance encodeDescribeFleetUtilizationInput :: Encode DescribeFleetUtilizationInput where encode = genericEncode options

-- | Constructs DescribeFleetUtilizationInput from required parameters
newDescribeFleetUtilizationInput :: DescribeFleetUtilizationInput
newDescribeFleetUtilizationInput  = DescribeFleetUtilizationInput { "FleetIds": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeFleetUtilizationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeFleetUtilizationInput' :: ( { "FleetIds" :: NullOrUndefined (FleetIdList) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"FleetIds" :: NullOrUndefined (FleetIdList) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeFleetUtilizationInput
newDescribeFleetUtilizationInput'  customize = (DescribeFleetUtilizationInput <<< customize) { "FleetIds": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype DescribeFleetUtilizationOutput = DescribeFleetUtilizationOutput 
  { "FleetUtilization" :: NullOrUndefined (FleetUtilizationList)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeFleetUtilizationOutput :: Newtype DescribeFleetUtilizationOutput _
derive instance repGenericDescribeFleetUtilizationOutput :: Generic DescribeFleetUtilizationOutput _
instance showDescribeFleetUtilizationOutput :: Show DescribeFleetUtilizationOutput where show = genericShow
instance decodeDescribeFleetUtilizationOutput :: Decode DescribeFleetUtilizationOutput where decode = genericDecode options
instance encodeDescribeFleetUtilizationOutput :: Encode DescribeFleetUtilizationOutput where encode = genericEncode options

-- | Constructs DescribeFleetUtilizationOutput from required parameters
newDescribeFleetUtilizationOutput :: DescribeFleetUtilizationOutput
newDescribeFleetUtilizationOutput  = DescribeFleetUtilizationOutput { "FleetUtilization": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeFleetUtilizationOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeFleetUtilizationOutput' :: ( { "FleetUtilization" :: NullOrUndefined (FleetUtilizationList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"FleetUtilization" :: NullOrUndefined (FleetUtilizationList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeFleetUtilizationOutput
newDescribeFleetUtilizationOutput'  customize = (DescribeFleetUtilizationOutput <<< customize) { "FleetUtilization": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype DescribeGameSessionDetailsInput = DescribeGameSessionDetailsInput 
  { "FleetId" :: NullOrUndefined (FleetId)
  , "GameSessionId" :: NullOrUndefined (ArnStringModel)
  , "AliasId" :: NullOrUndefined (AliasId)
  , "StatusFilter" :: NullOrUndefined (NonZeroAndMaxString)
  , "Limit" :: NullOrUndefined (PositiveInteger)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeGameSessionDetailsInput :: Newtype DescribeGameSessionDetailsInput _
derive instance repGenericDescribeGameSessionDetailsInput :: Generic DescribeGameSessionDetailsInput _
instance showDescribeGameSessionDetailsInput :: Show DescribeGameSessionDetailsInput where show = genericShow
instance decodeDescribeGameSessionDetailsInput :: Decode DescribeGameSessionDetailsInput where decode = genericDecode options
instance encodeDescribeGameSessionDetailsInput :: Encode DescribeGameSessionDetailsInput where encode = genericEncode options

-- | Constructs DescribeGameSessionDetailsInput from required parameters
newDescribeGameSessionDetailsInput :: DescribeGameSessionDetailsInput
newDescribeGameSessionDetailsInput  = DescribeGameSessionDetailsInput { "AliasId": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "GameSessionId": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "StatusFilter": (NullOrUndefined Nothing) }

-- | Constructs DescribeGameSessionDetailsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeGameSessionDetailsInput' :: ( { "FleetId" :: NullOrUndefined (FleetId) , "GameSessionId" :: NullOrUndefined (ArnStringModel) , "AliasId" :: NullOrUndefined (AliasId) , "StatusFilter" :: NullOrUndefined (NonZeroAndMaxString) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"FleetId" :: NullOrUndefined (FleetId) , "GameSessionId" :: NullOrUndefined (ArnStringModel) , "AliasId" :: NullOrUndefined (AliasId) , "StatusFilter" :: NullOrUndefined (NonZeroAndMaxString) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeGameSessionDetailsInput
newDescribeGameSessionDetailsInput'  customize = (DescribeGameSessionDetailsInput <<< customize) { "AliasId": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "GameSessionId": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "StatusFilter": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype DescribeGameSessionDetailsOutput = DescribeGameSessionDetailsOutput 
  { "GameSessionDetails" :: NullOrUndefined (GameSessionDetailList)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeGameSessionDetailsOutput :: Newtype DescribeGameSessionDetailsOutput _
derive instance repGenericDescribeGameSessionDetailsOutput :: Generic DescribeGameSessionDetailsOutput _
instance showDescribeGameSessionDetailsOutput :: Show DescribeGameSessionDetailsOutput where show = genericShow
instance decodeDescribeGameSessionDetailsOutput :: Decode DescribeGameSessionDetailsOutput where decode = genericDecode options
instance encodeDescribeGameSessionDetailsOutput :: Encode DescribeGameSessionDetailsOutput where encode = genericEncode options

-- | Constructs DescribeGameSessionDetailsOutput from required parameters
newDescribeGameSessionDetailsOutput :: DescribeGameSessionDetailsOutput
newDescribeGameSessionDetailsOutput  = DescribeGameSessionDetailsOutput { "GameSessionDetails": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeGameSessionDetailsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeGameSessionDetailsOutput' :: ( { "GameSessionDetails" :: NullOrUndefined (GameSessionDetailList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"GameSessionDetails" :: NullOrUndefined (GameSessionDetailList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeGameSessionDetailsOutput
newDescribeGameSessionDetailsOutput'  customize = (DescribeGameSessionDetailsOutput <<< customize) { "GameSessionDetails": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype DescribeGameSessionPlacementInput = DescribeGameSessionPlacementInput 
  { "PlacementId" :: (IdStringModel)
  }
derive instance newtypeDescribeGameSessionPlacementInput :: Newtype DescribeGameSessionPlacementInput _
derive instance repGenericDescribeGameSessionPlacementInput :: Generic DescribeGameSessionPlacementInput _
instance showDescribeGameSessionPlacementInput :: Show DescribeGameSessionPlacementInput where show = genericShow
instance decodeDescribeGameSessionPlacementInput :: Decode DescribeGameSessionPlacementInput where decode = genericDecode options
instance encodeDescribeGameSessionPlacementInput :: Encode DescribeGameSessionPlacementInput where encode = genericEncode options

-- | Constructs DescribeGameSessionPlacementInput from required parameters
newDescribeGameSessionPlacementInput :: IdStringModel -> DescribeGameSessionPlacementInput
newDescribeGameSessionPlacementInput _PlacementId = DescribeGameSessionPlacementInput { "PlacementId": _PlacementId }

-- | Constructs DescribeGameSessionPlacementInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeGameSessionPlacementInput' :: IdStringModel -> ( { "PlacementId" :: (IdStringModel) } -> {"PlacementId" :: (IdStringModel) } ) -> DescribeGameSessionPlacementInput
newDescribeGameSessionPlacementInput' _PlacementId customize = (DescribeGameSessionPlacementInput <<< customize) { "PlacementId": _PlacementId }



-- | <p>Represents the returned data in response to a request action.</p>
newtype DescribeGameSessionPlacementOutput = DescribeGameSessionPlacementOutput 
  { "GameSessionPlacement" :: NullOrUndefined (GameSessionPlacement)
  }
derive instance newtypeDescribeGameSessionPlacementOutput :: Newtype DescribeGameSessionPlacementOutput _
derive instance repGenericDescribeGameSessionPlacementOutput :: Generic DescribeGameSessionPlacementOutput _
instance showDescribeGameSessionPlacementOutput :: Show DescribeGameSessionPlacementOutput where show = genericShow
instance decodeDescribeGameSessionPlacementOutput :: Decode DescribeGameSessionPlacementOutput where decode = genericDecode options
instance encodeDescribeGameSessionPlacementOutput :: Encode DescribeGameSessionPlacementOutput where encode = genericEncode options

-- | Constructs DescribeGameSessionPlacementOutput from required parameters
newDescribeGameSessionPlacementOutput :: DescribeGameSessionPlacementOutput
newDescribeGameSessionPlacementOutput  = DescribeGameSessionPlacementOutput { "GameSessionPlacement": (NullOrUndefined Nothing) }

-- | Constructs DescribeGameSessionPlacementOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeGameSessionPlacementOutput' :: ( { "GameSessionPlacement" :: NullOrUndefined (GameSessionPlacement) } -> {"GameSessionPlacement" :: NullOrUndefined (GameSessionPlacement) } ) -> DescribeGameSessionPlacementOutput
newDescribeGameSessionPlacementOutput'  customize = (DescribeGameSessionPlacementOutput <<< customize) { "GameSessionPlacement": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype DescribeGameSessionQueuesInput = DescribeGameSessionQueuesInput 
  { "Names" :: NullOrUndefined (GameSessionQueueNameList)
  , "Limit" :: NullOrUndefined (PositiveInteger)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeGameSessionQueuesInput :: Newtype DescribeGameSessionQueuesInput _
derive instance repGenericDescribeGameSessionQueuesInput :: Generic DescribeGameSessionQueuesInput _
instance showDescribeGameSessionQueuesInput :: Show DescribeGameSessionQueuesInput where show = genericShow
instance decodeDescribeGameSessionQueuesInput :: Decode DescribeGameSessionQueuesInput where decode = genericDecode options
instance encodeDescribeGameSessionQueuesInput :: Encode DescribeGameSessionQueuesInput where encode = genericEncode options

-- | Constructs DescribeGameSessionQueuesInput from required parameters
newDescribeGameSessionQueuesInput :: DescribeGameSessionQueuesInput
newDescribeGameSessionQueuesInput  = DescribeGameSessionQueuesInput { "Limit": (NullOrUndefined Nothing), "Names": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeGameSessionQueuesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeGameSessionQueuesInput' :: ( { "Names" :: NullOrUndefined (GameSessionQueueNameList) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"Names" :: NullOrUndefined (GameSessionQueueNameList) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeGameSessionQueuesInput
newDescribeGameSessionQueuesInput'  customize = (DescribeGameSessionQueuesInput <<< customize) { "Limit": (NullOrUndefined Nothing), "Names": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype DescribeGameSessionQueuesOutput = DescribeGameSessionQueuesOutput 
  { "GameSessionQueues" :: NullOrUndefined (GameSessionQueueList)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeGameSessionQueuesOutput :: Newtype DescribeGameSessionQueuesOutput _
derive instance repGenericDescribeGameSessionQueuesOutput :: Generic DescribeGameSessionQueuesOutput _
instance showDescribeGameSessionQueuesOutput :: Show DescribeGameSessionQueuesOutput where show = genericShow
instance decodeDescribeGameSessionQueuesOutput :: Decode DescribeGameSessionQueuesOutput where decode = genericDecode options
instance encodeDescribeGameSessionQueuesOutput :: Encode DescribeGameSessionQueuesOutput where encode = genericEncode options

-- | Constructs DescribeGameSessionQueuesOutput from required parameters
newDescribeGameSessionQueuesOutput :: DescribeGameSessionQueuesOutput
newDescribeGameSessionQueuesOutput  = DescribeGameSessionQueuesOutput { "GameSessionQueues": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeGameSessionQueuesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeGameSessionQueuesOutput' :: ( { "GameSessionQueues" :: NullOrUndefined (GameSessionQueueList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"GameSessionQueues" :: NullOrUndefined (GameSessionQueueList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeGameSessionQueuesOutput
newDescribeGameSessionQueuesOutput'  customize = (DescribeGameSessionQueuesOutput <<< customize) { "GameSessionQueues": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype DescribeGameSessionsInput = DescribeGameSessionsInput 
  { "FleetId" :: NullOrUndefined (FleetId)
  , "GameSessionId" :: NullOrUndefined (ArnStringModel)
  , "AliasId" :: NullOrUndefined (AliasId)
  , "StatusFilter" :: NullOrUndefined (NonZeroAndMaxString)
  , "Limit" :: NullOrUndefined (PositiveInteger)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeGameSessionsInput :: Newtype DescribeGameSessionsInput _
derive instance repGenericDescribeGameSessionsInput :: Generic DescribeGameSessionsInput _
instance showDescribeGameSessionsInput :: Show DescribeGameSessionsInput where show = genericShow
instance decodeDescribeGameSessionsInput :: Decode DescribeGameSessionsInput where decode = genericDecode options
instance encodeDescribeGameSessionsInput :: Encode DescribeGameSessionsInput where encode = genericEncode options

-- | Constructs DescribeGameSessionsInput from required parameters
newDescribeGameSessionsInput :: DescribeGameSessionsInput
newDescribeGameSessionsInput  = DescribeGameSessionsInput { "AliasId": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "GameSessionId": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "StatusFilter": (NullOrUndefined Nothing) }

-- | Constructs DescribeGameSessionsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeGameSessionsInput' :: ( { "FleetId" :: NullOrUndefined (FleetId) , "GameSessionId" :: NullOrUndefined (ArnStringModel) , "AliasId" :: NullOrUndefined (AliasId) , "StatusFilter" :: NullOrUndefined (NonZeroAndMaxString) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"FleetId" :: NullOrUndefined (FleetId) , "GameSessionId" :: NullOrUndefined (ArnStringModel) , "AliasId" :: NullOrUndefined (AliasId) , "StatusFilter" :: NullOrUndefined (NonZeroAndMaxString) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeGameSessionsInput
newDescribeGameSessionsInput'  customize = (DescribeGameSessionsInput <<< customize) { "AliasId": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "GameSessionId": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "StatusFilter": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype DescribeGameSessionsOutput = DescribeGameSessionsOutput 
  { "GameSessions" :: NullOrUndefined (GameSessionList)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeGameSessionsOutput :: Newtype DescribeGameSessionsOutput _
derive instance repGenericDescribeGameSessionsOutput :: Generic DescribeGameSessionsOutput _
instance showDescribeGameSessionsOutput :: Show DescribeGameSessionsOutput where show = genericShow
instance decodeDescribeGameSessionsOutput :: Decode DescribeGameSessionsOutput where decode = genericDecode options
instance encodeDescribeGameSessionsOutput :: Encode DescribeGameSessionsOutput where encode = genericEncode options

-- | Constructs DescribeGameSessionsOutput from required parameters
newDescribeGameSessionsOutput :: DescribeGameSessionsOutput
newDescribeGameSessionsOutput  = DescribeGameSessionsOutput { "GameSessions": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeGameSessionsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeGameSessionsOutput' :: ( { "GameSessions" :: NullOrUndefined (GameSessionList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"GameSessions" :: NullOrUndefined (GameSessionList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeGameSessionsOutput
newDescribeGameSessionsOutput'  customize = (DescribeGameSessionsOutput <<< customize) { "GameSessions": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype DescribeInstancesInput = DescribeInstancesInput 
  { "FleetId" :: (FleetId)
  , "InstanceId" :: NullOrUndefined (InstanceId)
  , "Limit" :: NullOrUndefined (PositiveInteger)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeInstancesInput :: Newtype DescribeInstancesInput _
derive instance repGenericDescribeInstancesInput :: Generic DescribeInstancesInput _
instance showDescribeInstancesInput :: Show DescribeInstancesInput where show = genericShow
instance decodeDescribeInstancesInput :: Decode DescribeInstancesInput where decode = genericDecode options
instance encodeDescribeInstancesInput :: Encode DescribeInstancesInput where encode = genericEncode options

-- | Constructs DescribeInstancesInput from required parameters
newDescribeInstancesInput :: FleetId -> DescribeInstancesInput
newDescribeInstancesInput _FleetId = DescribeInstancesInput { "FleetId": _FleetId, "InstanceId": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeInstancesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeInstancesInput' :: FleetId -> ( { "FleetId" :: (FleetId) , "InstanceId" :: NullOrUndefined (InstanceId) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"FleetId" :: (FleetId) , "InstanceId" :: NullOrUndefined (InstanceId) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeInstancesInput
newDescribeInstancesInput' _FleetId customize = (DescribeInstancesInput <<< customize) { "FleetId": _FleetId, "InstanceId": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype DescribeInstancesOutput = DescribeInstancesOutput 
  { "Instances" :: NullOrUndefined (InstanceList)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeInstancesOutput :: Newtype DescribeInstancesOutput _
derive instance repGenericDescribeInstancesOutput :: Generic DescribeInstancesOutput _
instance showDescribeInstancesOutput :: Show DescribeInstancesOutput where show = genericShow
instance decodeDescribeInstancesOutput :: Decode DescribeInstancesOutput where decode = genericDecode options
instance encodeDescribeInstancesOutput :: Encode DescribeInstancesOutput where encode = genericEncode options

-- | Constructs DescribeInstancesOutput from required parameters
newDescribeInstancesOutput :: DescribeInstancesOutput
newDescribeInstancesOutput  = DescribeInstancesOutput { "Instances": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeInstancesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeInstancesOutput' :: ( { "Instances" :: NullOrUndefined (InstanceList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"Instances" :: NullOrUndefined (InstanceList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeInstancesOutput
newDescribeInstancesOutput'  customize = (DescribeInstancesOutput <<< customize) { "Instances": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype DescribeMatchmakingConfigurationsInput = DescribeMatchmakingConfigurationsInput 
  { "Names" :: NullOrUndefined (MatchmakingIdList)
  , "RuleSetName" :: NullOrUndefined (MatchmakingIdStringModel)
  , "Limit" :: NullOrUndefined (PositiveInteger)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeMatchmakingConfigurationsInput :: Newtype DescribeMatchmakingConfigurationsInput _
derive instance repGenericDescribeMatchmakingConfigurationsInput :: Generic DescribeMatchmakingConfigurationsInput _
instance showDescribeMatchmakingConfigurationsInput :: Show DescribeMatchmakingConfigurationsInput where show = genericShow
instance decodeDescribeMatchmakingConfigurationsInput :: Decode DescribeMatchmakingConfigurationsInput where decode = genericDecode options
instance encodeDescribeMatchmakingConfigurationsInput :: Encode DescribeMatchmakingConfigurationsInput where encode = genericEncode options

-- | Constructs DescribeMatchmakingConfigurationsInput from required parameters
newDescribeMatchmakingConfigurationsInput :: DescribeMatchmakingConfigurationsInput
newDescribeMatchmakingConfigurationsInput  = DescribeMatchmakingConfigurationsInput { "Limit": (NullOrUndefined Nothing), "Names": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "RuleSetName": (NullOrUndefined Nothing) }

-- | Constructs DescribeMatchmakingConfigurationsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeMatchmakingConfigurationsInput' :: ( { "Names" :: NullOrUndefined (MatchmakingIdList) , "RuleSetName" :: NullOrUndefined (MatchmakingIdStringModel) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"Names" :: NullOrUndefined (MatchmakingIdList) , "RuleSetName" :: NullOrUndefined (MatchmakingIdStringModel) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeMatchmakingConfigurationsInput
newDescribeMatchmakingConfigurationsInput'  customize = (DescribeMatchmakingConfigurationsInput <<< customize) { "Limit": (NullOrUndefined Nothing), "Names": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "RuleSetName": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype DescribeMatchmakingConfigurationsOutput = DescribeMatchmakingConfigurationsOutput 
  { "Configurations" :: NullOrUndefined (MatchmakingConfigurationList)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeMatchmakingConfigurationsOutput :: Newtype DescribeMatchmakingConfigurationsOutput _
derive instance repGenericDescribeMatchmakingConfigurationsOutput :: Generic DescribeMatchmakingConfigurationsOutput _
instance showDescribeMatchmakingConfigurationsOutput :: Show DescribeMatchmakingConfigurationsOutput where show = genericShow
instance decodeDescribeMatchmakingConfigurationsOutput :: Decode DescribeMatchmakingConfigurationsOutput where decode = genericDecode options
instance encodeDescribeMatchmakingConfigurationsOutput :: Encode DescribeMatchmakingConfigurationsOutput where encode = genericEncode options

-- | Constructs DescribeMatchmakingConfigurationsOutput from required parameters
newDescribeMatchmakingConfigurationsOutput :: DescribeMatchmakingConfigurationsOutput
newDescribeMatchmakingConfigurationsOutput  = DescribeMatchmakingConfigurationsOutput { "Configurations": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeMatchmakingConfigurationsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeMatchmakingConfigurationsOutput' :: ( { "Configurations" :: NullOrUndefined (MatchmakingConfigurationList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"Configurations" :: NullOrUndefined (MatchmakingConfigurationList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeMatchmakingConfigurationsOutput
newDescribeMatchmakingConfigurationsOutput'  customize = (DescribeMatchmakingConfigurationsOutput <<< customize) { "Configurations": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype DescribeMatchmakingInput = DescribeMatchmakingInput 
  { "TicketIds" :: (MatchmakingIdList)
  }
derive instance newtypeDescribeMatchmakingInput :: Newtype DescribeMatchmakingInput _
derive instance repGenericDescribeMatchmakingInput :: Generic DescribeMatchmakingInput _
instance showDescribeMatchmakingInput :: Show DescribeMatchmakingInput where show = genericShow
instance decodeDescribeMatchmakingInput :: Decode DescribeMatchmakingInput where decode = genericDecode options
instance encodeDescribeMatchmakingInput :: Encode DescribeMatchmakingInput where encode = genericEncode options

-- | Constructs DescribeMatchmakingInput from required parameters
newDescribeMatchmakingInput :: MatchmakingIdList -> DescribeMatchmakingInput
newDescribeMatchmakingInput _TicketIds = DescribeMatchmakingInput { "TicketIds": _TicketIds }

-- | Constructs DescribeMatchmakingInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeMatchmakingInput' :: MatchmakingIdList -> ( { "TicketIds" :: (MatchmakingIdList) } -> {"TicketIds" :: (MatchmakingIdList) } ) -> DescribeMatchmakingInput
newDescribeMatchmakingInput' _TicketIds customize = (DescribeMatchmakingInput <<< customize) { "TicketIds": _TicketIds }



-- | <p>Represents the returned data in response to a request action.</p>
newtype DescribeMatchmakingOutput = DescribeMatchmakingOutput 
  { "TicketList" :: NullOrUndefined (MatchmakingTicketList)
  }
derive instance newtypeDescribeMatchmakingOutput :: Newtype DescribeMatchmakingOutput _
derive instance repGenericDescribeMatchmakingOutput :: Generic DescribeMatchmakingOutput _
instance showDescribeMatchmakingOutput :: Show DescribeMatchmakingOutput where show = genericShow
instance decodeDescribeMatchmakingOutput :: Decode DescribeMatchmakingOutput where decode = genericDecode options
instance encodeDescribeMatchmakingOutput :: Encode DescribeMatchmakingOutput where encode = genericEncode options

-- | Constructs DescribeMatchmakingOutput from required parameters
newDescribeMatchmakingOutput :: DescribeMatchmakingOutput
newDescribeMatchmakingOutput  = DescribeMatchmakingOutput { "TicketList": (NullOrUndefined Nothing) }

-- | Constructs DescribeMatchmakingOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeMatchmakingOutput' :: ( { "TicketList" :: NullOrUndefined (MatchmakingTicketList) } -> {"TicketList" :: NullOrUndefined (MatchmakingTicketList) } ) -> DescribeMatchmakingOutput
newDescribeMatchmakingOutput'  customize = (DescribeMatchmakingOutput <<< customize) { "TicketList": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype DescribeMatchmakingRuleSetsInput = DescribeMatchmakingRuleSetsInput 
  { "Names" :: NullOrUndefined (MatchmakingRuleSetNameList)
  , "Limit" :: NullOrUndefined (RuleSetLimit)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeMatchmakingRuleSetsInput :: Newtype DescribeMatchmakingRuleSetsInput _
derive instance repGenericDescribeMatchmakingRuleSetsInput :: Generic DescribeMatchmakingRuleSetsInput _
instance showDescribeMatchmakingRuleSetsInput :: Show DescribeMatchmakingRuleSetsInput where show = genericShow
instance decodeDescribeMatchmakingRuleSetsInput :: Decode DescribeMatchmakingRuleSetsInput where decode = genericDecode options
instance encodeDescribeMatchmakingRuleSetsInput :: Encode DescribeMatchmakingRuleSetsInput where encode = genericEncode options

-- | Constructs DescribeMatchmakingRuleSetsInput from required parameters
newDescribeMatchmakingRuleSetsInput :: DescribeMatchmakingRuleSetsInput
newDescribeMatchmakingRuleSetsInput  = DescribeMatchmakingRuleSetsInput { "Limit": (NullOrUndefined Nothing), "Names": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeMatchmakingRuleSetsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeMatchmakingRuleSetsInput' :: ( { "Names" :: NullOrUndefined (MatchmakingRuleSetNameList) , "Limit" :: NullOrUndefined (RuleSetLimit) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"Names" :: NullOrUndefined (MatchmakingRuleSetNameList) , "Limit" :: NullOrUndefined (RuleSetLimit) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeMatchmakingRuleSetsInput
newDescribeMatchmakingRuleSetsInput'  customize = (DescribeMatchmakingRuleSetsInput <<< customize) { "Limit": (NullOrUndefined Nothing), "Names": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype DescribeMatchmakingRuleSetsOutput = DescribeMatchmakingRuleSetsOutput 
  { "RuleSets" :: (MatchmakingRuleSetList)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeMatchmakingRuleSetsOutput :: Newtype DescribeMatchmakingRuleSetsOutput _
derive instance repGenericDescribeMatchmakingRuleSetsOutput :: Generic DescribeMatchmakingRuleSetsOutput _
instance showDescribeMatchmakingRuleSetsOutput :: Show DescribeMatchmakingRuleSetsOutput where show = genericShow
instance decodeDescribeMatchmakingRuleSetsOutput :: Decode DescribeMatchmakingRuleSetsOutput where decode = genericDecode options
instance encodeDescribeMatchmakingRuleSetsOutput :: Encode DescribeMatchmakingRuleSetsOutput where encode = genericEncode options

-- | Constructs DescribeMatchmakingRuleSetsOutput from required parameters
newDescribeMatchmakingRuleSetsOutput :: MatchmakingRuleSetList -> DescribeMatchmakingRuleSetsOutput
newDescribeMatchmakingRuleSetsOutput _RuleSets = DescribeMatchmakingRuleSetsOutput { "RuleSets": _RuleSets, "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeMatchmakingRuleSetsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeMatchmakingRuleSetsOutput' :: MatchmakingRuleSetList -> ( { "RuleSets" :: (MatchmakingRuleSetList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"RuleSets" :: (MatchmakingRuleSetList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeMatchmakingRuleSetsOutput
newDescribeMatchmakingRuleSetsOutput' _RuleSets customize = (DescribeMatchmakingRuleSetsOutput <<< customize) { "RuleSets": _RuleSets, "NextToken": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype DescribePlayerSessionsInput = DescribePlayerSessionsInput 
  { "GameSessionId" :: NullOrUndefined (ArnStringModel)
  , "PlayerId" :: NullOrUndefined (NonZeroAndMaxString)
  , "PlayerSessionId" :: NullOrUndefined (PlayerSessionId)
  , "PlayerSessionStatusFilter" :: NullOrUndefined (NonZeroAndMaxString)
  , "Limit" :: NullOrUndefined (PositiveInteger)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribePlayerSessionsInput :: Newtype DescribePlayerSessionsInput _
derive instance repGenericDescribePlayerSessionsInput :: Generic DescribePlayerSessionsInput _
instance showDescribePlayerSessionsInput :: Show DescribePlayerSessionsInput where show = genericShow
instance decodeDescribePlayerSessionsInput :: Decode DescribePlayerSessionsInput where decode = genericDecode options
instance encodeDescribePlayerSessionsInput :: Encode DescribePlayerSessionsInput where encode = genericEncode options

-- | Constructs DescribePlayerSessionsInput from required parameters
newDescribePlayerSessionsInput :: DescribePlayerSessionsInput
newDescribePlayerSessionsInput  = DescribePlayerSessionsInput { "GameSessionId": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "PlayerId": (NullOrUndefined Nothing), "PlayerSessionId": (NullOrUndefined Nothing), "PlayerSessionStatusFilter": (NullOrUndefined Nothing) }

-- | Constructs DescribePlayerSessionsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribePlayerSessionsInput' :: ( { "GameSessionId" :: NullOrUndefined (ArnStringModel) , "PlayerId" :: NullOrUndefined (NonZeroAndMaxString) , "PlayerSessionId" :: NullOrUndefined (PlayerSessionId) , "PlayerSessionStatusFilter" :: NullOrUndefined (NonZeroAndMaxString) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"GameSessionId" :: NullOrUndefined (ArnStringModel) , "PlayerId" :: NullOrUndefined (NonZeroAndMaxString) , "PlayerSessionId" :: NullOrUndefined (PlayerSessionId) , "PlayerSessionStatusFilter" :: NullOrUndefined (NonZeroAndMaxString) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribePlayerSessionsInput
newDescribePlayerSessionsInput'  customize = (DescribePlayerSessionsInput <<< customize) { "GameSessionId": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "PlayerId": (NullOrUndefined Nothing), "PlayerSessionId": (NullOrUndefined Nothing), "PlayerSessionStatusFilter": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype DescribePlayerSessionsOutput = DescribePlayerSessionsOutput 
  { "PlayerSessions" :: NullOrUndefined (PlayerSessionList)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribePlayerSessionsOutput :: Newtype DescribePlayerSessionsOutput _
derive instance repGenericDescribePlayerSessionsOutput :: Generic DescribePlayerSessionsOutput _
instance showDescribePlayerSessionsOutput :: Show DescribePlayerSessionsOutput where show = genericShow
instance decodeDescribePlayerSessionsOutput :: Decode DescribePlayerSessionsOutput where decode = genericDecode options
instance encodeDescribePlayerSessionsOutput :: Encode DescribePlayerSessionsOutput where encode = genericEncode options

-- | Constructs DescribePlayerSessionsOutput from required parameters
newDescribePlayerSessionsOutput :: DescribePlayerSessionsOutput
newDescribePlayerSessionsOutput  = DescribePlayerSessionsOutput { "NextToken": (NullOrUndefined Nothing), "PlayerSessions": (NullOrUndefined Nothing) }

-- | Constructs DescribePlayerSessionsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribePlayerSessionsOutput' :: ( { "PlayerSessions" :: NullOrUndefined (PlayerSessionList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"PlayerSessions" :: NullOrUndefined (PlayerSessionList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribePlayerSessionsOutput
newDescribePlayerSessionsOutput'  customize = (DescribePlayerSessionsOutput <<< customize) { "NextToken": (NullOrUndefined Nothing), "PlayerSessions": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype DescribeRuntimeConfigurationInput = DescribeRuntimeConfigurationInput 
  { "FleetId" :: (FleetId)
  }
derive instance newtypeDescribeRuntimeConfigurationInput :: Newtype DescribeRuntimeConfigurationInput _
derive instance repGenericDescribeRuntimeConfigurationInput :: Generic DescribeRuntimeConfigurationInput _
instance showDescribeRuntimeConfigurationInput :: Show DescribeRuntimeConfigurationInput where show = genericShow
instance decodeDescribeRuntimeConfigurationInput :: Decode DescribeRuntimeConfigurationInput where decode = genericDecode options
instance encodeDescribeRuntimeConfigurationInput :: Encode DescribeRuntimeConfigurationInput where encode = genericEncode options

-- | Constructs DescribeRuntimeConfigurationInput from required parameters
newDescribeRuntimeConfigurationInput :: FleetId -> DescribeRuntimeConfigurationInput
newDescribeRuntimeConfigurationInput _FleetId = DescribeRuntimeConfigurationInput { "FleetId": _FleetId }

-- | Constructs DescribeRuntimeConfigurationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRuntimeConfigurationInput' :: FleetId -> ( { "FleetId" :: (FleetId) } -> {"FleetId" :: (FleetId) } ) -> DescribeRuntimeConfigurationInput
newDescribeRuntimeConfigurationInput' _FleetId customize = (DescribeRuntimeConfigurationInput <<< customize) { "FleetId": _FleetId }



-- | <p>Represents the returned data in response to a request action.</p>
newtype DescribeRuntimeConfigurationOutput = DescribeRuntimeConfigurationOutput 
  { "RuntimeConfiguration" :: NullOrUndefined (RuntimeConfiguration)
  }
derive instance newtypeDescribeRuntimeConfigurationOutput :: Newtype DescribeRuntimeConfigurationOutput _
derive instance repGenericDescribeRuntimeConfigurationOutput :: Generic DescribeRuntimeConfigurationOutput _
instance showDescribeRuntimeConfigurationOutput :: Show DescribeRuntimeConfigurationOutput where show = genericShow
instance decodeDescribeRuntimeConfigurationOutput :: Decode DescribeRuntimeConfigurationOutput where decode = genericDecode options
instance encodeDescribeRuntimeConfigurationOutput :: Encode DescribeRuntimeConfigurationOutput where encode = genericEncode options

-- | Constructs DescribeRuntimeConfigurationOutput from required parameters
newDescribeRuntimeConfigurationOutput :: DescribeRuntimeConfigurationOutput
newDescribeRuntimeConfigurationOutput  = DescribeRuntimeConfigurationOutput { "RuntimeConfiguration": (NullOrUndefined Nothing) }

-- | Constructs DescribeRuntimeConfigurationOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRuntimeConfigurationOutput' :: ( { "RuntimeConfiguration" :: NullOrUndefined (RuntimeConfiguration) } -> {"RuntimeConfiguration" :: NullOrUndefined (RuntimeConfiguration) } ) -> DescribeRuntimeConfigurationOutput
newDescribeRuntimeConfigurationOutput'  customize = (DescribeRuntimeConfigurationOutput <<< customize) { "RuntimeConfiguration": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype DescribeScalingPoliciesInput = DescribeScalingPoliciesInput 
  { "FleetId" :: (FleetId)
  , "StatusFilter" :: NullOrUndefined (ScalingStatusType)
  , "Limit" :: NullOrUndefined (PositiveInteger)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeScalingPoliciesInput :: Newtype DescribeScalingPoliciesInput _
derive instance repGenericDescribeScalingPoliciesInput :: Generic DescribeScalingPoliciesInput _
instance showDescribeScalingPoliciesInput :: Show DescribeScalingPoliciesInput where show = genericShow
instance decodeDescribeScalingPoliciesInput :: Decode DescribeScalingPoliciesInput where decode = genericDecode options
instance encodeDescribeScalingPoliciesInput :: Encode DescribeScalingPoliciesInput where encode = genericEncode options

-- | Constructs DescribeScalingPoliciesInput from required parameters
newDescribeScalingPoliciesInput :: FleetId -> DescribeScalingPoliciesInput
newDescribeScalingPoliciesInput _FleetId = DescribeScalingPoliciesInput { "FleetId": _FleetId, "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "StatusFilter": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalingPoliciesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalingPoliciesInput' :: FleetId -> ( { "FleetId" :: (FleetId) , "StatusFilter" :: NullOrUndefined (ScalingStatusType) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"FleetId" :: (FleetId) , "StatusFilter" :: NullOrUndefined (ScalingStatusType) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeScalingPoliciesInput
newDescribeScalingPoliciesInput' _FleetId customize = (DescribeScalingPoliciesInput <<< customize) { "FleetId": _FleetId, "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "StatusFilter": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype DescribeScalingPoliciesOutput = DescribeScalingPoliciesOutput 
  { "ScalingPolicies" :: NullOrUndefined (ScalingPolicyList)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeDescribeScalingPoliciesOutput :: Newtype DescribeScalingPoliciesOutput _
derive instance repGenericDescribeScalingPoliciesOutput :: Generic DescribeScalingPoliciesOutput _
instance showDescribeScalingPoliciesOutput :: Show DescribeScalingPoliciesOutput where show = genericShow
instance decodeDescribeScalingPoliciesOutput :: Decode DescribeScalingPoliciesOutput where decode = genericDecode options
instance encodeDescribeScalingPoliciesOutput :: Encode DescribeScalingPoliciesOutput where encode = genericEncode options

-- | Constructs DescribeScalingPoliciesOutput from required parameters
newDescribeScalingPoliciesOutput :: DescribeScalingPoliciesOutput
newDescribeScalingPoliciesOutput  = DescribeScalingPoliciesOutput { "NextToken": (NullOrUndefined Nothing), "ScalingPolicies": (NullOrUndefined Nothing) }

-- | Constructs DescribeScalingPoliciesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeScalingPoliciesOutput' :: ( { "ScalingPolicies" :: NullOrUndefined (ScalingPolicyList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"ScalingPolicies" :: NullOrUndefined (ScalingPolicyList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> DescribeScalingPoliciesOutput
newDescribeScalingPoliciesOutput'  customize = (DescribeScalingPoliciesOutput <<< customize) { "NextToken": (NullOrUndefined Nothing), "ScalingPolicies": (NullOrUndefined Nothing) }



newtype DescribeVpcPeeringAuthorizationsInput = DescribeVpcPeeringAuthorizationsInput Types.NoArguments
derive instance newtypeDescribeVpcPeeringAuthorizationsInput :: Newtype DescribeVpcPeeringAuthorizationsInput _
derive instance repGenericDescribeVpcPeeringAuthorizationsInput :: Generic DescribeVpcPeeringAuthorizationsInput _
instance showDescribeVpcPeeringAuthorizationsInput :: Show DescribeVpcPeeringAuthorizationsInput where show = genericShow
instance decodeDescribeVpcPeeringAuthorizationsInput :: Decode DescribeVpcPeeringAuthorizationsInput where decode = genericDecode options
instance encodeDescribeVpcPeeringAuthorizationsInput :: Encode DescribeVpcPeeringAuthorizationsInput where encode = genericEncode options



newtype DescribeVpcPeeringAuthorizationsOutput = DescribeVpcPeeringAuthorizationsOutput 
  { "VpcPeeringAuthorizations" :: NullOrUndefined (VpcPeeringAuthorizationList)
  }
derive instance newtypeDescribeVpcPeeringAuthorizationsOutput :: Newtype DescribeVpcPeeringAuthorizationsOutput _
derive instance repGenericDescribeVpcPeeringAuthorizationsOutput :: Generic DescribeVpcPeeringAuthorizationsOutput _
instance showDescribeVpcPeeringAuthorizationsOutput :: Show DescribeVpcPeeringAuthorizationsOutput where show = genericShow
instance decodeDescribeVpcPeeringAuthorizationsOutput :: Decode DescribeVpcPeeringAuthorizationsOutput where decode = genericDecode options
instance encodeDescribeVpcPeeringAuthorizationsOutput :: Encode DescribeVpcPeeringAuthorizationsOutput where encode = genericEncode options

-- | Constructs DescribeVpcPeeringAuthorizationsOutput from required parameters
newDescribeVpcPeeringAuthorizationsOutput :: DescribeVpcPeeringAuthorizationsOutput
newDescribeVpcPeeringAuthorizationsOutput  = DescribeVpcPeeringAuthorizationsOutput { "VpcPeeringAuthorizations": (NullOrUndefined Nothing) }

-- | Constructs DescribeVpcPeeringAuthorizationsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeVpcPeeringAuthorizationsOutput' :: ( { "VpcPeeringAuthorizations" :: NullOrUndefined (VpcPeeringAuthorizationList) } -> {"VpcPeeringAuthorizations" :: NullOrUndefined (VpcPeeringAuthorizationList) } ) -> DescribeVpcPeeringAuthorizationsOutput
newDescribeVpcPeeringAuthorizationsOutput'  customize = (DescribeVpcPeeringAuthorizationsOutput <<< customize) { "VpcPeeringAuthorizations": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype DescribeVpcPeeringConnectionsInput = DescribeVpcPeeringConnectionsInput 
  { "FleetId" :: NullOrUndefined (FleetId)
  }
derive instance newtypeDescribeVpcPeeringConnectionsInput :: Newtype DescribeVpcPeeringConnectionsInput _
derive instance repGenericDescribeVpcPeeringConnectionsInput :: Generic DescribeVpcPeeringConnectionsInput _
instance showDescribeVpcPeeringConnectionsInput :: Show DescribeVpcPeeringConnectionsInput where show = genericShow
instance decodeDescribeVpcPeeringConnectionsInput :: Decode DescribeVpcPeeringConnectionsInput where decode = genericDecode options
instance encodeDescribeVpcPeeringConnectionsInput :: Encode DescribeVpcPeeringConnectionsInput where encode = genericEncode options

-- | Constructs DescribeVpcPeeringConnectionsInput from required parameters
newDescribeVpcPeeringConnectionsInput :: DescribeVpcPeeringConnectionsInput
newDescribeVpcPeeringConnectionsInput  = DescribeVpcPeeringConnectionsInput { "FleetId": (NullOrUndefined Nothing) }

-- | Constructs DescribeVpcPeeringConnectionsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeVpcPeeringConnectionsInput' :: ( { "FleetId" :: NullOrUndefined (FleetId) } -> {"FleetId" :: NullOrUndefined (FleetId) } ) -> DescribeVpcPeeringConnectionsInput
newDescribeVpcPeeringConnectionsInput'  customize = (DescribeVpcPeeringConnectionsInput <<< customize) { "FleetId": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype DescribeVpcPeeringConnectionsOutput = DescribeVpcPeeringConnectionsOutput 
  { "VpcPeeringConnections" :: NullOrUndefined (VpcPeeringConnectionList)
  }
derive instance newtypeDescribeVpcPeeringConnectionsOutput :: Newtype DescribeVpcPeeringConnectionsOutput _
derive instance repGenericDescribeVpcPeeringConnectionsOutput :: Generic DescribeVpcPeeringConnectionsOutput _
instance showDescribeVpcPeeringConnectionsOutput :: Show DescribeVpcPeeringConnectionsOutput where show = genericShow
instance decodeDescribeVpcPeeringConnectionsOutput :: Decode DescribeVpcPeeringConnectionsOutput where decode = genericDecode options
instance encodeDescribeVpcPeeringConnectionsOutput :: Encode DescribeVpcPeeringConnectionsOutput where encode = genericEncode options

-- | Constructs DescribeVpcPeeringConnectionsOutput from required parameters
newDescribeVpcPeeringConnectionsOutput :: DescribeVpcPeeringConnectionsOutput
newDescribeVpcPeeringConnectionsOutput  = DescribeVpcPeeringConnectionsOutput { "VpcPeeringConnections": (NullOrUndefined Nothing) }

-- | Constructs DescribeVpcPeeringConnectionsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeVpcPeeringConnectionsOutput' :: ( { "VpcPeeringConnections" :: NullOrUndefined (VpcPeeringConnectionList) } -> {"VpcPeeringConnections" :: NullOrUndefined (VpcPeeringConnectionList) } ) -> DescribeVpcPeeringConnectionsOutput
newDescribeVpcPeeringConnectionsOutput'  customize = (DescribeVpcPeeringConnectionsOutput <<< customize) { "VpcPeeringConnections": (NullOrUndefined Nothing) }



-- | <p>Player information for use when creating player sessions using a game session placement request with <a>StartGameSessionPlacement</a>.</p>
newtype DesiredPlayerSession = DesiredPlayerSession 
  { "PlayerId" :: NullOrUndefined (NonZeroAndMaxString)
  , "PlayerData" :: NullOrUndefined (PlayerData)
  }
derive instance newtypeDesiredPlayerSession :: Newtype DesiredPlayerSession _
derive instance repGenericDesiredPlayerSession :: Generic DesiredPlayerSession _
instance showDesiredPlayerSession :: Show DesiredPlayerSession where show = genericShow
instance decodeDesiredPlayerSession :: Decode DesiredPlayerSession where decode = genericDecode options
instance encodeDesiredPlayerSession :: Encode DesiredPlayerSession where encode = genericEncode options

-- | Constructs DesiredPlayerSession from required parameters
newDesiredPlayerSession :: DesiredPlayerSession
newDesiredPlayerSession  = DesiredPlayerSession { "PlayerData": (NullOrUndefined Nothing), "PlayerId": (NullOrUndefined Nothing) }

-- | Constructs DesiredPlayerSession's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDesiredPlayerSession' :: ( { "PlayerId" :: NullOrUndefined (NonZeroAndMaxString) , "PlayerData" :: NullOrUndefined (PlayerData) } -> {"PlayerId" :: NullOrUndefined (NonZeroAndMaxString) , "PlayerData" :: NullOrUndefined (PlayerData) } ) -> DesiredPlayerSession
newDesiredPlayerSession'  customize = (DesiredPlayerSession <<< customize) { "PlayerData": (NullOrUndefined Nothing), "PlayerId": (NullOrUndefined Nothing) }



newtype DesiredPlayerSessionList = DesiredPlayerSessionList (Array DesiredPlayerSession)
derive instance newtypeDesiredPlayerSessionList :: Newtype DesiredPlayerSessionList _
derive instance repGenericDesiredPlayerSessionList :: Generic DesiredPlayerSessionList _
instance showDesiredPlayerSessionList :: Show DesiredPlayerSessionList where show = genericShow
instance decodeDesiredPlayerSessionList :: Decode DesiredPlayerSessionList where decode = genericDecode options
instance encodeDesiredPlayerSessionList :: Encode DesiredPlayerSessionList where encode = genericEncode options



newtype DoubleObject = DoubleObject Number
derive instance newtypeDoubleObject :: Newtype DoubleObject _
derive instance repGenericDoubleObject :: Generic DoubleObject _
instance showDoubleObject :: Show DoubleObject where show = genericShow
instance decodeDoubleObject :: Decode DoubleObject where decode = genericDecode options
instance encodeDoubleObject :: Encode DoubleObject where encode = genericEncode options



-- | <p>Current status of fleet capacity. The number of active instances should match or be in the process of matching the number of desired instances. Pending and terminating counts are non-zero only if fleet capacity is adjusting to an <a>UpdateFleetCapacity</a> request, or if access to resources is temporarily affected.</p> <p>Fleet-related operations include:</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet capacity:</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>PutScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (automatic scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> </ul> </li> <li> <p> <a>DeleteFleet</a> </p> </li> </ul>
newtype EC2InstanceCounts = EC2InstanceCounts 
  { "DESIRED" :: NullOrUndefined (WholeNumber)
  , "MINIMUM" :: NullOrUndefined (WholeNumber)
  , "MAXIMUM" :: NullOrUndefined (WholeNumber)
  , "PENDING" :: NullOrUndefined (WholeNumber)
  , "ACTIVE" :: NullOrUndefined (WholeNumber)
  , "IDLE" :: NullOrUndefined (WholeNumber)
  , "TERMINATING" :: NullOrUndefined (WholeNumber)
  }
derive instance newtypeEC2InstanceCounts :: Newtype EC2InstanceCounts _
derive instance repGenericEC2InstanceCounts :: Generic EC2InstanceCounts _
instance showEC2InstanceCounts :: Show EC2InstanceCounts where show = genericShow
instance decodeEC2InstanceCounts :: Decode EC2InstanceCounts where decode = genericDecode options
instance encodeEC2InstanceCounts :: Encode EC2InstanceCounts where encode = genericEncode options

-- | Constructs EC2InstanceCounts from required parameters
newEC2InstanceCounts :: EC2InstanceCounts
newEC2InstanceCounts  = EC2InstanceCounts { "ACTIVE": (NullOrUndefined Nothing), "DESIRED": (NullOrUndefined Nothing), "IDLE": (NullOrUndefined Nothing), "MAXIMUM": (NullOrUndefined Nothing), "MINIMUM": (NullOrUndefined Nothing), "PENDING": (NullOrUndefined Nothing), "TERMINATING": (NullOrUndefined Nothing) }

-- | Constructs EC2InstanceCounts's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEC2InstanceCounts' :: ( { "DESIRED" :: NullOrUndefined (WholeNumber) , "MINIMUM" :: NullOrUndefined (WholeNumber) , "MAXIMUM" :: NullOrUndefined (WholeNumber) , "PENDING" :: NullOrUndefined (WholeNumber) , "ACTIVE" :: NullOrUndefined (WholeNumber) , "IDLE" :: NullOrUndefined (WholeNumber) , "TERMINATING" :: NullOrUndefined (WholeNumber) } -> {"DESIRED" :: NullOrUndefined (WholeNumber) , "MINIMUM" :: NullOrUndefined (WholeNumber) , "MAXIMUM" :: NullOrUndefined (WholeNumber) , "PENDING" :: NullOrUndefined (WholeNumber) , "ACTIVE" :: NullOrUndefined (WholeNumber) , "IDLE" :: NullOrUndefined (WholeNumber) , "TERMINATING" :: NullOrUndefined (WholeNumber) } ) -> EC2InstanceCounts
newEC2InstanceCounts'  customize = (EC2InstanceCounts <<< customize) { "ACTIVE": (NullOrUndefined Nothing), "DESIRED": (NullOrUndefined Nothing), "IDLE": (NullOrUndefined Nothing), "MAXIMUM": (NullOrUndefined Nothing), "MINIMUM": (NullOrUndefined Nothing), "PENDING": (NullOrUndefined Nothing), "TERMINATING": (NullOrUndefined Nothing) }



-- | <p>Maximum number of instances allowed based on the Amazon Elastic Compute Cloud (Amazon EC2) instance type. Instance limits can be retrieved by calling <a>DescribeEC2InstanceLimits</a>.</p>
newtype EC2InstanceLimit = EC2InstanceLimit 
  { "EC2InstanceType" :: NullOrUndefined (EC2InstanceType)
  , "CurrentInstances" :: NullOrUndefined (WholeNumber)
  , "InstanceLimit" :: NullOrUndefined (WholeNumber)
  }
derive instance newtypeEC2InstanceLimit :: Newtype EC2InstanceLimit _
derive instance repGenericEC2InstanceLimit :: Generic EC2InstanceLimit _
instance showEC2InstanceLimit :: Show EC2InstanceLimit where show = genericShow
instance decodeEC2InstanceLimit :: Decode EC2InstanceLimit where decode = genericDecode options
instance encodeEC2InstanceLimit :: Encode EC2InstanceLimit where encode = genericEncode options

-- | Constructs EC2InstanceLimit from required parameters
newEC2InstanceLimit :: EC2InstanceLimit
newEC2InstanceLimit  = EC2InstanceLimit { "CurrentInstances": (NullOrUndefined Nothing), "EC2InstanceType": (NullOrUndefined Nothing), "InstanceLimit": (NullOrUndefined Nothing) }

-- | Constructs EC2InstanceLimit's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEC2InstanceLimit' :: ( { "EC2InstanceType" :: NullOrUndefined (EC2InstanceType) , "CurrentInstances" :: NullOrUndefined (WholeNumber) , "InstanceLimit" :: NullOrUndefined (WholeNumber) } -> {"EC2InstanceType" :: NullOrUndefined (EC2InstanceType) , "CurrentInstances" :: NullOrUndefined (WholeNumber) , "InstanceLimit" :: NullOrUndefined (WholeNumber) } ) -> EC2InstanceLimit
newEC2InstanceLimit'  customize = (EC2InstanceLimit <<< customize) { "CurrentInstances": (NullOrUndefined Nothing), "EC2InstanceType": (NullOrUndefined Nothing), "InstanceLimit": (NullOrUndefined Nothing) }



newtype EC2InstanceLimitList = EC2InstanceLimitList (Array EC2InstanceLimit)
derive instance newtypeEC2InstanceLimitList :: Newtype EC2InstanceLimitList _
derive instance repGenericEC2InstanceLimitList :: Generic EC2InstanceLimitList _
instance showEC2InstanceLimitList :: Show EC2InstanceLimitList where show = genericShow
instance decodeEC2InstanceLimitList :: Decode EC2InstanceLimitList where decode = genericDecode options
instance encodeEC2InstanceLimitList :: Encode EC2InstanceLimitList where encode = genericEncode options



newtype EC2InstanceType = EC2InstanceType String
derive instance newtypeEC2InstanceType :: Newtype EC2InstanceType _
derive instance repGenericEC2InstanceType :: Generic EC2InstanceType _
instance showEC2InstanceType :: Show EC2InstanceType where show = genericShow
instance decodeEC2InstanceType :: Decode EC2InstanceType where decode = genericDecode options
instance encodeEC2InstanceType :: Encode EC2InstanceType where encode = genericEncode options



-- | <p>Log entry describing an event that involves Amazon GameLift resources (such as a fleet). In addition to tracking activity, event codes and messages can provide additional information for troubleshooting and debugging problems.</p>
newtype Event = Event 
  { "EventId" :: NullOrUndefined (NonZeroAndMaxString)
  , "ResourceId" :: NullOrUndefined (NonZeroAndMaxString)
  , "EventCode" :: NullOrUndefined (EventCode)
  , "Message" :: NullOrUndefined (NonEmptyString)
  , "EventTime" :: NullOrUndefined (Types.Timestamp)
  , "PreSignedLogUrl" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeEvent :: Newtype Event _
derive instance repGenericEvent :: Generic Event _
instance showEvent :: Show Event where show = genericShow
instance decodeEvent :: Decode Event where decode = genericDecode options
instance encodeEvent :: Encode Event where encode = genericEncode options

-- | Constructs Event from required parameters
newEvent :: Event
newEvent  = Event { "EventCode": (NullOrUndefined Nothing), "EventId": (NullOrUndefined Nothing), "EventTime": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "PreSignedLogUrl": (NullOrUndefined Nothing), "ResourceId": (NullOrUndefined Nothing) }

-- | Constructs Event's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEvent' :: ( { "EventId" :: NullOrUndefined (NonZeroAndMaxString) , "ResourceId" :: NullOrUndefined (NonZeroAndMaxString) , "EventCode" :: NullOrUndefined (EventCode) , "Message" :: NullOrUndefined (NonEmptyString) , "EventTime" :: NullOrUndefined (Types.Timestamp) , "PreSignedLogUrl" :: NullOrUndefined (NonZeroAndMaxString) } -> {"EventId" :: NullOrUndefined (NonZeroAndMaxString) , "ResourceId" :: NullOrUndefined (NonZeroAndMaxString) , "EventCode" :: NullOrUndefined (EventCode) , "Message" :: NullOrUndefined (NonEmptyString) , "EventTime" :: NullOrUndefined (Types.Timestamp) , "PreSignedLogUrl" :: NullOrUndefined (NonZeroAndMaxString) } ) -> Event
newEvent'  customize = (Event <<< customize) { "EventCode": (NullOrUndefined Nothing), "EventId": (NullOrUndefined Nothing), "EventTime": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "PreSignedLogUrl": (NullOrUndefined Nothing), "ResourceId": (NullOrUndefined Nothing) }



newtype EventCode = EventCode String
derive instance newtypeEventCode :: Newtype EventCode _
derive instance repGenericEventCode :: Generic EventCode _
instance showEventCode :: Show EventCode where show = genericShow
instance decodeEventCode :: Decode EventCode where decode = genericDecode options
instance encodeEventCode :: Encode EventCode where encode = genericEncode options



newtype EventList = EventList (Array Event)
derive instance newtypeEventList :: Newtype EventList _
derive instance repGenericEventList :: Generic EventList _
instance showEventList :: Show EventList where show = genericShow
instance decodeEventList :: Decode EventList where decode = genericDecode options
instance encodeEventList :: Encode EventList where encode = genericEncode options



-- | <p>General properties describing a fleet.</p> <p>Fleet-related operations include:</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet capacity:</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>PutScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (automatic scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> </ul> </li> <li> <p> <a>DeleteFleet</a> </p> </li> </ul>
newtype FleetAttributes = FleetAttributes 
  { "FleetId" :: NullOrUndefined (FleetId)
  , "FleetArn" :: NullOrUndefined (ArnStringModel)
  , "FleetType" :: NullOrUndefined (FleetType)
  , "InstanceType" :: NullOrUndefined (EC2InstanceType)
  , "Description" :: NullOrUndefined (NonZeroAndMaxString)
  , "Name" :: NullOrUndefined (NonZeroAndMaxString)
  , "CreationTime" :: NullOrUndefined (Types.Timestamp)
  , "TerminationTime" :: NullOrUndefined (Types.Timestamp)
  , "Status" :: NullOrUndefined (FleetStatus)
  , "BuildId" :: NullOrUndefined (BuildId)
  , "ServerLaunchPath" :: NullOrUndefined (NonZeroAndMaxString)
  , "ServerLaunchParameters" :: NullOrUndefined (NonZeroAndMaxString)
  , "LogPaths" :: NullOrUndefined (StringList)
  , "NewGameSessionProtectionPolicy" :: NullOrUndefined (ProtectionPolicy)
  , "OperatingSystem" :: NullOrUndefined (OperatingSystem)
  , "ResourceCreationLimitPolicy" :: NullOrUndefined (ResourceCreationLimitPolicy)
  , "MetricGroups" :: NullOrUndefined (MetricGroupList)
  }
derive instance newtypeFleetAttributes :: Newtype FleetAttributes _
derive instance repGenericFleetAttributes :: Generic FleetAttributes _
instance showFleetAttributes :: Show FleetAttributes where show = genericShow
instance decodeFleetAttributes :: Decode FleetAttributes where decode = genericDecode options
instance encodeFleetAttributes :: Encode FleetAttributes where encode = genericEncode options

-- | Constructs FleetAttributes from required parameters
newFleetAttributes :: FleetAttributes
newFleetAttributes  = FleetAttributes { "BuildId": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "FleetArn": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "FleetType": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing), "LogPaths": (NullOrUndefined Nothing), "MetricGroups": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "NewGameSessionProtectionPolicy": (NullOrUndefined Nothing), "OperatingSystem": (NullOrUndefined Nothing), "ResourceCreationLimitPolicy": (NullOrUndefined Nothing), "ServerLaunchParameters": (NullOrUndefined Nothing), "ServerLaunchPath": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "TerminationTime": (NullOrUndefined Nothing) }

-- | Constructs FleetAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFleetAttributes' :: ( { "FleetId" :: NullOrUndefined (FleetId) , "FleetArn" :: NullOrUndefined (ArnStringModel) , "FleetType" :: NullOrUndefined (FleetType) , "InstanceType" :: NullOrUndefined (EC2InstanceType) , "Description" :: NullOrUndefined (NonZeroAndMaxString) , "Name" :: NullOrUndefined (NonZeroAndMaxString) , "CreationTime" :: NullOrUndefined (Types.Timestamp) , "TerminationTime" :: NullOrUndefined (Types.Timestamp) , "Status" :: NullOrUndefined (FleetStatus) , "BuildId" :: NullOrUndefined (BuildId) , "ServerLaunchPath" :: NullOrUndefined (NonZeroAndMaxString) , "ServerLaunchParameters" :: NullOrUndefined (NonZeroAndMaxString) , "LogPaths" :: NullOrUndefined (StringList) , "NewGameSessionProtectionPolicy" :: NullOrUndefined (ProtectionPolicy) , "OperatingSystem" :: NullOrUndefined (OperatingSystem) , "ResourceCreationLimitPolicy" :: NullOrUndefined (ResourceCreationLimitPolicy) , "MetricGroups" :: NullOrUndefined (MetricGroupList) } -> {"FleetId" :: NullOrUndefined (FleetId) , "FleetArn" :: NullOrUndefined (ArnStringModel) , "FleetType" :: NullOrUndefined (FleetType) , "InstanceType" :: NullOrUndefined (EC2InstanceType) , "Description" :: NullOrUndefined (NonZeroAndMaxString) , "Name" :: NullOrUndefined (NonZeroAndMaxString) , "CreationTime" :: NullOrUndefined (Types.Timestamp) , "TerminationTime" :: NullOrUndefined (Types.Timestamp) , "Status" :: NullOrUndefined (FleetStatus) , "BuildId" :: NullOrUndefined (BuildId) , "ServerLaunchPath" :: NullOrUndefined (NonZeroAndMaxString) , "ServerLaunchParameters" :: NullOrUndefined (NonZeroAndMaxString) , "LogPaths" :: NullOrUndefined (StringList) , "NewGameSessionProtectionPolicy" :: NullOrUndefined (ProtectionPolicy) , "OperatingSystem" :: NullOrUndefined (OperatingSystem) , "ResourceCreationLimitPolicy" :: NullOrUndefined (ResourceCreationLimitPolicy) , "MetricGroups" :: NullOrUndefined (MetricGroupList) } ) -> FleetAttributes
newFleetAttributes'  customize = (FleetAttributes <<< customize) { "BuildId": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "FleetArn": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "FleetType": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing), "LogPaths": (NullOrUndefined Nothing), "MetricGroups": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "NewGameSessionProtectionPolicy": (NullOrUndefined Nothing), "OperatingSystem": (NullOrUndefined Nothing), "ResourceCreationLimitPolicy": (NullOrUndefined Nothing), "ServerLaunchParameters": (NullOrUndefined Nothing), "ServerLaunchPath": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "TerminationTime": (NullOrUndefined Nothing) }



newtype FleetAttributesList = FleetAttributesList (Array FleetAttributes)
derive instance newtypeFleetAttributesList :: Newtype FleetAttributesList _
derive instance repGenericFleetAttributesList :: Generic FleetAttributesList _
instance showFleetAttributesList :: Show FleetAttributesList where show = genericShow
instance decodeFleetAttributesList :: Decode FleetAttributesList where decode = genericDecode options
instance encodeFleetAttributesList :: Encode FleetAttributesList where encode = genericEncode options



-- | <p>Information about the fleet's capacity. Fleet capacity is measured in EC2 instances. By default, new fleets have a capacity of one instance, but can be updated as needed. The maximum number of instances for a fleet is determined by the fleet's instance type.</p> <p>Fleet-related operations include:</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet capacity:</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>PutScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (automatic scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> </ul> </li> <li> <p> <a>DeleteFleet</a> </p> </li> </ul>
newtype FleetCapacity = FleetCapacity 
  { "FleetId" :: NullOrUndefined (FleetId)
  , "InstanceType" :: NullOrUndefined (EC2InstanceType)
  , "InstanceCounts" :: NullOrUndefined (EC2InstanceCounts)
  }
derive instance newtypeFleetCapacity :: Newtype FleetCapacity _
derive instance repGenericFleetCapacity :: Generic FleetCapacity _
instance showFleetCapacity :: Show FleetCapacity where show = genericShow
instance decodeFleetCapacity :: Decode FleetCapacity where decode = genericDecode options
instance encodeFleetCapacity :: Encode FleetCapacity where encode = genericEncode options

-- | Constructs FleetCapacity from required parameters
newFleetCapacity :: FleetCapacity
newFleetCapacity  = FleetCapacity { "FleetId": (NullOrUndefined Nothing), "InstanceCounts": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing) }

-- | Constructs FleetCapacity's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFleetCapacity' :: ( { "FleetId" :: NullOrUndefined (FleetId) , "InstanceType" :: NullOrUndefined (EC2InstanceType) , "InstanceCounts" :: NullOrUndefined (EC2InstanceCounts) } -> {"FleetId" :: NullOrUndefined (FleetId) , "InstanceType" :: NullOrUndefined (EC2InstanceType) , "InstanceCounts" :: NullOrUndefined (EC2InstanceCounts) } ) -> FleetCapacity
newFleetCapacity'  customize = (FleetCapacity <<< customize) { "FleetId": (NullOrUndefined Nothing), "InstanceCounts": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing) }



-- | <p>The specified fleet has no available instances to fulfill a <code>CreateGameSession</code> request. Clients can retry such requests immediately or after a waiting period.</p>
newtype FleetCapacityExceededException = FleetCapacityExceededException 
  { "Message" :: NullOrUndefined (NonEmptyString)
  }
derive instance newtypeFleetCapacityExceededException :: Newtype FleetCapacityExceededException _
derive instance repGenericFleetCapacityExceededException :: Generic FleetCapacityExceededException _
instance showFleetCapacityExceededException :: Show FleetCapacityExceededException where show = genericShow
instance decodeFleetCapacityExceededException :: Decode FleetCapacityExceededException where decode = genericDecode options
instance encodeFleetCapacityExceededException :: Encode FleetCapacityExceededException where encode = genericEncode options

-- | Constructs FleetCapacityExceededException from required parameters
newFleetCapacityExceededException :: FleetCapacityExceededException
newFleetCapacityExceededException  = FleetCapacityExceededException { "Message": (NullOrUndefined Nothing) }

-- | Constructs FleetCapacityExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFleetCapacityExceededException' :: ( { "Message" :: NullOrUndefined (NonEmptyString) } -> {"Message" :: NullOrUndefined (NonEmptyString) } ) -> FleetCapacityExceededException
newFleetCapacityExceededException'  customize = (FleetCapacityExceededException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype FleetCapacityList = FleetCapacityList (Array FleetCapacity)
derive instance newtypeFleetCapacityList :: Newtype FleetCapacityList _
derive instance repGenericFleetCapacityList :: Generic FleetCapacityList _
instance showFleetCapacityList :: Show FleetCapacityList where show = genericShow
instance decodeFleetCapacityList :: Decode FleetCapacityList where decode = genericDecode options
instance encodeFleetCapacityList :: Encode FleetCapacityList where encode = genericEncode options



newtype FleetId = FleetId String
derive instance newtypeFleetId :: Newtype FleetId _
derive instance repGenericFleetId :: Generic FleetId _
instance showFleetId :: Show FleetId where show = genericShow
instance decodeFleetId :: Decode FleetId where decode = genericDecode options
instance encodeFleetId :: Encode FleetId where encode = genericEncode options



newtype FleetIdList = FleetIdList (Array FleetId)
derive instance newtypeFleetIdList :: Newtype FleetIdList _
derive instance repGenericFleetIdList :: Generic FleetIdList _
instance showFleetIdList :: Show FleetIdList where show = genericShow
instance decodeFleetIdList :: Decode FleetIdList where decode = genericDecode options
instance encodeFleetIdList :: Encode FleetIdList where encode = genericEncode options



newtype FleetStatus = FleetStatus String
derive instance newtypeFleetStatus :: Newtype FleetStatus _
derive instance repGenericFleetStatus :: Generic FleetStatus _
instance showFleetStatus :: Show FleetStatus where show = genericShow
instance decodeFleetStatus :: Decode FleetStatus where decode = genericDecode options
instance encodeFleetStatus :: Encode FleetStatus where encode = genericEncode options



newtype FleetType = FleetType String
derive instance newtypeFleetType :: Newtype FleetType _
derive instance repGenericFleetType :: Generic FleetType _
instance showFleetType :: Show FleetType where show = genericShow
instance decodeFleetType :: Decode FleetType where decode = genericDecode options
instance encodeFleetType :: Encode FleetType where encode = genericEncode options



-- | <p>Current status of fleet utilization, including the number of game and player sessions being hosted.</p> <p>Fleet-related operations include:</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet capacity:</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>PutScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (automatic scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> </ul> </li> <li> <p> <a>DeleteFleet</a> </p> </li> </ul>
newtype FleetUtilization = FleetUtilization 
  { "FleetId" :: NullOrUndefined (FleetId)
  , "ActiveServerProcessCount" :: NullOrUndefined (WholeNumber)
  , "ActiveGameSessionCount" :: NullOrUndefined (WholeNumber)
  , "CurrentPlayerSessionCount" :: NullOrUndefined (WholeNumber)
  , "MaximumPlayerSessionCount" :: NullOrUndefined (WholeNumber)
  }
derive instance newtypeFleetUtilization :: Newtype FleetUtilization _
derive instance repGenericFleetUtilization :: Generic FleetUtilization _
instance showFleetUtilization :: Show FleetUtilization where show = genericShow
instance decodeFleetUtilization :: Decode FleetUtilization where decode = genericDecode options
instance encodeFleetUtilization :: Encode FleetUtilization where encode = genericEncode options

-- | Constructs FleetUtilization from required parameters
newFleetUtilization :: FleetUtilization
newFleetUtilization  = FleetUtilization { "ActiveGameSessionCount": (NullOrUndefined Nothing), "ActiveServerProcessCount": (NullOrUndefined Nothing), "CurrentPlayerSessionCount": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "MaximumPlayerSessionCount": (NullOrUndefined Nothing) }

-- | Constructs FleetUtilization's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFleetUtilization' :: ( { "FleetId" :: NullOrUndefined (FleetId) , "ActiveServerProcessCount" :: NullOrUndefined (WholeNumber) , "ActiveGameSessionCount" :: NullOrUndefined (WholeNumber) , "CurrentPlayerSessionCount" :: NullOrUndefined (WholeNumber) , "MaximumPlayerSessionCount" :: NullOrUndefined (WholeNumber) } -> {"FleetId" :: NullOrUndefined (FleetId) , "ActiveServerProcessCount" :: NullOrUndefined (WholeNumber) , "ActiveGameSessionCount" :: NullOrUndefined (WholeNumber) , "CurrentPlayerSessionCount" :: NullOrUndefined (WholeNumber) , "MaximumPlayerSessionCount" :: NullOrUndefined (WholeNumber) } ) -> FleetUtilization
newFleetUtilization'  customize = (FleetUtilization <<< customize) { "ActiveGameSessionCount": (NullOrUndefined Nothing), "ActiveServerProcessCount": (NullOrUndefined Nothing), "CurrentPlayerSessionCount": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "MaximumPlayerSessionCount": (NullOrUndefined Nothing) }



newtype FleetUtilizationList = FleetUtilizationList (Array FleetUtilization)
derive instance newtypeFleetUtilizationList :: Newtype FleetUtilizationList _
derive instance repGenericFleetUtilizationList :: Generic FleetUtilizationList _
instance showFleetUtilizationList :: Show FleetUtilizationList where show = genericShow
instance decodeFleetUtilizationList :: Decode FleetUtilizationList where decode = genericDecode options
instance encodeFleetUtilizationList :: Encode FleetUtilizationList where encode = genericEncode options



newtype FreeText = FreeText String
derive instance newtypeFreeText :: Newtype FreeText _
derive instance repGenericFreeText :: Generic FreeText _
instance showFreeText :: Show FreeText where show = genericShow
instance decodeFreeText :: Decode FreeText where decode = genericDecode options
instance encodeFreeText :: Encode FreeText where encode = genericEncode options



-- | <p>Set of key-value pairs that contain information about a game session. When included in a game session request, these properties communicate details to be used when setting up the new game session, such as to specify a game mode, level, or map. Game properties are passed to the game server process when initiating a new game session; the server process uses the properties as appropriate. For more information, see the <a href="http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-create"> Amazon GameLift Developer Guide</a>.</p>
newtype GameProperty = GameProperty 
  { "Key" :: (GamePropertyKey)
  , "Value" :: (GamePropertyValue)
  }
derive instance newtypeGameProperty :: Newtype GameProperty _
derive instance repGenericGameProperty :: Generic GameProperty _
instance showGameProperty :: Show GameProperty where show = genericShow
instance decodeGameProperty :: Decode GameProperty where decode = genericDecode options
instance encodeGameProperty :: Encode GameProperty where encode = genericEncode options

-- | Constructs GameProperty from required parameters
newGameProperty :: GamePropertyKey -> GamePropertyValue -> GameProperty
newGameProperty _Key _Value = GameProperty { "Key": _Key, "Value": _Value }

-- | Constructs GameProperty's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGameProperty' :: GamePropertyKey -> GamePropertyValue -> ( { "Key" :: (GamePropertyKey) , "Value" :: (GamePropertyValue) } -> {"Key" :: (GamePropertyKey) , "Value" :: (GamePropertyValue) } ) -> GameProperty
newGameProperty' _Key _Value customize = (GameProperty <<< customize) { "Key": _Key, "Value": _Value }



newtype GamePropertyKey = GamePropertyKey String
derive instance newtypeGamePropertyKey :: Newtype GamePropertyKey _
derive instance repGenericGamePropertyKey :: Generic GamePropertyKey _
instance showGamePropertyKey :: Show GamePropertyKey where show = genericShow
instance decodeGamePropertyKey :: Decode GamePropertyKey where decode = genericDecode options
instance encodeGamePropertyKey :: Encode GamePropertyKey where encode = genericEncode options



newtype GamePropertyList = GamePropertyList (Array GameProperty)
derive instance newtypeGamePropertyList :: Newtype GamePropertyList _
derive instance repGenericGamePropertyList :: Generic GamePropertyList _
instance showGamePropertyList :: Show GamePropertyList where show = genericShow
instance decodeGamePropertyList :: Decode GamePropertyList where decode = genericDecode options
instance encodeGamePropertyList :: Encode GamePropertyList where encode = genericEncode options



newtype GamePropertyValue = GamePropertyValue String
derive instance newtypeGamePropertyValue :: Newtype GamePropertyValue _
derive instance repGenericGamePropertyValue :: Generic GamePropertyValue _
instance showGamePropertyValue :: Show GamePropertyValue where show = genericShow
instance decodeGamePropertyValue :: Decode GamePropertyValue where decode = genericDecode options
instance encodeGamePropertyValue :: Encode GamePropertyValue where encode = genericEncode options



-- | <p>Properties describing a game session.</p> <p>A game session in ACTIVE status can host players. When a game session ends, its status is set to <code>TERMINATED</code>. </p> <p>Once the session ends, the game session object is retained for 30 days. This means you can reuse idempotency token values after this time. Game session logs are retained for 14 days.</p> <p>Game-session-related operations include:</p> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>
newtype GameSession = GameSession 
  { "GameSessionId" :: NullOrUndefined (NonZeroAndMaxString)
  , "Name" :: NullOrUndefined (NonZeroAndMaxString)
  , "FleetId" :: NullOrUndefined (FleetId)
  , "CreationTime" :: NullOrUndefined (Types.Timestamp)
  , "TerminationTime" :: NullOrUndefined (Types.Timestamp)
  , "CurrentPlayerSessionCount" :: NullOrUndefined (WholeNumber)
  , "MaximumPlayerSessionCount" :: NullOrUndefined (WholeNumber)
  , "Status" :: NullOrUndefined (GameSessionStatus)
  , "StatusReason" :: NullOrUndefined (GameSessionStatusReason)
  , "GameProperties" :: NullOrUndefined (GamePropertyList)
  , "IpAddress" :: NullOrUndefined (IpAddress)
  , "Port" :: NullOrUndefined (PortNumber)
  , "PlayerSessionCreationPolicy" :: NullOrUndefined (PlayerSessionCreationPolicy)
  , "CreatorId" :: NullOrUndefined (NonZeroAndMaxString)
  , "GameSessionData" :: NullOrUndefined (GameSessionData)
  , "MatchmakerData" :: NullOrUndefined (MatchmakerData)
  }
derive instance newtypeGameSession :: Newtype GameSession _
derive instance repGenericGameSession :: Generic GameSession _
instance showGameSession :: Show GameSession where show = genericShow
instance decodeGameSession :: Decode GameSession where decode = genericDecode options
instance encodeGameSession :: Encode GameSession where encode = genericEncode options

-- | Constructs GameSession from required parameters
newGameSession :: GameSession
newGameSession  = GameSession { "CreationTime": (NullOrUndefined Nothing), "CreatorId": (NullOrUndefined Nothing), "CurrentPlayerSessionCount": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "GameProperties": (NullOrUndefined Nothing), "GameSessionData": (NullOrUndefined Nothing), "GameSessionId": (NullOrUndefined Nothing), "IpAddress": (NullOrUndefined Nothing), "MatchmakerData": (NullOrUndefined Nothing), "MaximumPlayerSessionCount": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "PlayerSessionCreationPolicy": (NullOrUndefined Nothing), "Port": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "StatusReason": (NullOrUndefined Nothing), "TerminationTime": (NullOrUndefined Nothing) }

-- | Constructs GameSession's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGameSession' :: ( { "GameSessionId" :: NullOrUndefined (NonZeroAndMaxString) , "Name" :: NullOrUndefined (NonZeroAndMaxString) , "FleetId" :: NullOrUndefined (FleetId) , "CreationTime" :: NullOrUndefined (Types.Timestamp) , "TerminationTime" :: NullOrUndefined (Types.Timestamp) , "CurrentPlayerSessionCount" :: NullOrUndefined (WholeNumber) , "MaximumPlayerSessionCount" :: NullOrUndefined (WholeNumber) , "Status" :: NullOrUndefined (GameSessionStatus) , "StatusReason" :: NullOrUndefined (GameSessionStatusReason) , "GameProperties" :: NullOrUndefined (GamePropertyList) , "IpAddress" :: NullOrUndefined (IpAddress) , "Port" :: NullOrUndefined (PortNumber) , "PlayerSessionCreationPolicy" :: NullOrUndefined (PlayerSessionCreationPolicy) , "CreatorId" :: NullOrUndefined (NonZeroAndMaxString) , "GameSessionData" :: NullOrUndefined (GameSessionData) , "MatchmakerData" :: NullOrUndefined (MatchmakerData) } -> {"GameSessionId" :: NullOrUndefined (NonZeroAndMaxString) , "Name" :: NullOrUndefined (NonZeroAndMaxString) , "FleetId" :: NullOrUndefined (FleetId) , "CreationTime" :: NullOrUndefined (Types.Timestamp) , "TerminationTime" :: NullOrUndefined (Types.Timestamp) , "CurrentPlayerSessionCount" :: NullOrUndefined (WholeNumber) , "MaximumPlayerSessionCount" :: NullOrUndefined (WholeNumber) , "Status" :: NullOrUndefined (GameSessionStatus) , "StatusReason" :: NullOrUndefined (GameSessionStatusReason) , "GameProperties" :: NullOrUndefined (GamePropertyList) , "IpAddress" :: NullOrUndefined (IpAddress) , "Port" :: NullOrUndefined (PortNumber) , "PlayerSessionCreationPolicy" :: NullOrUndefined (PlayerSessionCreationPolicy) , "CreatorId" :: NullOrUndefined (NonZeroAndMaxString) , "GameSessionData" :: NullOrUndefined (GameSessionData) , "MatchmakerData" :: NullOrUndefined (MatchmakerData) } ) -> GameSession
newGameSession'  customize = (GameSession <<< customize) { "CreationTime": (NullOrUndefined Nothing), "CreatorId": (NullOrUndefined Nothing), "CurrentPlayerSessionCount": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "GameProperties": (NullOrUndefined Nothing), "GameSessionData": (NullOrUndefined Nothing), "GameSessionId": (NullOrUndefined Nothing), "IpAddress": (NullOrUndefined Nothing), "MatchmakerData": (NullOrUndefined Nothing), "MaximumPlayerSessionCount": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "PlayerSessionCreationPolicy": (NullOrUndefined Nothing), "Port": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "StatusReason": (NullOrUndefined Nothing), "TerminationTime": (NullOrUndefined Nothing) }



newtype GameSessionActivationTimeoutSeconds = GameSessionActivationTimeoutSeconds Int
derive instance newtypeGameSessionActivationTimeoutSeconds :: Newtype GameSessionActivationTimeoutSeconds _
derive instance repGenericGameSessionActivationTimeoutSeconds :: Generic GameSessionActivationTimeoutSeconds _
instance showGameSessionActivationTimeoutSeconds :: Show GameSessionActivationTimeoutSeconds where show = genericShow
instance decodeGameSessionActivationTimeoutSeconds :: Decode GameSessionActivationTimeoutSeconds where decode = genericDecode options
instance encodeGameSessionActivationTimeoutSeconds :: Encode GameSessionActivationTimeoutSeconds where encode = genericEncode options



-- | <p>Connection information for the new game session that is created with matchmaking. (with <a>StartMatchmaking</a>). Once a match is set, the FlexMatch engine places the match and creates a new game session for it. This information, including the game session endpoint and player sessions for each player in the original matchmaking request, is added to the <a>MatchmakingTicket</a>, which can be retrieved by calling <a>DescribeMatchmaking</a>.</p>
newtype GameSessionConnectionInfo = GameSessionConnectionInfo 
  { "GameSessionArn" :: NullOrUndefined (ArnStringModel)
  , "IpAddress" :: NullOrUndefined (StringModel)
  , "Port" :: NullOrUndefined (PositiveInteger)
  , "MatchedPlayerSessions" :: NullOrUndefined (MatchedPlayerSessionList)
  }
derive instance newtypeGameSessionConnectionInfo :: Newtype GameSessionConnectionInfo _
derive instance repGenericGameSessionConnectionInfo :: Generic GameSessionConnectionInfo _
instance showGameSessionConnectionInfo :: Show GameSessionConnectionInfo where show = genericShow
instance decodeGameSessionConnectionInfo :: Decode GameSessionConnectionInfo where decode = genericDecode options
instance encodeGameSessionConnectionInfo :: Encode GameSessionConnectionInfo where encode = genericEncode options

-- | Constructs GameSessionConnectionInfo from required parameters
newGameSessionConnectionInfo :: GameSessionConnectionInfo
newGameSessionConnectionInfo  = GameSessionConnectionInfo { "GameSessionArn": (NullOrUndefined Nothing), "IpAddress": (NullOrUndefined Nothing), "MatchedPlayerSessions": (NullOrUndefined Nothing), "Port": (NullOrUndefined Nothing) }

-- | Constructs GameSessionConnectionInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGameSessionConnectionInfo' :: ( { "GameSessionArn" :: NullOrUndefined (ArnStringModel) , "IpAddress" :: NullOrUndefined (StringModel) , "Port" :: NullOrUndefined (PositiveInteger) , "MatchedPlayerSessions" :: NullOrUndefined (MatchedPlayerSessionList) } -> {"GameSessionArn" :: NullOrUndefined (ArnStringModel) , "IpAddress" :: NullOrUndefined (StringModel) , "Port" :: NullOrUndefined (PositiveInteger) , "MatchedPlayerSessions" :: NullOrUndefined (MatchedPlayerSessionList) } ) -> GameSessionConnectionInfo
newGameSessionConnectionInfo'  customize = (GameSessionConnectionInfo <<< customize) { "GameSessionArn": (NullOrUndefined Nothing), "IpAddress": (NullOrUndefined Nothing), "MatchedPlayerSessions": (NullOrUndefined Nothing), "Port": (NullOrUndefined Nothing) }



newtype GameSessionData = GameSessionData String
derive instance newtypeGameSessionData :: Newtype GameSessionData _
derive instance repGenericGameSessionData :: Generic GameSessionData _
instance showGameSessionData :: Show GameSessionData where show = genericShow
instance decodeGameSessionData :: Decode GameSessionData where decode = genericDecode options
instance encodeGameSessionData :: Encode GameSessionData where encode = genericEncode options



-- | <p>A game session's properties plus the protection policy currently in force.</p>
newtype GameSessionDetail = GameSessionDetail 
  { "GameSession" :: NullOrUndefined (GameSession)
  , "ProtectionPolicy" :: NullOrUndefined (ProtectionPolicy)
  }
derive instance newtypeGameSessionDetail :: Newtype GameSessionDetail _
derive instance repGenericGameSessionDetail :: Generic GameSessionDetail _
instance showGameSessionDetail :: Show GameSessionDetail where show = genericShow
instance decodeGameSessionDetail :: Decode GameSessionDetail where decode = genericDecode options
instance encodeGameSessionDetail :: Encode GameSessionDetail where encode = genericEncode options

-- | Constructs GameSessionDetail from required parameters
newGameSessionDetail :: GameSessionDetail
newGameSessionDetail  = GameSessionDetail { "GameSession": (NullOrUndefined Nothing), "ProtectionPolicy": (NullOrUndefined Nothing) }

-- | Constructs GameSessionDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGameSessionDetail' :: ( { "GameSession" :: NullOrUndefined (GameSession) , "ProtectionPolicy" :: NullOrUndefined (ProtectionPolicy) } -> {"GameSession" :: NullOrUndefined (GameSession) , "ProtectionPolicy" :: NullOrUndefined (ProtectionPolicy) } ) -> GameSessionDetail
newGameSessionDetail'  customize = (GameSessionDetail <<< customize) { "GameSession": (NullOrUndefined Nothing), "ProtectionPolicy": (NullOrUndefined Nothing) }



newtype GameSessionDetailList = GameSessionDetailList (Array GameSessionDetail)
derive instance newtypeGameSessionDetailList :: Newtype GameSessionDetailList _
derive instance repGenericGameSessionDetailList :: Generic GameSessionDetailList _
instance showGameSessionDetailList :: Show GameSessionDetailList where show = genericShow
instance decodeGameSessionDetailList :: Decode GameSessionDetailList where decode = genericDecode options
instance encodeGameSessionDetailList :: Encode GameSessionDetailList where encode = genericEncode options



-- | <p>The game instance is currently full and cannot allow the requested player(s) to join. Clients can retry such requests immediately or after a waiting period.</p>
newtype GameSessionFullException = GameSessionFullException 
  { "Message" :: NullOrUndefined (NonEmptyString)
  }
derive instance newtypeGameSessionFullException :: Newtype GameSessionFullException _
derive instance repGenericGameSessionFullException :: Generic GameSessionFullException _
instance showGameSessionFullException :: Show GameSessionFullException where show = genericShow
instance decodeGameSessionFullException :: Decode GameSessionFullException where decode = genericDecode options
instance encodeGameSessionFullException :: Encode GameSessionFullException where encode = genericEncode options

-- | Constructs GameSessionFullException from required parameters
newGameSessionFullException :: GameSessionFullException
newGameSessionFullException  = GameSessionFullException { "Message": (NullOrUndefined Nothing) }

-- | Constructs GameSessionFullException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGameSessionFullException' :: ( { "Message" :: NullOrUndefined (NonEmptyString) } -> {"Message" :: NullOrUndefined (NonEmptyString) } ) -> GameSessionFullException
newGameSessionFullException'  customize = (GameSessionFullException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype GameSessionList = GameSessionList (Array GameSession)
derive instance newtypeGameSessionList :: Newtype GameSessionList _
derive instance repGenericGameSessionList :: Generic GameSessionList _
instance showGameSessionList :: Show GameSessionList where show = genericShow
instance decodeGameSessionList :: Decode GameSessionList where decode = genericDecode options
instance encodeGameSessionList :: Encode GameSessionList where encode = genericEncode options



-- | <p>Object that describes a <a>StartGameSessionPlacement</a> request. This object includes the full details of the original request plus the current status and start/end time stamps.</p> <p>Game session placement-related operations include:</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul>
newtype GameSessionPlacement = GameSessionPlacement 
  { "PlacementId" :: NullOrUndefined (IdStringModel)
  , "GameSessionQueueName" :: NullOrUndefined (GameSessionQueueName)
  , "Status" :: NullOrUndefined (GameSessionPlacementState)
  , "GameProperties" :: NullOrUndefined (GamePropertyList)
  , "MaximumPlayerSessionCount" :: NullOrUndefined (WholeNumber)
  , "GameSessionName" :: NullOrUndefined (NonZeroAndMaxString)
  , "GameSessionId" :: NullOrUndefined (NonZeroAndMaxString)
  , "GameSessionArn" :: NullOrUndefined (NonZeroAndMaxString)
  , "GameSessionRegion" :: NullOrUndefined (NonZeroAndMaxString)
  , "PlayerLatencies" :: NullOrUndefined (PlayerLatencyList)
  , "StartTime" :: NullOrUndefined (Types.Timestamp)
  , "EndTime" :: NullOrUndefined (Types.Timestamp)
  , "IpAddress" :: NullOrUndefined (IpAddress)
  , "Port" :: NullOrUndefined (PortNumber)
  , "PlacedPlayerSessions" :: NullOrUndefined (PlacedPlayerSessionList)
  , "GameSessionData" :: NullOrUndefined (GameSessionData)
  , "MatchmakerData" :: NullOrUndefined (MatchmakerData)
  }
derive instance newtypeGameSessionPlacement :: Newtype GameSessionPlacement _
derive instance repGenericGameSessionPlacement :: Generic GameSessionPlacement _
instance showGameSessionPlacement :: Show GameSessionPlacement where show = genericShow
instance decodeGameSessionPlacement :: Decode GameSessionPlacement where decode = genericDecode options
instance encodeGameSessionPlacement :: Encode GameSessionPlacement where encode = genericEncode options

-- | Constructs GameSessionPlacement from required parameters
newGameSessionPlacement :: GameSessionPlacement
newGameSessionPlacement  = GameSessionPlacement { "EndTime": (NullOrUndefined Nothing), "GameProperties": (NullOrUndefined Nothing), "GameSessionArn": (NullOrUndefined Nothing), "GameSessionData": (NullOrUndefined Nothing), "GameSessionId": (NullOrUndefined Nothing), "GameSessionName": (NullOrUndefined Nothing), "GameSessionQueueName": (NullOrUndefined Nothing), "GameSessionRegion": (NullOrUndefined Nothing), "IpAddress": (NullOrUndefined Nothing), "MatchmakerData": (NullOrUndefined Nothing), "MaximumPlayerSessionCount": (NullOrUndefined Nothing), "PlacedPlayerSessions": (NullOrUndefined Nothing), "PlacementId": (NullOrUndefined Nothing), "PlayerLatencies": (NullOrUndefined Nothing), "Port": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs GameSessionPlacement's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGameSessionPlacement' :: ( { "PlacementId" :: NullOrUndefined (IdStringModel) , "GameSessionQueueName" :: NullOrUndefined (GameSessionQueueName) , "Status" :: NullOrUndefined (GameSessionPlacementState) , "GameProperties" :: NullOrUndefined (GamePropertyList) , "MaximumPlayerSessionCount" :: NullOrUndefined (WholeNumber) , "GameSessionName" :: NullOrUndefined (NonZeroAndMaxString) , "GameSessionId" :: NullOrUndefined (NonZeroAndMaxString) , "GameSessionArn" :: NullOrUndefined (NonZeroAndMaxString) , "GameSessionRegion" :: NullOrUndefined (NonZeroAndMaxString) , "PlayerLatencies" :: NullOrUndefined (PlayerLatencyList) , "StartTime" :: NullOrUndefined (Types.Timestamp) , "EndTime" :: NullOrUndefined (Types.Timestamp) , "IpAddress" :: NullOrUndefined (IpAddress) , "Port" :: NullOrUndefined (PortNumber) , "PlacedPlayerSessions" :: NullOrUndefined (PlacedPlayerSessionList) , "GameSessionData" :: NullOrUndefined (GameSessionData) , "MatchmakerData" :: NullOrUndefined (MatchmakerData) } -> {"PlacementId" :: NullOrUndefined (IdStringModel) , "GameSessionQueueName" :: NullOrUndefined (GameSessionQueueName) , "Status" :: NullOrUndefined (GameSessionPlacementState) , "GameProperties" :: NullOrUndefined (GamePropertyList) , "MaximumPlayerSessionCount" :: NullOrUndefined (WholeNumber) , "GameSessionName" :: NullOrUndefined (NonZeroAndMaxString) , "GameSessionId" :: NullOrUndefined (NonZeroAndMaxString) , "GameSessionArn" :: NullOrUndefined (NonZeroAndMaxString) , "GameSessionRegion" :: NullOrUndefined (NonZeroAndMaxString) , "PlayerLatencies" :: NullOrUndefined (PlayerLatencyList) , "StartTime" :: NullOrUndefined (Types.Timestamp) , "EndTime" :: NullOrUndefined (Types.Timestamp) , "IpAddress" :: NullOrUndefined (IpAddress) , "Port" :: NullOrUndefined (PortNumber) , "PlacedPlayerSessions" :: NullOrUndefined (PlacedPlayerSessionList) , "GameSessionData" :: NullOrUndefined (GameSessionData) , "MatchmakerData" :: NullOrUndefined (MatchmakerData) } ) -> GameSessionPlacement
newGameSessionPlacement'  customize = (GameSessionPlacement <<< customize) { "EndTime": (NullOrUndefined Nothing), "GameProperties": (NullOrUndefined Nothing), "GameSessionArn": (NullOrUndefined Nothing), "GameSessionData": (NullOrUndefined Nothing), "GameSessionId": (NullOrUndefined Nothing), "GameSessionName": (NullOrUndefined Nothing), "GameSessionQueueName": (NullOrUndefined Nothing), "GameSessionRegion": (NullOrUndefined Nothing), "IpAddress": (NullOrUndefined Nothing), "MatchmakerData": (NullOrUndefined Nothing), "MaximumPlayerSessionCount": (NullOrUndefined Nothing), "PlacedPlayerSessions": (NullOrUndefined Nothing), "PlacementId": (NullOrUndefined Nothing), "PlayerLatencies": (NullOrUndefined Nothing), "Port": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



newtype GameSessionPlacementState = GameSessionPlacementState String
derive instance newtypeGameSessionPlacementState :: Newtype GameSessionPlacementState _
derive instance repGenericGameSessionPlacementState :: Generic GameSessionPlacementState _
instance showGameSessionPlacementState :: Show GameSessionPlacementState where show = genericShow
instance decodeGameSessionPlacementState :: Decode GameSessionPlacementState where decode = genericDecode options
instance encodeGameSessionPlacementState :: Encode GameSessionPlacementState where encode = genericEncode options



-- | <p>Configuration of a queue that is used to process game session placement requests. The queue configuration identifies several game features:</p> <ul> <li> <p>The destinations where a new game session can potentially be hosted. Amazon GameLift tries these destinations in an order based on either the queue's default order or player latency information, if provided in a placement request. With latency information, Amazon GameLift can place game sessions where the majority of players are reporting the lowest possible latency. </p> </li> <li> <p>The length of time that placement requests can wait in the queue before timing out. </p> </li> <li> <p>A set of optional latency policies that protect individual players from high latencies, preventing game sessions from being placed where any individual player is reporting latency higher than a policy's maximum.</p> </li> </ul> <p>Queue-related operations include:</p> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>DescribeGameSessionQueues</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>DeleteGameSessionQueue</a> </p> </li> </ul>
newtype GameSessionQueue = GameSessionQueue 
  { "Name" :: NullOrUndefined (GameSessionQueueName)
  , "GameSessionQueueArn" :: NullOrUndefined (ArnStringModel)
  , "TimeoutInSeconds" :: NullOrUndefined (WholeNumber)
  , "PlayerLatencyPolicies" :: NullOrUndefined (PlayerLatencyPolicyList)
  , "Destinations" :: NullOrUndefined (GameSessionQueueDestinationList)
  }
derive instance newtypeGameSessionQueue :: Newtype GameSessionQueue _
derive instance repGenericGameSessionQueue :: Generic GameSessionQueue _
instance showGameSessionQueue :: Show GameSessionQueue where show = genericShow
instance decodeGameSessionQueue :: Decode GameSessionQueue where decode = genericDecode options
instance encodeGameSessionQueue :: Encode GameSessionQueue where encode = genericEncode options

-- | Constructs GameSessionQueue from required parameters
newGameSessionQueue :: GameSessionQueue
newGameSessionQueue  = GameSessionQueue { "Destinations": (NullOrUndefined Nothing), "GameSessionQueueArn": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "PlayerLatencyPolicies": (NullOrUndefined Nothing), "TimeoutInSeconds": (NullOrUndefined Nothing) }

-- | Constructs GameSessionQueue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGameSessionQueue' :: ( { "Name" :: NullOrUndefined (GameSessionQueueName) , "GameSessionQueueArn" :: NullOrUndefined (ArnStringModel) , "TimeoutInSeconds" :: NullOrUndefined (WholeNumber) , "PlayerLatencyPolicies" :: NullOrUndefined (PlayerLatencyPolicyList) , "Destinations" :: NullOrUndefined (GameSessionQueueDestinationList) } -> {"Name" :: NullOrUndefined (GameSessionQueueName) , "GameSessionQueueArn" :: NullOrUndefined (ArnStringModel) , "TimeoutInSeconds" :: NullOrUndefined (WholeNumber) , "PlayerLatencyPolicies" :: NullOrUndefined (PlayerLatencyPolicyList) , "Destinations" :: NullOrUndefined (GameSessionQueueDestinationList) } ) -> GameSessionQueue
newGameSessionQueue'  customize = (GameSessionQueue <<< customize) { "Destinations": (NullOrUndefined Nothing), "GameSessionQueueArn": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "PlayerLatencyPolicies": (NullOrUndefined Nothing), "TimeoutInSeconds": (NullOrUndefined Nothing) }



-- | <p>Fleet designated in a game session queue. Requests for new game sessions in the queue are fulfilled by starting a new game session on any destination configured for a queue. </p> <p>Queue-related operations include:</p> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>DescribeGameSessionQueues</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>DeleteGameSessionQueue</a> </p> </li> </ul>
newtype GameSessionQueueDestination = GameSessionQueueDestination 
  { "DestinationArn" :: NullOrUndefined (ArnStringModel)
  }
derive instance newtypeGameSessionQueueDestination :: Newtype GameSessionQueueDestination _
derive instance repGenericGameSessionQueueDestination :: Generic GameSessionQueueDestination _
instance showGameSessionQueueDestination :: Show GameSessionQueueDestination where show = genericShow
instance decodeGameSessionQueueDestination :: Decode GameSessionQueueDestination where decode = genericDecode options
instance encodeGameSessionQueueDestination :: Encode GameSessionQueueDestination where encode = genericEncode options

-- | Constructs GameSessionQueueDestination from required parameters
newGameSessionQueueDestination :: GameSessionQueueDestination
newGameSessionQueueDestination  = GameSessionQueueDestination { "DestinationArn": (NullOrUndefined Nothing) }

-- | Constructs GameSessionQueueDestination's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGameSessionQueueDestination' :: ( { "DestinationArn" :: NullOrUndefined (ArnStringModel) } -> {"DestinationArn" :: NullOrUndefined (ArnStringModel) } ) -> GameSessionQueueDestination
newGameSessionQueueDestination'  customize = (GameSessionQueueDestination <<< customize) { "DestinationArn": (NullOrUndefined Nothing) }



newtype GameSessionQueueDestinationList = GameSessionQueueDestinationList (Array GameSessionQueueDestination)
derive instance newtypeGameSessionQueueDestinationList :: Newtype GameSessionQueueDestinationList _
derive instance repGenericGameSessionQueueDestinationList :: Generic GameSessionQueueDestinationList _
instance showGameSessionQueueDestinationList :: Show GameSessionQueueDestinationList where show = genericShow
instance decodeGameSessionQueueDestinationList :: Decode GameSessionQueueDestinationList where decode = genericDecode options
instance encodeGameSessionQueueDestinationList :: Encode GameSessionQueueDestinationList where encode = genericEncode options



newtype GameSessionQueueList = GameSessionQueueList (Array GameSessionQueue)
derive instance newtypeGameSessionQueueList :: Newtype GameSessionQueueList _
derive instance repGenericGameSessionQueueList :: Generic GameSessionQueueList _
instance showGameSessionQueueList :: Show GameSessionQueueList where show = genericShow
instance decodeGameSessionQueueList :: Decode GameSessionQueueList where decode = genericDecode options
instance encodeGameSessionQueueList :: Encode GameSessionQueueList where encode = genericEncode options



newtype GameSessionQueueName = GameSessionQueueName String
derive instance newtypeGameSessionQueueName :: Newtype GameSessionQueueName _
derive instance repGenericGameSessionQueueName :: Generic GameSessionQueueName _
instance showGameSessionQueueName :: Show GameSessionQueueName where show = genericShow
instance decodeGameSessionQueueName :: Decode GameSessionQueueName where decode = genericDecode options
instance encodeGameSessionQueueName :: Encode GameSessionQueueName where encode = genericEncode options



newtype GameSessionQueueNameList = GameSessionQueueNameList (Array GameSessionQueueName)
derive instance newtypeGameSessionQueueNameList :: Newtype GameSessionQueueNameList _
derive instance repGenericGameSessionQueueNameList :: Generic GameSessionQueueNameList _
instance showGameSessionQueueNameList :: Show GameSessionQueueNameList where show = genericShow
instance decodeGameSessionQueueNameList :: Decode GameSessionQueueNameList where decode = genericDecode options
instance encodeGameSessionQueueNameList :: Encode GameSessionQueueNameList where encode = genericEncode options



newtype GameSessionStatus = GameSessionStatus String
derive instance newtypeGameSessionStatus :: Newtype GameSessionStatus _
derive instance repGenericGameSessionStatus :: Generic GameSessionStatus _
instance showGameSessionStatus :: Show GameSessionStatus where show = genericShow
instance decodeGameSessionStatus :: Decode GameSessionStatus where decode = genericDecode options
instance encodeGameSessionStatus :: Encode GameSessionStatus where encode = genericEncode options



newtype GameSessionStatusReason = GameSessionStatusReason String
derive instance newtypeGameSessionStatusReason :: Newtype GameSessionStatusReason _
derive instance repGenericGameSessionStatusReason :: Generic GameSessionStatusReason _
instance showGameSessionStatusReason :: Show GameSessionStatusReason where show = genericShow
instance decodeGameSessionStatusReason :: Decode GameSessionStatusReason where decode = genericDecode options
instance encodeGameSessionStatusReason :: Encode GameSessionStatusReason where encode = genericEncode options



-- | <p>Represents the input for a request action.</p>
newtype GetGameSessionLogUrlInput = GetGameSessionLogUrlInput 
  { "GameSessionId" :: (ArnStringModel)
  }
derive instance newtypeGetGameSessionLogUrlInput :: Newtype GetGameSessionLogUrlInput _
derive instance repGenericGetGameSessionLogUrlInput :: Generic GetGameSessionLogUrlInput _
instance showGetGameSessionLogUrlInput :: Show GetGameSessionLogUrlInput where show = genericShow
instance decodeGetGameSessionLogUrlInput :: Decode GetGameSessionLogUrlInput where decode = genericDecode options
instance encodeGetGameSessionLogUrlInput :: Encode GetGameSessionLogUrlInput where encode = genericEncode options

-- | Constructs GetGameSessionLogUrlInput from required parameters
newGetGameSessionLogUrlInput :: ArnStringModel -> GetGameSessionLogUrlInput
newGetGameSessionLogUrlInput _GameSessionId = GetGameSessionLogUrlInput { "GameSessionId": _GameSessionId }

-- | Constructs GetGameSessionLogUrlInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGameSessionLogUrlInput' :: ArnStringModel -> ( { "GameSessionId" :: (ArnStringModel) } -> {"GameSessionId" :: (ArnStringModel) } ) -> GetGameSessionLogUrlInput
newGetGameSessionLogUrlInput' _GameSessionId customize = (GetGameSessionLogUrlInput <<< customize) { "GameSessionId": _GameSessionId }



-- | <p>Represents the returned data in response to a request action.</p>
newtype GetGameSessionLogUrlOutput = GetGameSessionLogUrlOutput 
  { "PreSignedUrl" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeGetGameSessionLogUrlOutput :: Newtype GetGameSessionLogUrlOutput _
derive instance repGenericGetGameSessionLogUrlOutput :: Generic GetGameSessionLogUrlOutput _
instance showGetGameSessionLogUrlOutput :: Show GetGameSessionLogUrlOutput where show = genericShow
instance decodeGetGameSessionLogUrlOutput :: Decode GetGameSessionLogUrlOutput where decode = genericDecode options
instance encodeGetGameSessionLogUrlOutput :: Encode GetGameSessionLogUrlOutput where encode = genericEncode options

-- | Constructs GetGameSessionLogUrlOutput from required parameters
newGetGameSessionLogUrlOutput :: GetGameSessionLogUrlOutput
newGetGameSessionLogUrlOutput  = GetGameSessionLogUrlOutput { "PreSignedUrl": (NullOrUndefined Nothing) }

-- | Constructs GetGameSessionLogUrlOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGameSessionLogUrlOutput' :: ( { "PreSignedUrl" :: NullOrUndefined (NonZeroAndMaxString) } -> {"PreSignedUrl" :: NullOrUndefined (NonZeroAndMaxString) } ) -> GetGameSessionLogUrlOutput
newGetGameSessionLogUrlOutput'  customize = (GetGameSessionLogUrlOutput <<< customize) { "PreSignedUrl": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype GetInstanceAccessInput = GetInstanceAccessInput 
  { "FleetId" :: (FleetId)
  , "InstanceId" :: (InstanceId)
  }
derive instance newtypeGetInstanceAccessInput :: Newtype GetInstanceAccessInput _
derive instance repGenericGetInstanceAccessInput :: Generic GetInstanceAccessInput _
instance showGetInstanceAccessInput :: Show GetInstanceAccessInput where show = genericShow
instance decodeGetInstanceAccessInput :: Decode GetInstanceAccessInput where decode = genericDecode options
instance encodeGetInstanceAccessInput :: Encode GetInstanceAccessInput where encode = genericEncode options

-- | Constructs GetInstanceAccessInput from required parameters
newGetInstanceAccessInput :: FleetId -> InstanceId -> GetInstanceAccessInput
newGetInstanceAccessInput _FleetId _InstanceId = GetInstanceAccessInput { "FleetId": _FleetId, "InstanceId": _InstanceId }

-- | Constructs GetInstanceAccessInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetInstanceAccessInput' :: FleetId -> InstanceId -> ( { "FleetId" :: (FleetId) , "InstanceId" :: (InstanceId) } -> {"FleetId" :: (FleetId) , "InstanceId" :: (InstanceId) } ) -> GetInstanceAccessInput
newGetInstanceAccessInput' _FleetId _InstanceId customize = (GetInstanceAccessInput <<< customize) { "FleetId": _FleetId, "InstanceId": _InstanceId }



-- | <p>Represents the returned data in response to a request action.</p>
newtype GetInstanceAccessOutput = GetInstanceAccessOutput 
  { "InstanceAccess" :: NullOrUndefined (InstanceAccess)
  }
derive instance newtypeGetInstanceAccessOutput :: Newtype GetInstanceAccessOutput _
derive instance repGenericGetInstanceAccessOutput :: Generic GetInstanceAccessOutput _
instance showGetInstanceAccessOutput :: Show GetInstanceAccessOutput where show = genericShow
instance decodeGetInstanceAccessOutput :: Decode GetInstanceAccessOutput where decode = genericDecode options
instance encodeGetInstanceAccessOutput :: Encode GetInstanceAccessOutput where encode = genericEncode options

-- | Constructs GetInstanceAccessOutput from required parameters
newGetInstanceAccessOutput :: GetInstanceAccessOutput
newGetInstanceAccessOutput  = GetInstanceAccessOutput { "InstanceAccess": (NullOrUndefined Nothing) }

-- | Constructs GetInstanceAccessOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetInstanceAccessOutput' :: ( { "InstanceAccess" :: NullOrUndefined (InstanceAccess) } -> {"InstanceAccess" :: NullOrUndefined (InstanceAccess) } ) -> GetInstanceAccessOutput
newGetInstanceAccessOutput'  customize = (GetInstanceAccessOutput <<< customize) { "InstanceAccess": (NullOrUndefined Nothing) }



newtype IdStringModel = IdStringModel String
derive instance newtypeIdStringModel :: Newtype IdStringModel _
derive instance repGenericIdStringModel :: Generic IdStringModel _
instance showIdStringModel :: Show IdStringModel where show = genericShow
instance decodeIdStringModel :: Decode IdStringModel where decode = genericDecode options
instance encodeIdStringModel :: Encode IdStringModel where encode = genericEncode options



-- | <p>A game session with this custom ID string already exists in this fleet. Resolve this conflict before retrying this request.</p>
newtype IdempotentParameterMismatchException = IdempotentParameterMismatchException 
  { "Message" :: NullOrUndefined (NonEmptyString)
  }
derive instance newtypeIdempotentParameterMismatchException :: Newtype IdempotentParameterMismatchException _
derive instance repGenericIdempotentParameterMismatchException :: Generic IdempotentParameterMismatchException _
instance showIdempotentParameterMismatchException :: Show IdempotentParameterMismatchException where show = genericShow
instance decodeIdempotentParameterMismatchException :: Decode IdempotentParameterMismatchException where decode = genericDecode options
instance encodeIdempotentParameterMismatchException :: Encode IdempotentParameterMismatchException where encode = genericEncode options

-- | Constructs IdempotentParameterMismatchException from required parameters
newIdempotentParameterMismatchException :: IdempotentParameterMismatchException
newIdempotentParameterMismatchException  = IdempotentParameterMismatchException { "Message": (NullOrUndefined Nothing) }

-- | Constructs IdempotentParameterMismatchException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIdempotentParameterMismatchException' :: ( { "Message" :: NullOrUndefined (NonEmptyString) } -> {"Message" :: NullOrUndefined (NonEmptyString) } ) -> IdempotentParameterMismatchException
newIdempotentParameterMismatchException'  customize = (IdempotentParameterMismatchException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Properties that describe an instance of a virtual computing resource that hosts one or more game servers. A fleet may contain zero or more instances.</p>
newtype Instance = Instance 
  { "FleetId" :: NullOrUndefined (FleetId)
  , "InstanceId" :: NullOrUndefined (InstanceId)
  , "IpAddress" :: NullOrUndefined (IpAddress)
  , "OperatingSystem" :: NullOrUndefined (OperatingSystem)
  , "Type" :: NullOrUndefined (EC2InstanceType)
  , "Status" :: NullOrUndefined (InstanceStatus)
  , "CreationTime" :: NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeInstance :: Newtype Instance _
derive instance repGenericInstance :: Generic Instance _
instance showInstance :: Show Instance where show = genericShow
instance decodeInstance :: Decode Instance where decode = genericDecode options
instance encodeInstance :: Encode Instance where encode = genericEncode options

-- | Constructs Instance from required parameters
newInstance :: Instance
newInstance  = Instance { "CreationTime": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing), "IpAddress": (NullOrUndefined Nothing), "OperatingSystem": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs Instance's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstance' :: ( { "FleetId" :: NullOrUndefined (FleetId) , "InstanceId" :: NullOrUndefined (InstanceId) , "IpAddress" :: NullOrUndefined (IpAddress) , "OperatingSystem" :: NullOrUndefined (OperatingSystem) , "Type" :: NullOrUndefined (EC2InstanceType) , "Status" :: NullOrUndefined (InstanceStatus) , "CreationTime" :: NullOrUndefined (Types.Timestamp) } -> {"FleetId" :: NullOrUndefined (FleetId) , "InstanceId" :: NullOrUndefined (InstanceId) , "IpAddress" :: NullOrUndefined (IpAddress) , "OperatingSystem" :: NullOrUndefined (OperatingSystem) , "Type" :: NullOrUndefined (EC2InstanceType) , "Status" :: NullOrUndefined (InstanceStatus) , "CreationTime" :: NullOrUndefined (Types.Timestamp) } ) -> Instance
newInstance'  customize = (Instance <<< customize) { "CreationTime": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing), "IpAddress": (NullOrUndefined Nothing), "OperatingSystem": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



-- | <p>Information required to remotely connect to a fleet instance. Access is requested by calling <a>GetInstanceAccess</a>. </p>
newtype InstanceAccess = InstanceAccess 
  { "FleetId" :: NullOrUndefined (FleetId)
  , "InstanceId" :: NullOrUndefined (InstanceId)
  , "IpAddress" :: NullOrUndefined (IpAddress)
  , "OperatingSystem" :: NullOrUndefined (OperatingSystem)
  , "Credentials" :: NullOrUndefined (InstanceCredentials)
  }
derive instance newtypeInstanceAccess :: Newtype InstanceAccess _
derive instance repGenericInstanceAccess :: Generic InstanceAccess _
instance showInstanceAccess :: Show InstanceAccess where show = genericShow
instance decodeInstanceAccess :: Decode InstanceAccess where decode = genericDecode options
instance encodeInstanceAccess :: Encode InstanceAccess where encode = genericEncode options

-- | Constructs InstanceAccess from required parameters
newInstanceAccess :: InstanceAccess
newInstanceAccess  = InstanceAccess { "Credentials": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing), "IpAddress": (NullOrUndefined Nothing), "OperatingSystem": (NullOrUndefined Nothing) }

-- | Constructs InstanceAccess's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceAccess' :: ( { "FleetId" :: NullOrUndefined (FleetId) , "InstanceId" :: NullOrUndefined (InstanceId) , "IpAddress" :: NullOrUndefined (IpAddress) , "OperatingSystem" :: NullOrUndefined (OperatingSystem) , "Credentials" :: NullOrUndefined (InstanceCredentials) } -> {"FleetId" :: NullOrUndefined (FleetId) , "InstanceId" :: NullOrUndefined (InstanceId) , "IpAddress" :: NullOrUndefined (IpAddress) , "OperatingSystem" :: NullOrUndefined (OperatingSystem) , "Credentials" :: NullOrUndefined (InstanceCredentials) } ) -> InstanceAccess
newInstanceAccess'  customize = (InstanceAccess <<< customize) { "Credentials": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing), "IpAddress": (NullOrUndefined Nothing), "OperatingSystem": (NullOrUndefined Nothing) }



-- | <p>Set of credentials required to remotely access a fleet instance. Access credentials are requested by calling <a>GetInstanceAccess</a> and returned in an <a>InstanceAccess</a> object.</p>
newtype InstanceCredentials = InstanceCredentials 
  { "UserName" :: NullOrUndefined (NonEmptyString)
  , "Secret" :: NullOrUndefined (NonEmptyString)
  }
derive instance newtypeInstanceCredentials :: Newtype InstanceCredentials _
derive instance repGenericInstanceCredentials :: Generic InstanceCredentials _
instance showInstanceCredentials :: Show InstanceCredentials where show = genericShow
instance decodeInstanceCredentials :: Decode InstanceCredentials where decode = genericDecode options
instance encodeInstanceCredentials :: Encode InstanceCredentials where encode = genericEncode options

-- | Constructs InstanceCredentials from required parameters
newInstanceCredentials :: InstanceCredentials
newInstanceCredentials  = InstanceCredentials { "Secret": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing) }

-- | Constructs InstanceCredentials's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceCredentials' :: ( { "UserName" :: NullOrUndefined (NonEmptyString) , "Secret" :: NullOrUndefined (NonEmptyString) } -> {"UserName" :: NullOrUndefined (NonEmptyString) , "Secret" :: NullOrUndefined (NonEmptyString) } ) -> InstanceCredentials
newInstanceCredentials'  customize = (InstanceCredentials <<< customize) { "Secret": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing) }



newtype InstanceId = InstanceId String
derive instance newtypeInstanceId :: Newtype InstanceId _
derive instance repGenericInstanceId :: Generic InstanceId _
instance showInstanceId :: Show InstanceId where show = genericShow
instance decodeInstanceId :: Decode InstanceId where decode = genericDecode options
instance encodeInstanceId :: Encode InstanceId where encode = genericEncode options



newtype InstanceList = InstanceList (Array Instance)
derive instance newtypeInstanceList :: Newtype InstanceList _
derive instance repGenericInstanceList :: Generic InstanceList _
instance showInstanceList :: Show InstanceList where show = genericShow
instance decodeInstanceList :: Decode InstanceList where decode = genericDecode options
instance encodeInstanceList :: Encode InstanceList where encode = genericEncode options



newtype InstanceStatus = InstanceStatus String
derive instance newtypeInstanceStatus :: Newtype InstanceStatus _
derive instance repGenericInstanceStatus :: Generic InstanceStatus _
instance showInstanceStatus :: Show InstanceStatus where show = genericShow
instance decodeInstanceStatus :: Decode InstanceStatus where decode = genericDecode options
instance encodeInstanceStatus :: Encode InstanceStatus where encode = genericEncode options



-- | <p>The service encountered an unrecoverable internal failure while processing the request. Clients can retry such requests immediately or after a waiting period.</p>
newtype InternalServiceException = InternalServiceException 
  { "Message" :: NullOrUndefined (NonEmptyString)
  }
derive instance newtypeInternalServiceException :: Newtype InternalServiceException _
derive instance repGenericInternalServiceException :: Generic InternalServiceException _
instance showInternalServiceException :: Show InternalServiceException where show = genericShow
instance decodeInternalServiceException :: Decode InternalServiceException where decode = genericDecode options
instance encodeInternalServiceException :: Encode InternalServiceException where encode = genericEncode options

-- | Constructs InternalServiceException from required parameters
newInternalServiceException :: InternalServiceException
newInternalServiceException  = InternalServiceException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InternalServiceException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServiceException' :: ( { "Message" :: NullOrUndefined (NonEmptyString) } -> {"Message" :: NullOrUndefined (NonEmptyString) } ) -> InternalServiceException
newInternalServiceException'  customize = (InternalServiceException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The requested operation would cause a conflict with the current state of a resource associated with the request and/or the fleet. Resolve the conflict before retrying.</p>
newtype InvalidFleetStatusException = InvalidFleetStatusException 
  { "Message" :: NullOrUndefined (NonEmptyString)
  }
derive instance newtypeInvalidFleetStatusException :: Newtype InvalidFleetStatusException _
derive instance repGenericInvalidFleetStatusException :: Generic InvalidFleetStatusException _
instance showInvalidFleetStatusException :: Show InvalidFleetStatusException where show = genericShow
instance decodeInvalidFleetStatusException :: Decode InvalidFleetStatusException where decode = genericDecode options
instance encodeInvalidFleetStatusException :: Encode InvalidFleetStatusException where encode = genericEncode options

-- | Constructs InvalidFleetStatusException from required parameters
newInvalidFleetStatusException :: InvalidFleetStatusException
newInvalidFleetStatusException  = InvalidFleetStatusException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidFleetStatusException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidFleetStatusException' :: ( { "Message" :: NullOrUndefined (NonEmptyString) } -> {"Message" :: NullOrUndefined (NonEmptyString) } ) -> InvalidFleetStatusException
newInvalidFleetStatusException'  customize = (InvalidFleetStatusException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The requested operation would cause a conflict with the current state of a resource associated with the request and/or the game instance. Resolve the conflict before retrying.</p>
newtype InvalidGameSessionStatusException = InvalidGameSessionStatusException 
  { "Message" :: NullOrUndefined (NonEmptyString)
  }
derive instance newtypeInvalidGameSessionStatusException :: Newtype InvalidGameSessionStatusException _
derive instance repGenericInvalidGameSessionStatusException :: Generic InvalidGameSessionStatusException _
instance showInvalidGameSessionStatusException :: Show InvalidGameSessionStatusException where show = genericShow
instance decodeInvalidGameSessionStatusException :: Decode InvalidGameSessionStatusException where decode = genericDecode options
instance encodeInvalidGameSessionStatusException :: Encode InvalidGameSessionStatusException where encode = genericEncode options

-- | Constructs InvalidGameSessionStatusException from required parameters
newInvalidGameSessionStatusException :: InvalidGameSessionStatusException
newInvalidGameSessionStatusException  = InvalidGameSessionStatusException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidGameSessionStatusException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidGameSessionStatusException' :: ( { "Message" :: NullOrUndefined (NonEmptyString) } -> {"Message" :: NullOrUndefined (NonEmptyString) } ) -> InvalidGameSessionStatusException
newInvalidGameSessionStatusException'  customize = (InvalidGameSessionStatusException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>One or more parameter values in the request are invalid. Correct the invalid parameter values before retrying.</p>
newtype InvalidRequestException = InvalidRequestException 
  { "Message" :: NullOrUndefined (NonEmptyString)
  }
derive instance newtypeInvalidRequestException :: Newtype InvalidRequestException _
derive instance repGenericInvalidRequestException :: Generic InvalidRequestException _
instance showInvalidRequestException :: Show InvalidRequestException where show = genericShow
instance decodeInvalidRequestException :: Decode InvalidRequestException where decode = genericDecode options
instance encodeInvalidRequestException :: Encode InvalidRequestException where encode = genericEncode options

-- | Constructs InvalidRequestException from required parameters
newInvalidRequestException :: InvalidRequestException
newInvalidRequestException  = InvalidRequestException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidRequestException' :: ( { "Message" :: NullOrUndefined (NonEmptyString) } -> {"Message" :: NullOrUndefined (NonEmptyString) } ) -> InvalidRequestException
newInvalidRequestException'  customize = (InvalidRequestException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype IpAddress = IpAddress String
derive instance newtypeIpAddress :: Newtype IpAddress _
derive instance repGenericIpAddress :: Generic IpAddress _
instance showIpAddress :: Show IpAddress where show = genericShow
instance decodeIpAddress :: Decode IpAddress where decode = genericDecode options
instance encodeIpAddress :: Encode IpAddress where encode = genericEncode options



-- | <p>A range of IP addresses and port settings that allow inbound traffic to connect to server processes on Amazon GameLift. Each game session hosted on a fleet is assigned a unique combination of IP address and port number, which must fall into the fleet's allowed ranges. This combination is included in the <a>GameSession</a> object. </p>
newtype IpPermission = IpPermission 
  { "FromPort" :: (PortNumber)
  , "ToPort" :: (PortNumber)
  , "IpRange" :: (NonBlankString)
  , "Protocol" :: (IpProtocol)
  }
derive instance newtypeIpPermission :: Newtype IpPermission _
derive instance repGenericIpPermission :: Generic IpPermission _
instance showIpPermission :: Show IpPermission where show = genericShow
instance decodeIpPermission :: Decode IpPermission where decode = genericDecode options
instance encodeIpPermission :: Encode IpPermission where encode = genericEncode options

-- | Constructs IpPermission from required parameters
newIpPermission :: PortNumber -> NonBlankString -> IpProtocol -> PortNumber -> IpPermission
newIpPermission _FromPort _IpRange _Protocol _ToPort = IpPermission { "FromPort": _FromPort, "IpRange": _IpRange, "Protocol": _Protocol, "ToPort": _ToPort }

-- | Constructs IpPermission's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIpPermission' :: PortNumber -> NonBlankString -> IpProtocol -> PortNumber -> ( { "FromPort" :: (PortNumber) , "ToPort" :: (PortNumber) , "IpRange" :: (NonBlankString) , "Protocol" :: (IpProtocol) } -> {"FromPort" :: (PortNumber) , "ToPort" :: (PortNumber) , "IpRange" :: (NonBlankString) , "Protocol" :: (IpProtocol) } ) -> IpPermission
newIpPermission' _FromPort _IpRange _Protocol _ToPort customize = (IpPermission <<< customize) { "FromPort": _FromPort, "IpRange": _IpRange, "Protocol": _Protocol, "ToPort": _ToPort }



newtype IpPermissionsList = IpPermissionsList (Array IpPermission)
derive instance newtypeIpPermissionsList :: Newtype IpPermissionsList _
derive instance repGenericIpPermissionsList :: Generic IpPermissionsList _
instance showIpPermissionsList :: Show IpPermissionsList where show = genericShow
instance decodeIpPermissionsList :: Decode IpPermissionsList where decode = genericDecode options
instance encodeIpPermissionsList :: Encode IpPermissionsList where encode = genericEncode options



newtype IpProtocol = IpProtocol String
derive instance newtypeIpProtocol :: Newtype IpProtocol _
derive instance repGenericIpProtocol :: Generic IpProtocol _
instance showIpProtocol :: Show IpProtocol where show = genericShow
instance decodeIpProtocol :: Decode IpProtocol where decode = genericDecode options
instance encodeIpProtocol :: Encode IpProtocol where encode = genericEncode options



newtype LatencyMap = LatencyMap (StrMap.StrMap PositiveInteger)
derive instance newtypeLatencyMap :: Newtype LatencyMap _
derive instance repGenericLatencyMap :: Generic LatencyMap _
instance showLatencyMap :: Show LatencyMap where show = genericShow
instance decodeLatencyMap :: Decode LatencyMap where decode = genericDecode options
instance encodeLatencyMap :: Encode LatencyMap where encode = genericEncode options



-- | <p>The requested operation would cause the resource to exceed the allowed service limit. Resolve the issue before retrying.</p>
newtype LimitExceededException = LimitExceededException 
  { "Message" :: NullOrUndefined (NonEmptyString)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "Message": (NullOrUndefined Nothing) }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "Message" :: NullOrUndefined (NonEmptyString) } -> {"Message" :: NullOrUndefined (NonEmptyString) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype ListAliasesInput = ListAliasesInput 
  { "RoutingStrategyType" :: NullOrUndefined (RoutingStrategyType)
  , "Name" :: NullOrUndefined (NonEmptyString)
  , "Limit" :: NullOrUndefined (PositiveInteger)
  , "NextToken" :: NullOrUndefined (NonEmptyString)
  }
derive instance newtypeListAliasesInput :: Newtype ListAliasesInput _
derive instance repGenericListAliasesInput :: Generic ListAliasesInput _
instance showListAliasesInput :: Show ListAliasesInput where show = genericShow
instance decodeListAliasesInput :: Decode ListAliasesInput where decode = genericDecode options
instance encodeListAliasesInput :: Encode ListAliasesInput where encode = genericEncode options

-- | Constructs ListAliasesInput from required parameters
newListAliasesInput :: ListAliasesInput
newListAliasesInput  = ListAliasesInput { "Limit": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "RoutingStrategyType": (NullOrUndefined Nothing) }

-- | Constructs ListAliasesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAliasesInput' :: ( { "RoutingStrategyType" :: NullOrUndefined (RoutingStrategyType) , "Name" :: NullOrUndefined (NonEmptyString) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonEmptyString) } -> {"RoutingStrategyType" :: NullOrUndefined (RoutingStrategyType) , "Name" :: NullOrUndefined (NonEmptyString) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonEmptyString) } ) -> ListAliasesInput
newListAliasesInput'  customize = (ListAliasesInput <<< customize) { "Limit": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "RoutingStrategyType": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype ListAliasesOutput = ListAliasesOutput 
  { "Aliases" :: NullOrUndefined (AliasList)
  , "NextToken" :: NullOrUndefined (NonEmptyString)
  }
derive instance newtypeListAliasesOutput :: Newtype ListAliasesOutput _
derive instance repGenericListAliasesOutput :: Generic ListAliasesOutput _
instance showListAliasesOutput :: Show ListAliasesOutput where show = genericShow
instance decodeListAliasesOutput :: Decode ListAliasesOutput where decode = genericDecode options
instance encodeListAliasesOutput :: Encode ListAliasesOutput where encode = genericEncode options

-- | Constructs ListAliasesOutput from required parameters
newListAliasesOutput :: ListAliasesOutput
newListAliasesOutput  = ListAliasesOutput { "Aliases": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListAliasesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAliasesOutput' :: ( { "Aliases" :: NullOrUndefined (AliasList) , "NextToken" :: NullOrUndefined (NonEmptyString) } -> {"Aliases" :: NullOrUndefined (AliasList) , "NextToken" :: NullOrUndefined (NonEmptyString) } ) -> ListAliasesOutput
newListAliasesOutput'  customize = (ListAliasesOutput <<< customize) { "Aliases": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype ListBuildsInput = ListBuildsInput 
  { "Status" :: NullOrUndefined (BuildStatus)
  , "Limit" :: NullOrUndefined (PositiveInteger)
  , "NextToken" :: NullOrUndefined (NonEmptyString)
  }
derive instance newtypeListBuildsInput :: Newtype ListBuildsInput _
derive instance repGenericListBuildsInput :: Generic ListBuildsInput _
instance showListBuildsInput :: Show ListBuildsInput where show = genericShow
instance decodeListBuildsInput :: Decode ListBuildsInput where decode = genericDecode options
instance encodeListBuildsInput :: Encode ListBuildsInput where encode = genericEncode options

-- | Constructs ListBuildsInput from required parameters
newListBuildsInput :: ListBuildsInput
newListBuildsInput  = ListBuildsInput { "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs ListBuildsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListBuildsInput' :: ( { "Status" :: NullOrUndefined (BuildStatus) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonEmptyString) } -> {"Status" :: NullOrUndefined (BuildStatus) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonEmptyString) } ) -> ListBuildsInput
newListBuildsInput'  customize = (ListBuildsInput <<< customize) { "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype ListBuildsOutput = ListBuildsOutput 
  { "Builds" :: NullOrUndefined (BuildList)
  , "NextToken" :: NullOrUndefined (NonEmptyString)
  }
derive instance newtypeListBuildsOutput :: Newtype ListBuildsOutput _
derive instance repGenericListBuildsOutput :: Generic ListBuildsOutput _
instance showListBuildsOutput :: Show ListBuildsOutput where show = genericShow
instance decodeListBuildsOutput :: Decode ListBuildsOutput where decode = genericDecode options
instance encodeListBuildsOutput :: Encode ListBuildsOutput where encode = genericEncode options

-- | Constructs ListBuildsOutput from required parameters
newListBuildsOutput :: ListBuildsOutput
newListBuildsOutput  = ListBuildsOutput { "Builds": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListBuildsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListBuildsOutput' :: ( { "Builds" :: NullOrUndefined (BuildList) , "NextToken" :: NullOrUndefined (NonEmptyString) } -> {"Builds" :: NullOrUndefined (BuildList) , "NextToken" :: NullOrUndefined (NonEmptyString) } ) -> ListBuildsOutput
newListBuildsOutput'  customize = (ListBuildsOutput <<< customize) { "Builds": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype ListFleetsInput = ListFleetsInput 
  { "BuildId" :: NullOrUndefined (BuildId)
  , "Limit" :: NullOrUndefined (PositiveInteger)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeListFleetsInput :: Newtype ListFleetsInput _
derive instance repGenericListFleetsInput :: Generic ListFleetsInput _
instance showListFleetsInput :: Show ListFleetsInput where show = genericShow
instance decodeListFleetsInput :: Decode ListFleetsInput where decode = genericDecode options
instance encodeListFleetsInput :: Encode ListFleetsInput where encode = genericEncode options

-- | Constructs ListFleetsInput from required parameters
newListFleetsInput :: ListFleetsInput
newListFleetsInput  = ListFleetsInput { "BuildId": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListFleetsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListFleetsInput' :: ( { "BuildId" :: NullOrUndefined (BuildId) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"BuildId" :: NullOrUndefined (BuildId) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> ListFleetsInput
newListFleetsInput'  customize = (ListFleetsInput <<< customize) { "BuildId": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype ListFleetsOutput = ListFleetsOutput 
  { "FleetIds" :: NullOrUndefined (FleetIdList)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeListFleetsOutput :: Newtype ListFleetsOutput _
derive instance repGenericListFleetsOutput :: Generic ListFleetsOutput _
instance showListFleetsOutput :: Show ListFleetsOutput where show = genericShow
instance decodeListFleetsOutput :: Decode ListFleetsOutput where decode = genericDecode options
instance encodeListFleetsOutput :: Encode ListFleetsOutput where encode = genericEncode options

-- | Constructs ListFleetsOutput from required parameters
newListFleetsOutput :: ListFleetsOutput
newListFleetsOutput  = ListFleetsOutput { "FleetIds": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListFleetsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListFleetsOutput' :: ( { "FleetIds" :: NullOrUndefined (FleetIdList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"FleetIds" :: NullOrUndefined (FleetIdList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> ListFleetsOutput
newListFleetsOutput'  customize = (ListFleetsOutput <<< customize) { "FleetIds": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Represents a new player session that is created as a result of a successful FlexMatch match. A successful match automatically creates new player sessions for every player ID in the original matchmaking request. </p> <p>When players connect to the match's game session, they must include both player ID and player session ID in order to claim their assigned player slot.</p>
newtype MatchedPlayerSession = MatchedPlayerSession 
  { "PlayerId" :: NullOrUndefined (NonZeroAndMaxString)
  , "PlayerSessionId" :: NullOrUndefined (PlayerSessionId)
  }
derive instance newtypeMatchedPlayerSession :: Newtype MatchedPlayerSession _
derive instance repGenericMatchedPlayerSession :: Generic MatchedPlayerSession _
instance showMatchedPlayerSession :: Show MatchedPlayerSession where show = genericShow
instance decodeMatchedPlayerSession :: Decode MatchedPlayerSession where decode = genericDecode options
instance encodeMatchedPlayerSession :: Encode MatchedPlayerSession where encode = genericEncode options

-- | Constructs MatchedPlayerSession from required parameters
newMatchedPlayerSession :: MatchedPlayerSession
newMatchedPlayerSession  = MatchedPlayerSession { "PlayerId": (NullOrUndefined Nothing), "PlayerSessionId": (NullOrUndefined Nothing) }

-- | Constructs MatchedPlayerSession's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMatchedPlayerSession' :: ( { "PlayerId" :: NullOrUndefined (NonZeroAndMaxString) , "PlayerSessionId" :: NullOrUndefined (PlayerSessionId) } -> {"PlayerId" :: NullOrUndefined (NonZeroAndMaxString) , "PlayerSessionId" :: NullOrUndefined (PlayerSessionId) } ) -> MatchedPlayerSession
newMatchedPlayerSession'  customize = (MatchedPlayerSession <<< customize) { "PlayerId": (NullOrUndefined Nothing), "PlayerSessionId": (NullOrUndefined Nothing) }



newtype MatchedPlayerSessionList = MatchedPlayerSessionList (Array MatchedPlayerSession)
derive instance newtypeMatchedPlayerSessionList :: Newtype MatchedPlayerSessionList _
derive instance repGenericMatchedPlayerSessionList :: Generic MatchedPlayerSessionList _
instance showMatchedPlayerSessionList :: Show MatchedPlayerSessionList where show = genericShow
instance decodeMatchedPlayerSessionList :: Decode MatchedPlayerSessionList where decode = genericDecode options
instance encodeMatchedPlayerSessionList :: Encode MatchedPlayerSessionList where encode = genericEncode options



newtype MatchmakerData = MatchmakerData String
derive instance newtypeMatchmakerData :: Newtype MatchmakerData _
derive instance repGenericMatchmakerData :: Generic MatchmakerData _
instance showMatchmakerData :: Show MatchmakerData where show = genericShow
instance decodeMatchmakerData :: Decode MatchmakerData where decode = genericDecode options
instance encodeMatchmakerData :: Encode MatchmakerData where encode = genericEncode options



newtype MatchmakingAcceptanceTimeoutInteger = MatchmakingAcceptanceTimeoutInteger Int
derive instance newtypeMatchmakingAcceptanceTimeoutInteger :: Newtype MatchmakingAcceptanceTimeoutInteger _
derive instance repGenericMatchmakingAcceptanceTimeoutInteger :: Generic MatchmakingAcceptanceTimeoutInteger _
instance showMatchmakingAcceptanceTimeoutInteger :: Show MatchmakingAcceptanceTimeoutInteger where show = genericShow
instance decodeMatchmakingAcceptanceTimeoutInteger :: Decode MatchmakingAcceptanceTimeoutInteger where decode = genericDecode options
instance encodeMatchmakingAcceptanceTimeoutInteger :: Encode MatchmakingAcceptanceTimeoutInteger where encode = genericEncode options



-- | <p>Guidelines for use with FlexMatch to match players into games. All matchmaking requests must specify a matchmaking configuration.</p>
newtype MatchmakingConfiguration = MatchmakingConfiguration 
  { "Name" :: NullOrUndefined (MatchmakingIdStringModel)
  , "Description" :: NullOrUndefined (NonZeroAndMaxString)
  , "GameSessionQueueArns" :: NullOrUndefined (QueueArnsList)
  , "RequestTimeoutSeconds" :: NullOrUndefined (MatchmakingRequestTimeoutInteger)
  , "AcceptanceTimeoutSeconds" :: NullOrUndefined (MatchmakingAcceptanceTimeoutInteger)
  , "AcceptanceRequired" :: NullOrUndefined (BooleanModel)
  , "RuleSetName" :: NullOrUndefined (MatchmakingIdStringModel)
  , "NotificationTarget" :: NullOrUndefined (SnsArnStringModel)
  , "AdditionalPlayerCount" :: NullOrUndefined (WholeNumber)
  , "CustomEventData" :: NullOrUndefined (CustomEventData)
  , "CreationTime" :: NullOrUndefined (Types.Timestamp)
  , "GameProperties" :: NullOrUndefined (GamePropertyList)
  , "GameSessionData" :: NullOrUndefined (GameSessionData)
  }
derive instance newtypeMatchmakingConfiguration :: Newtype MatchmakingConfiguration _
derive instance repGenericMatchmakingConfiguration :: Generic MatchmakingConfiguration _
instance showMatchmakingConfiguration :: Show MatchmakingConfiguration where show = genericShow
instance decodeMatchmakingConfiguration :: Decode MatchmakingConfiguration where decode = genericDecode options
instance encodeMatchmakingConfiguration :: Encode MatchmakingConfiguration where encode = genericEncode options

-- | Constructs MatchmakingConfiguration from required parameters
newMatchmakingConfiguration :: MatchmakingConfiguration
newMatchmakingConfiguration  = MatchmakingConfiguration { "AcceptanceRequired": (NullOrUndefined Nothing), "AcceptanceTimeoutSeconds": (NullOrUndefined Nothing), "AdditionalPlayerCount": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "CustomEventData": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "GameProperties": (NullOrUndefined Nothing), "GameSessionData": (NullOrUndefined Nothing), "GameSessionQueueArns": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "NotificationTarget": (NullOrUndefined Nothing), "RequestTimeoutSeconds": (NullOrUndefined Nothing), "RuleSetName": (NullOrUndefined Nothing) }

-- | Constructs MatchmakingConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMatchmakingConfiguration' :: ( { "Name" :: NullOrUndefined (MatchmakingIdStringModel) , "Description" :: NullOrUndefined (NonZeroAndMaxString) , "GameSessionQueueArns" :: NullOrUndefined (QueueArnsList) , "RequestTimeoutSeconds" :: NullOrUndefined (MatchmakingRequestTimeoutInteger) , "AcceptanceTimeoutSeconds" :: NullOrUndefined (MatchmakingAcceptanceTimeoutInteger) , "AcceptanceRequired" :: NullOrUndefined (BooleanModel) , "RuleSetName" :: NullOrUndefined (MatchmakingIdStringModel) , "NotificationTarget" :: NullOrUndefined (SnsArnStringModel) , "AdditionalPlayerCount" :: NullOrUndefined (WholeNumber) , "CustomEventData" :: NullOrUndefined (CustomEventData) , "CreationTime" :: NullOrUndefined (Types.Timestamp) , "GameProperties" :: NullOrUndefined (GamePropertyList) , "GameSessionData" :: NullOrUndefined (GameSessionData) } -> {"Name" :: NullOrUndefined (MatchmakingIdStringModel) , "Description" :: NullOrUndefined (NonZeroAndMaxString) , "GameSessionQueueArns" :: NullOrUndefined (QueueArnsList) , "RequestTimeoutSeconds" :: NullOrUndefined (MatchmakingRequestTimeoutInteger) , "AcceptanceTimeoutSeconds" :: NullOrUndefined (MatchmakingAcceptanceTimeoutInteger) , "AcceptanceRequired" :: NullOrUndefined (BooleanModel) , "RuleSetName" :: NullOrUndefined (MatchmakingIdStringModel) , "NotificationTarget" :: NullOrUndefined (SnsArnStringModel) , "AdditionalPlayerCount" :: NullOrUndefined (WholeNumber) , "CustomEventData" :: NullOrUndefined (CustomEventData) , "CreationTime" :: NullOrUndefined (Types.Timestamp) , "GameProperties" :: NullOrUndefined (GamePropertyList) , "GameSessionData" :: NullOrUndefined (GameSessionData) } ) -> MatchmakingConfiguration
newMatchmakingConfiguration'  customize = (MatchmakingConfiguration <<< customize) { "AcceptanceRequired": (NullOrUndefined Nothing), "AcceptanceTimeoutSeconds": (NullOrUndefined Nothing), "AdditionalPlayerCount": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "CustomEventData": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "GameProperties": (NullOrUndefined Nothing), "GameSessionData": (NullOrUndefined Nothing), "GameSessionQueueArns": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "NotificationTarget": (NullOrUndefined Nothing), "RequestTimeoutSeconds": (NullOrUndefined Nothing), "RuleSetName": (NullOrUndefined Nothing) }



newtype MatchmakingConfigurationList = MatchmakingConfigurationList (Array MatchmakingConfiguration)
derive instance newtypeMatchmakingConfigurationList :: Newtype MatchmakingConfigurationList _
derive instance repGenericMatchmakingConfigurationList :: Generic MatchmakingConfigurationList _
instance showMatchmakingConfigurationList :: Show MatchmakingConfigurationList where show = genericShow
instance decodeMatchmakingConfigurationList :: Decode MatchmakingConfigurationList where decode = genericDecode options
instance encodeMatchmakingConfigurationList :: Encode MatchmakingConfigurationList where encode = genericEncode options



newtype MatchmakingConfigurationStatus = MatchmakingConfigurationStatus String
derive instance newtypeMatchmakingConfigurationStatus :: Newtype MatchmakingConfigurationStatus _
derive instance repGenericMatchmakingConfigurationStatus :: Generic MatchmakingConfigurationStatus _
instance showMatchmakingConfigurationStatus :: Show MatchmakingConfigurationStatus where show = genericShow
instance decodeMatchmakingConfigurationStatus :: Decode MatchmakingConfigurationStatus where decode = genericDecode options
instance encodeMatchmakingConfigurationStatus :: Encode MatchmakingConfigurationStatus where encode = genericEncode options



newtype MatchmakingIdList = MatchmakingIdList (Array MatchmakingIdStringModel)
derive instance newtypeMatchmakingIdList :: Newtype MatchmakingIdList _
derive instance repGenericMatchmakingIdList :: Generic MatchmakingIdList _
instance showMatchmakingIdList :: Show MatchmakingIdList where show = genericShow
instance decodeMatchmakingIdList :: Decode MatchmakingIdList where decode = genericDecode options
instance encodeMatchmakingIdList :: Encode MatchmakingIdList where encode = genericEncode options



newtype MatchmakingIdStringModel = MatchmakingIdStringModel String
derive instance newtypeMatchmakingIdStringModel :: Newtype MatchmakingIdStringModel _
derive instance repGenericMatchmakingIdStringModel :: Generic MatchmakingIdStringModel _
instance showMatchmakingIdStringModel :: Show MatchmakingIdStringModel where show = genericShow
instance decodeMatchmakingIdStringModel :: Decode MatchmakingIdStringModel where decode = genericDecode options
instance encodeMatchmakingIdStringModel :: Encode MatchmakingIdStringModel where encode = genericEncode options



newtype MatchmakingRequestTimeoutInteger = MatchmakingRequestTimeoutInteger Int
derive instance newtypeMatchmakingRequestTimeoutInteger :: Newtype MatchmakingRequestTimeoutInteger _
derive instance repGenericMatchmakingRequestTimeoutInteger :: Generic MatchmakingRequestTimeoutInteger _
instance showMatchmakingRequestTimeoutInteger :: Show MatchmakingRequestTimeoutInteger where show = genericShow
instance decodeMatchmakingRequestTimeoutInteger :: Decode MatchmakingRequestTimeoutInteger where decode = genericDecode options
instance encodeMatchmakingRequestTimeoutInteger :: Encode MatchmakingRequestTimeoutInteger where encode = genericEncode options



-- | <p>Set of rule statements, used with FlexMatch, that determine how to build a certain kind of player match. Each rule set describes a type of group to be created and defines the parameters for acceptable player matches. Rule sets are used in <a>MatchmakingConfiguration</a> objects.</p> <p>A rule set may define the following elements for a match. For detailed information and examples showing how to construct a rule set, see <a href="http://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html">Build a FlexMatch Rule Set</a>. </p> <ul> <li> <p>Teams -- Required. A rule set must define one or multiple teams for the match and set minimum and maximum team sizes. For example, a rule set might describe a 4x4 match that requires all eight slots to be filled. </p> </li> <li> <p>Player attributes -- Optional. These attributes specify a set of player characteristics to evaluate when looking for a match. Matchmaking requests that use a rule set with player attributes must provide the corresponding attribute values. For example, an attribute might specify a player's skill or level.</p> </li> <li> <p>Rules -- Optional. Rules define how to evaluate potential players for a match based on player attributes. A rule might specify minimum requirements for individual players, teams, or entire matches. For example, a rule might require each player to meet a certain skill level, each team to have at least one player in a certain role, or the match to have a minimum average skill level. or may describe an entire group--such as all teams must be evenly matched or have at least one player in a certain role. </p> </li> <li> <p>Expansions -- Optional. Expansions allow you to relax the rules after a period of time when no acceptable matches are found. This feature lets you balance getting players into games in a reasonable amount of time instead of making them wait indefinitely for the best possible match. For example, you might use an expansion to increase the maximum skill variance between players after 30 seconds.</p> </li> </ul>
newtype MatchmakingRuleSet = MatchmakingRuleSet 
  { "RuleSetName" :: NullOrUndefined (MatchmakingIdStringModel)
  , "RuleSetBody" :: (RuleSetBody)
  , "CreationTime" :: NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeMatchmakingRuleSet :: Newtype MatchmakingRuleSet _
derive instance repGenericMatchmakingRuleSet :: Generic MatchmakingRuleSet _
instance showMatchmakingRuleSet :: Show MatchmakingRuleSet where show = genericShow
instance decodeMatchmakingRuleSet :: Decode MatchmakingRuleSet where decode = genericDecode options
instance encodeMatchmakingRuleSet :: Encode MatchmakingRuleSet where encode = genericEncode options

-- | Constructs MatchmakingRuleSet from required parameters
newMatchmakingRuleSet :: RuleSetBody -> MatchmakingRuleSet
newMatchmakingRuleSet _RuleSetBody = MatchmakingRuleSet { "RuleSetBody": _RuleSetBody, "CreationTime": (NullOrUndefined Nothing), "RuleSetName": (NullOrUndefined Nothing) }

-- | Constructs MatchmakingRuleSet's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMatchmakingRuleSet' :: RuleSetBody -> ( { "RuleSetName" :: NullOrUndefined (MatchmakingIdStringModel) , "RuleSetBody" :: (RuleSetBody) , "CreationTime" :: NullOrUndefined (Types.Timestamp) } -> {"RuleSetName" :: NullOrUndefined (MatchmakingIdStringModel) , "RuleSetBody" :: (RuleSetBody) , "CreationTime" :: NullOrUndefined (Types.Timestamp) } ) -> MatchmakingRuleSet
newMatchmakingRuleSet' _RuleSetBody customize = (MatchmakingRuleSet <<< customize) { "RuleSetBody": _RuleSetBody, "CreationTime": (NullOrUndefined Nothing), "RuleSetName": (NullOrUndefined Nothing) }



newtype MatchmakingRuleSetList = MatchmakingRuleSetList (Array MatchmakingRuleSet)
derive instance newtypeMatchmakingRuleSetList :: Newtype MatchmakingRuleSetList _
derive instance repGenericMatchmakingRuleSetList :: Generic MatchmakingRuleSetList _
instance showMatchmakingRuleSetList :: Show MatchmakingRuleSetList where show = genericShow
instance decodeMatchmakingRuleSetList :: Decode MatchmakingRuleSetList where decode = genericDecode options
instance encodeMatchmakingRuleSetList :: Encode MatchmakingRuleSetList where encode = genericEncode options



newtype MatchmakingRuleSetNameList = MatchmakingRuleSetNameList (Array MatchmakingIdStringModel)
derive instance newtypeMatchmakingRuleSetNameList :: Newtype MatchmakingRuleSetNameList _
derive instance repGenericMatchmakingRuleSetNameList :: Generic MatchmakingRuleSetNameList _
instance showMatchmakingRuleSetNameList :: Show MatchmakingRuleSetNameList where show = genericShow
instance decodeMatchmakingRuleSetNameList :: Decode MatchmakingRuleSetNameList where decode = genericDecode options
instance encodeMatchmakingRuleSetNameList :: Encode MatchmakingRuleSetNameList where encode = genericEncode options



-- | <p>Ticket generated to track the progress of a matchmaking request. Each ticket is uniquely identified by a ticket ID, supplied by the requester, when creating a matchmaking request with <a>StartMatchmaking</a>. Tickets can be retrieved by calling <a>DescribeMatchmaking</a> with the ticket ID.</p>
newtype MatchmakingTicket = MatchmakingTicket 
  { "TicketId" :: NullOrUndefined (MatchmakingIdStringModel)
  , "ConfigurationName" :: NullOrUndefined (MatchmakingIdStringModel)
  , "Status" :: NullOrUndefined (MatchmakingConfigurationStatus)
  , "StatusReason" :: NullOrUndefined (StringModel)
  , "StatusMessage" :: NullOrUndefined (StringModel)
  , "StartTime" :: NullOrUndefined (Types.Timestamp)
  , "EndTime" :: NullOrUndefined (Types.Timestamp)
  , "Players" :: NullOrUndefined (PlayerList)
  , "GameSessionConnectionInfo" :: NullOrUndefined (GameSessionConnectionInfo)
  , "EstimatedWaitTime" :: NullOrUndefined (WholeNumber)
  }
derive instance newtypeMatchmakingTicket :: Newtype MatchmakingTicket _
derive instance repGenericMatchmakingTicket :: Generic MatchmakingTicket _
instance showMatchmakingTicket :: Show MatchmakingTicket where show = genericShow
instance decodeMatchmakingTicket :: Decode MatchmakingTicket where decode = genericDecode options
instance encodeMatchmakingTicket :: Encode MatchmakingTicket where encode = genericEncode options

-- | Constructs MatchmakingTicket from required parameters
newMatchmakingTicket :: MatchmakingTicket
newMatchmakingTicket  = MatchmakingTicket { "ConfigurationName": (NullOrUndefined Nothing), "EndTime": (NullOrUndefined Nothing), "EstimatedWaitTime": (NullOrUndefined Nothing), "GameSessionConnectionInfo": (NullOrUndefined Nothing), "Players": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing), "StatusReason": (NullOrUndefined Nothing), "TicketId": (NullOrUndefined Nothing) }

-- | Constructs MatchmakingTicket's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMatchmakingTicket' :: ( { "TicketId" :: NullOrUndefined (MatchmakingIdStringModel) , "ConfigurationName" :: NullOrUndefined (MatchmakingIdStringModel) , "Status" :: NullOrUndefined (MatchmakingConfigurationStatus) , "StatusReason" :: NullOrUndefined (StringModel) , "StatusMessage" :: NullOrUndefined (StringModel) , "StartTime" :: NullOrUndefined (Types.Timestamp) , "EndTime" :: NullOrUndefined (Types.Timestamp) , "Players" :: NullOrUndefined (PlayerList) , "GameSessionConnectionInfo" :: NullOrUndefined (GameSessionConnectionInfo) , "EstimatedWaitTime" :: NullOrUndefined (WholeNumber) } -> {"TicketId" :: NullOrUndefined (MatchmakingIdStringModel) , "ConfigurationName" :: NullOrUndefined (MatchmakingIdStringModel) , "Status" :: NullOrUndefined (MatchmakingConfigurationStatus) , "StatusReason" :: NullOrUndefined (StringModel) , "StatusMessage" :: NullOrUndefined (StringModel) , "StartTime" :: NullOrUndefined (Types.Timestamp) , "EndTime" :: NullOrUndefined (Types.Timestamp) , "Players" :: NullOrUndefined (PlayerList) , "GameSessionConnectionInfo" :: NullOrUndefined (GameSessionConnectionInfo) , "EstimatedWaitTime" :: NullOrUndefined (WholeNumber) } ) -> MatchmakingTicket
newMatchmakingTicket'  customize = (MatchmakingTicket <<< customize) { "ConfigurationName": (NullOrUndefined Nothing), "EndTime": (NullOrUndefined Nothing), "EstimatedWaitTime": (NullOrUndefined Nothing), "GameSessionConnectionInfo": (NullOrUndefined Nothing), "Players": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing), "StatusReason": (NullOrUndefined Nothing), "TicketId": (NullOrUndefined Nothing) }



newtype MatchmakingTicketList = MatchmakingTicketList (Array MatchmakingTicket)
derive instance newtypeMatchmakingTicketList :: Newtype MatchmakingTicketList _
derive instance repGenericMatchmakingTicketList :: Generic MatchmakingTicketList _
instance showMatchmakingTicketList :: Show MatchmakingTicketList where show = genericShow
instance decodeMatchmakingTicketList :: Decode MatchmakingTicketList where decode = genericDecode options
instance encodeMatchmakingTicketList :: Encode MatchmakingTicketList where encode = genericEncode options



newtype MaxConcurrentGameSessionActivations = MaxConcurrentGameSessionActivations Int
derive instance newtypeMaxConcurrentGameSessionActivations :: Newtype MaxConcurrentGameSessionActivations _
derive instance repGenericMaxConcurrentGameSessionActivations :: Generic MaxConcurrentGameSessionActivations _
instance showMaxConcurrentGameSessionActivations :: Show MaxConcurrentGameSessionActivations where show = genericShow
instance decodeMaxConcurrentGameSessionActivations :: Decode MaxConcurrentGameSessionActivations where decode = genericDecode options
instance encodeMaxConcurrentGameSessionActivations :: Encode MaxConcurrentGameSessionActivations where encode = genericEncode options



newtype MetricGroup = MetricGroup String
derive instance newtypeMetricGroup :: Newtype MetricGroup _
derive instance repGenericMetricGroup :: Generic MetricGroup _
instance showMetricGroup :: Show MetricGroup where show = genericShow
instance decodeMetricGroup :: Decode MetricGroup where decode = genericDecode options
instance encodeMetricGroup :: Encode MetricGroup where encode = genericEncode options



newtype MetricGroupList = MetricGroupList (Array MetricGroup)
derive instance newtypeMetricGroupList :: Newtype MetricGroupList _
derive instance repGenericMetricGroupList :: Generic MetricGroupList _
instance showMetricGroupList :: Show MetricGroupList where show = genericShow
instance decodeMetricGroupList :: Decode MetricGroupList where decode = genericDecode options
instance encodeMetricGroupList :: Encode MetricGroupList where encode = genericEncode options



newtype MetricName = MetricName String
derive instance newtypeMetricName :: Newtype MetricName _
derive instance repGenericMetricName :: Generic MetricName _
instance showMetricName :: Show MetricName where show = genericShow
instance decodeMetricName :: Decode MetricName where decode = genericDecode options
instance encodeMetricName :: Encode MetricName where encode = genericEncode options



newtype NonBlankAndLengthConstraintString = NonBlankAndLengthConstraintString String
derive instance newtypeNonBlankAndLengthConstraintString :: Newtype NonBlankAndLengthConstraintString _
derive instance repGenericNonBlankAndLengthConstraintString :: Generic NonBlankAndLengthConstraintString _
instance showNonBlankAndLengthConstraintString :: Show NonBlankAndLengthConstraintString where show = genericShow
instance decodeNonBlankAndLengthConstraintString :: Decode NonBlankAndLengthConstraintString where decode = genericDecode options
instance encodeNonBlankAndLengthConstraintString :: Encode NonBlankAndLengthConstraintString where encode = genericEncode options



newtype NonBlankString = NonBlankString String
derive instance newtypeNonBlankString :: Newtype NonBlankString _
derive instance repGenericNonBlankString :: Generic NonBlankString _
instance showNonBlankString :: Show NonBlankString where show = genericShow
instance decodeNonBlankString :: Decode NonBlankString where decode = genericDecode options
instance encodeNonBlankString :: Encode NonBlankString where encode = genericEncode options



newtype NonEmptyString = NonEmptyString String
derive instance newtypeNonEmptyString :: Newtype NonEmptyString _
derive instance repGenericNonEmptyString :: Generic NonEmptyString _
instance showNonEmptyString :: Show NonEmptyString where show = genericShow
instance decodeNonEmptyString :: Decode NonEmptyString where decode = genericDecode options
instance encodeNonEmptyString :: Encode NonEmptyString where encode = genericEncode options



newtype NonZeroAndMaxString = NonZeroAndMaxString String
derive instance newtypeNonZeroAndMaxString :: Newtype NonZeroAndMaxString _
derive instance repGenericNonZeroAndMaxString :: Generic NonZeroAndMaxString _
instance showNonZeroAndMaxString :: Show NonZeroAndMaxString where show = genericShow
instance decodeNonZeroAndMaxString :: Decode NonZeroAndMaxString where decode = genericDecode options
instance encodeNonZeroAndMaxString :: Encode NonZeroAndMaxString where encode = genericEncode options



-- | <p>A service resource associated with the request could not be found. Clients should not retry such requests.</p>
newtype NotFoundException = NotFoundException 
  { "Message" :: NullOrUndefined (NonEmptyString)
  }
derive instance newtypeNotFoundException :: Newtype NotFoundException _
derive instance repGenericNotFoundException :: Generic NotFoundException _
instance showNotFoundException :: Show NotFoundException where show = genericShow
instance decodeNotFoundException :: Decode NotFoundException where decode = genericDecode options
instance encodeNotFoundException :: Encode NotFoundException where encode = genericEncode options

-- | Constructs NotFoundException from required parameters
newNotFoundException :: NotFoundException
newNotFoundException  = NotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs NotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotFoundException' :: ( { "Message" :: NullOrUndefined (NonEmptyString) } -> {"Message" :: NullOrUndefined (NonEmptyString) } ) -> NotFoundException
newNotFoundException'  customize = (NotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype OperatingSystem = OperatingSystem String
derive instance newtypeOperatingSystem :: Newtype OperatingSystem _
derive instance repGenericOperatingSystem :: Generic OperatingSystem _
instance showOperatingSystem :: Show OperatingSystem where show = genericShow
instance decodeOperatingSystem :: Decode OperatingSystem where decode = genericDecode options
instance encodeOperatingSystem :: Encode OperatingSystem where encode = genericEncode options



-- | <p>Information about a player session that was created as part of a <a>StartGameSessionPlacement</a> request. This object contains only the player ID and player session ID. To retrieve full details on a player session, call <a>DescribePlayerSessions</a> with the player session ID.</p> <p>Player-session-related operations include:</p> <ul> <li> <p> <a>CreatePlayerSession</a> </p> </li> <li> <p> <a>CreatePlayerSessions</a> </p> </li> <li> <p> <a>DescribePlayerSessions</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>
newtype PlacedPlayerSession = PlacedPlayerSession 
  { "PlayerId" :: NullOrUndefined (NonZeroAndMaxString)
  , "PlayerSessionId" :: NullOrUndefined (PlayerSessionId)
  }
derive instance newtypePlacedPlayerSession :: Newtype PlacedPlayerSession _
derive instance repGenericPlacedPlayerSession :: Generic PlacedPlayerSession _
instance showPlacedPlayerSession :: Show PlacedPlayerSession where show = genericShow
instance decodePlacedPlayerSession :: Decode PlacedPlayerSession where decode = genericDecode options
instance encodePlacedPlayerSession :: Encode PlacedPlayerSession where encode = genericEncode options

-- | Constructs PlacedPlayerSession from required parameters
newPlacedPlayerSession :: PlacedPlayerSession
newPlacedPlayerSession  = PlacedPlayerSession { "PlayerId": (NullOrUndefined Nothing), "PlayerSessionId": (NullOrUndefined Nothing) }

-- | Constructs PlacedPlayerSession's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPlacedPlayerSession' :: ( { "PlayerId" :: NullOrUndefined (NonZeroAndMaxString) , "PlayerSessionId" :: NullOrUndefined (PlayerSessionId) } -> {"PlayerId" :: NullOrUndefined (NonZeroAndMaxString) , "PlayerSessionId" :: NullOrUndefined (PlayerSessionId) } ) -> PlacedPlayerSession
newPlacedPlayerSession'  customize = (PlacedPlayerSession <<< customize) { "PlayerId": (NullOrUndefined Nothing), "PlayerSessionId": (NullOrUndefined Nothing) }



newtype PlacedPlayerSessionList = PlacedPlayerSessionList (Array PlacedPlayerSession)
derive instance newtypePlacedPlayerSessionList :: Newtype PlacedPlayerSessionList _
derive instance repGenericPlacedPlayerSessionList :: Generic PlacedPlayerSessionList _
instance showPlacedPlayerSessionList :: Show PlacedPlayerSessionList where show = genericShow
instance decodePlacedPlayerSessionList :: Decode PlacedPlayerSessionList where decode = genericDecode options
instance encodePlacedPlayerSessionList :: Encode PlacedPlayerSessionList where encode = genericEncode options



-- | <p>Represents a player in matchmaking. When starting a matchmaking request, a player has a player ID, attributes, and may have latency data. Team information is added after a match has been successfully completed.</p>
newtype Player = Player 
  { "PlayerId" :: NullOrUndefined (NonZeroAndMaxString)
  , "PlayerAttributes" :: NullOrUndefined (PlayerAttributeMap)
  , "Team" :: NullOrUndefined (NonZeroAndMaxString)
  , "LatencyInMs" :: NullOrUndefined (LatencyMap)
  }
derive instance newtypePlayer :: Newtype Player _
derive instance repGenericPlayer :: Generic Player _
instance showPlayer :: Show Player where show = genericShow
instance decodePlayer :: Decode Player where decode = genericDecode options
instance encodePlayer :: Encode Player where encode = genericEncode options

-- | Constructs Player from required parameters
newPlayer :: Player
newPlayer  = Player { "LatencyInMs": (NullOrUndefined Nothing), "PlayerAttributes": (NullOrUndefined Nothing), "PlayerId": (NullOrUndefined Nothing), "Team": (NullOrUndefined Nothing) }

-- | Constructs Player's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPlayer' :: ( { "PlayerId" :: NullOrUndefined (NonZeroAndMaxString) , "PlayerAttributes" :: NullOrUndefined (PlayerAttributeMap) , "Team" :: NullOrUndefined (NonZeroAndMaxString) , "LatencyInMs" :: NullOrUndefined (LatencyMap) } -> {"PlayerId" :: NullOrUndefined (NonZeroAndMaxString) , "PlayerAttributes" :: NullOrUndefined (PlayerAttributeMap) , "Team" :: NullOrUndefined (NonZeroAndMaxString) , "LatencyInMs" :: NullOrUndefined (LatencyMap) } ) -> Player
newPlayer'  customize = (Player <<< customize) { "LatencyInMs": (NullOrUndefined Nothing), "PlayerAttributes": (NullOrUndefined Nothing), "PlayerId": (NullOrUndefined Nothing), "Team": (NullOrUndefined Nothing) }



newtype PlayerAttributeMap = PlayerAttributeMap (StrMap.StrMap AttributeValue)
derive instance newtypePlayerAttributeMap :: Newtype PlayerAttributeMap _
derive instance repGenericPlayerAttributeMap :: Generic PlayerAttributeMap _
instance showPlayerAttributeMap :: Show PlayerAttributeMap where show = genericShow
instance decodePlayerAttributeMap :: Decode PlayerAttributeMap where decode = genericDecode options
instance encodePlayerAttributeMap :: Encode PlayerAttributeMap where encode = genericEncode options



newtype PlayerData = PlayerData String
derive instance newtypePlayerData :: Newtype PlayerData _
derive instance repGenericPlayerData :: Generic PlayerData _
instance showPlayerData :: Show PlayerData where show = genericShow
instance decodePlayerData :: Decode PlayerData where decode = genericDecode options
instance encodePlayerData :: Encode PlayerData where encode = genericEncode options



newtype PlayerDataMap = PlayerDataMap (StrMap.StrMap PlayerData)
derive instance newtypePlayerDataMap :: Newtype PlayerDataMap _
derive instance repGenericPlayerDataMap :: Generic PlayerDataMap _
instance showPlayerDataMap :: Show PlayerDataMap where show = genericShow
instance decodePlayerDataMap :: Decode PlayerDataMap where decode = genericDecode options
instance encodePlayerDataMap :: Encode PlayerDataMap where encode = genericEncode options



newtype PlayerIdList = PlayerIdList (Array NonZeroAndMaxString)
derive instance newtypePlayerIdList :: Newtype PlayerIdList _
derive instance repGenericPlayerIdList :: Generic PlayerIdList _
instance showPlayerIdList :: Show PlayerIdList where show = genericShow
instance decodePlayerIdList :: Decode PlayerIdList where decode = genericDecode options
instance encodePlayerIdList :: Encode PlayerIdList where encode = genericEncode options



-- | <p>Regional latency information for a player, used when requesting a new game session with <a>StartGameSessionPlacement</a>. This value indicates the amount of time lag that exists when the player is connected to a fleet in the specified region. The relative difference between a player's latency values for multiple regions are used to determine which fleets are best suited to place a new game session for the player. </p>
newtype PlayerLatency = PlayerLatency 
  { "PlayerId" :: NullOrUndefined (NonZeroAndMaxString)
  , "RegionIdentifier" :: NullOrUndefined (NonZeroAndMaxString)
  , "LatencyInMilliseconds" :: NullOrUndefined (Number)
  }
derive instance newtypePlayerLatency :: Newtype PlayerLatency _
derive instance repGenericPlayerLatency :: Generic PlayerLatency _
instance showPlayerLatency :: Show PlayerLatency where show = genericShow
instance decodePlayerLatency :: Decode PlayerLatency where decode = genericDecode options
instance encodePlayerLatency :: Encode PlayerLatency where encode = genericEncode options

-- | Constructs PlayerLatency from required parameters
newPlayerLatency :: PlayerLatency
newPlayerLatency  = PlayerLatency { "LatencyInMilliseconds": (NullOrUndefined Nothing), "PlayerId": (NullOrUndefined Nothing), "RegionIdentifier": (NullOrUndefined Nothing) }

-- | Constructs PlayerLatency's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPlayerLatency' :: ( { "PlayerId" :: NullOrUndefined (NonZeroAndMaxString) , "RegionIdentifier" :: NullOrUndefined (NonZeroAndMaxString) , "LatencyInMilliseconds" :: NullOrUndefined (Number) } -> {"PlayerId" :: NullOrUndefined (NonZeroAndMaxString) , "RegionIdentifier" :: NullOrUndefined (NonZeroAndMaxString) , "LatencyInMilliseconds" :: NullOrUndefined (Number) } ) -> PlayerLatency
newPlayerLatency'  customize = (PlayerLatency <<< customize) { "LatencyInMilliseconds": (NullOrUndefined Nothing), "PlayerId": (NullOrUndefined Nothing), "RegionIdentifier": (NullOrUndefined Nothing) }



newtype PlayerLatencyList = PlayerLatencyList (Array PlayerLatency)
derive instance newtypePlayerLatencyList :: Newtype PlayerLatencyList _
derive instance repGenericPlayerLatencyList :: Generic PlayerLatencyList _
instance showPlayerLatencyList :: Show PlayerLatencyList where show = genericShow
instance decodePlayerLatencyList :: Decode PlayerLatencyList where decode = genericDecode options
instance encodePlayerLatencyList :: Encode PlayerLatencyList where encode = genericEncode options



-- | <p>Queue setting that determines the highest latency allowed for individual players when placing a game session. When a latency policy is in force, a game session cannot be placed at any destination in a region where a player is reporting latency higher than the cap. Latency policies are only enforced when the placement request contains player latency information.</p> <p>Queue-related operations include:</p> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>DescribeGameSessionQueues</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>DeleteGameSessionQueue</a> </p> </li> </ul>
newtype PlayerLatencyPolicy = PlayerLatencyPolicy 
  { "MaximumIndividualPlayerLatencyMilliseconds" :: NullOrUndefined (WholeNumber)
  , "PolicyDurationSeconds" :: NullOrUndefined (WholeNumber)
  }
derive instance newtypePlayerLatencyPolicy :: Newtype PlayerLatencyPolicy _
derive instance repGenericPlayerLatencyPolicy :: Generic PlayerLatencyPolicy _
instance showPlayerLatencyPolicy :: Show PlayerLatencyPolicy where show = genericShow
instance decodePlayerLatencyPolicy :: Decode PlayerLatencyPolicy where decode = genericDecode options
instance encodePlayerLatencyPolicy :: Encode PlayerLatencyPolicy where encode = genericEncode options

-- | Constructs PlayerLatencyPolicy from required parameters
newPlayerLatencyPolicy :: PlayerLatencyPolicy
newPlayerLatencyPolicy  = PlayerLatencyPolicy { "MaximumIndividualPlayerLatencyMilliseconds": (NullOrUndefined Nothing), "PolicyDurationSeconds": (NullOrUndefined Nothing) }

-- | Constructs PlayerLatencyPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPlayerLatencyPolicy' :: ( { "MaximumIndividualPlayerLatencyMilliseconds" :: NullOrUndefined (WholeNumber) , "PolicyDurationSeconds" :: NullOrUndefined (WholeNumber) } -> {"MaximumIndividualPlayerLatencyMilliseconds" :: NullOrUndefined (WholeNumber) , "PolicyDurationSeconds" :: NullOrUndefined (WholeNumber) } ) -> PlayerLatencyPolicy
newPlayerLatencyPolicy'  customize = (PlayerLatencyPolicy <<< customize) { "MaximumIndividualPlayerLatencyMilliseconds": (NullOrUndefined Nothing), "PolicyDurationSeconds": (NullOrUndefined Nothing) }



newtype PlayerLatencyPolicyList = PlayerLatencyPolicyList (Array PlayerLatencyPolicy)
derive instance newtypePlayerLatencyPolicyList :: Newtype PlayerLatencyPolicyList _
derive instance repGenericPlayerLatencyPolicyList :: Generic PlayerLatencyPolicyList _
instance showPlayerLatencyPolicyList :: Show PlayerLatencyPolicyList where show = genericShow
instance decodePlayerLatencyPolicyList :: Decode PlayerLatencyPolicyList where decode = genericDecode options
instance encodePlayerLatencyPolicyList :: Encode PlayerLatencyPolicyList where encode = genericEncode options



newtype PlayerList = PlayerList (Array Player)
derive instance newtypePlayerList :: Newtype PlayerList _
derive instance repGenericPlayerList :: Generic PlayerList _
instance showPlayerList :: Show PlayerList where show = genericShow
instance decodePlayerList :: Decode PlayerList where decode = genericDecode options
instance encodePlayerList :: Encode PlayerList where encode = genericEncode options



-- | <p>Properties describing a player session. Player session objects are created either by creating a player session for a specific game session, or as part of a game session placement. A player session represents either a player reservation for a game session (status <code>RESERVED</code>) or actual player activity in a game session (status <code>ACTIVE</code>). A player session object (including player data) is automatically passed to a game session when the player connects to the game session and is validated.</p> <p>When a player disconnects, the player session status changes to <code>COMPLETED</code>. Once the session ends, the player session object is retained for 30 days and then removed.</p> <p>Player-session-related operations include:</p> <ul> <li> <p> <a>CreatePlayerSession</a> </p> </li> <li> <p> <a>CreatePlayerSessions</a> </p> </li> <li> <p> <a>DescribePlayerSessions</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>
newtype PlayerSession = PlayerSession 
  { "PlayerSessionId" :: NullOrUndefined (PlayerSessionId)
  , "PlayerId" :: NullOrUndefined (NonZeroAndMaxString)
  , "GameSessionId" :: NullOrUndefined (NonZeroAndMaxString)
  , "FleetId" :: NullOrUndefined (FleetId)
  , "CreationTime" :: NullOrUndefined (Types.Timestamp)
  , "TerminationTime" :: NullOrUndefined (Types.Timestamp)
  , "Status" :: NullOrUndefined (PlayerSessionStatus)
  , "IpAddress" :: NullOrUndefined (IpAddress)
  , "Port" :: NullOrUndefined (PortNumber)
  , "PlayerData" :: NullOrUndefined (PlayerData)
  }
derive instance newtypePlayerSession :: Newtype PlayerSession _
derive instance repGenericPlayerSession :: Generic PlayerSession _
instance showPlayerSession :: Show PlayerSession where show = genericShow
instance decodePlayerSession :: Decode PlayerSession where decode = genericDecode options
instance encodePlayerSession :: Encode PlayerSession where encode = genericEncode options

-- | Constructs PlayerSession from required parameters
newPlayerSession :: PlayerSession
newPlayerSession  = PlayerSession { "CreationTime": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "GameSessionId": (NullOrUndefined Nothing), "IpAddress": (NullOrUndefined Nothing), "PlayerData": (NullOrUndefined Nothing), "PlayerId": (NullOrUndefined Nothing), "PlayerSessionId": (NullOrUndefined Nothing), "Port": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "TerminationTime": (NullOrUndefined Nothing) }

-- | Constructs PlayerSession's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPlayerSession' :: ( { "PlayerSessionId" :: NullOrUndefined (PlayerSessionId) , "PlayerId" :: NullOrUndefined (NonZeroAndMaxString) , "GameSessionId" :: NullOrUndefined (NonZeroAndMaxString) , "FleetId" :: NullOrUndefined (FleetId) , "CreationTime" :: NullOrUndefined (Types.Timestamp) , "TerminationTime" :: NullOrUndefined (Types.Timestamp) , "Status" :: NullOrUndefined (PlayerSessionStatus) , "IpAddress" :: NullOrUndefined (IpAddress) , "Port" :: NullOrUndefined (PortNumber) , "PlayerData" :: NullOrUndefined (PlayerData) } -> {"PlayerSessionId" :: NullOrUndefined (PlayerSessionId) , "PlayerId" :: NullOrUndefined (NonZeroAndMaxString) , "GameSessionId" :: NullOrUndefined (NonZeroAndMaxString) , "FleetId" :: NullOrUndefined (FleetId) , "CreationTime" :: NullOrUndefined (Types.Timestamp) , "TerminationTime" :: NullOrUndefined (Types.Timestamp) , "Status" :: NullOrUndefined (PlayerSessionStatus) , "IpAddress" :: NullOrUndefined (IpAddress) , "Port" :: NullOrUndefined (PortNumber) , "PlayerData" :: NullOrUndefined (PlayerData) } ) -> PlayerSession
newPlayerSession'  customize = (PlayerSession <<< customize) { "CreationTime": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "GameSessionId": (NullOrUndefined Nothing), "IpAddress": (NullOrUndefined Nothing), "PlayerData": (NullOrUndefined Nothing), "PlayerId": (NullOrUndefined Nothing), "PlayerSessionId": (NullOrUndefined Nothing), "Port": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "TerminationTime": (NullOrUndefined Nothing) }



newtype PlayerSessionCreationPolicy = PlayerSessionCreationPolicy String
derive instance newtypePlayerSessionCreationPolicy :: Newtype PlayerSessionCreationPolicy _
derive instance repGenericPlayerSessionCreationPolicy :: Generic PlayerSessionCreationPolicy _
instance showPlayerSessionCreationPolicy :: Show PlayerSessionCreationPolicy where show = genericShow
instance decodePlayerSessionCreationPolicy :: Decode PlayerSessionCreationPolicy where decode = genericDecode options
instance encodePlayerSessionCreationPolicy :: Encode PlayerSessionCreationPolicy where encode = genericEncode options



newtype PlayerSessionId = PlayerSessionId String
derive instance newtypePlayerSessionId :: Newtype PlayerSessionId _
derive instance repGenericPlayerSessionId :: Generic PlayerSessionId _
instance showPlayerSessionId :: Show PlayerSessionId where show = genericShow
instance decodePlayerSessionId :: Decode PlayerSessionId where decode = genericDecode options
instance encodePlayerSessionId :: Encode PlayerSessionId where encode = genericEncode options



newtype PlayerSessionList = PlayerSessionList (Array PlayerSession)
derive instance newtypePlayerSessionList :: Newtype PlayerSessionList _
derive instance repGenericPlayerSessionList :: Generic PlayerSessionList _
instance showPlayerSessionList :: Show PlayerSessionList where show = genericShow
instance decodePlayerSessionList :: Decode PlayerSessionList where decode = genericDecode options
instance encodePlayerSessionList :: Encode PlayerSessionList where encode = genericEncode options



newtype PlayerSessionStatus = PlayerSessionStatus String
derive instance newtypePlayerSessionStatus :: Newtype PlayerSessionStatus _
derive instance repGenericPlayerSessionStatus :: Generic PlayerSessionStatus _
instance showPlayerSessionStatus :: Show PlayerSessionStatus where show = genericShow
instance decodePlayerSessionStatus :: Decode PlayerSessionStatus where decode = genericDecode options
instance encodePlayerSessionStatus :: Encode PlayerSessionStatus where encode = genericEncode options



newtype PortNumber = PortNumber Int
derive instance newtypePortNumber :: Newtype PortNumber _
derive instance repGenericPortNumber :: Generic PortNumber _
instance showPortNumber :: Show PortNumber where show = genericShow
instance decodePortNumber :: Decode PortNumber where decode = genericDecode options
instance encodePortNumber :: Encode PortNumber where encode = genericEncode options



newtype PositiveInteger = PositiveInteger Int
derive instance newtypePositiveInteger :: Newtype PositiveInteger _
derive instance repGenericPositiveInteger :: Generic PositiveInteger _
instance showPositiveInteger :: Show PositiveInteger where show = genericShow
instance decodePositiveInteger :: Decode PositiveInteger where decode = genericDecode options
instance encodePositiveInteger :: Encode PositiveInteger where encode = genericEncode options



newtype PositiveLong = PositiveLong Number
derive instance newtypePositiveLong :: Newtype PositiveLong _
derive instance repGenericPositiveLong :: Generic PositiveLong _
instance showPositiveLong :: Show PositiveLong where show = genericShow
instance decodePositiveLong :: Decode PositiveLong where decode = genericDecode options
instance encodePositiveLong :: Encode PositiveLong where encode = genericEncode options



newtype ProtectionPolicy = ProtectionPolicy String
derive instance newtypeProtectionPolicy :: Newtype ProtectionPolicy _
derive instance repGenericProtectionPolicy :: Generic ProtectionPolicy _
instance showProtectionPolicy :: Show ProtectionPolicy where show = genericShow
instance decodeProtectionPolicy :: Decode ProtectionPolicy where decode = genericDecode options
instance encodeProtectionPolicy :: Encode ProtectionPolicy where encode = genericEncode options



-- | <p>Represents the input for a request action.</p>
newtype PutScalingPolicyInput = PutScalingPolicyInput 
  { "Name" :: (NonZeroAndMaxString)
  , "FleetId" :: (FleetId)
  , "ScalingAdjustment" :: (Int)
  , "ScalingAdjustmentType" :: (ScalingAdjustmentType)
  , "Threshold" :: (Number)
  , "ComparisonOperator" :: (ComparisonOperatorType)
  , "EvaluationPeriods" :: (PositiveInteger)
  , "MetricName" :: (MetricName)
  }
derive instance newtypePutScalingPolicyInput :: Newtype PutScalingPolicyInput _
derive instance repGenericPutScalingPolicyInput :: Generic PutScalingPolicyInput _
instance showPutScalingPolicyInput :: Show PutScalingPolicyInput where show = genericShow
instance decodePutScalingPolicyInput :: Decode PutScalingPolicyInput where decode = genericDecode options
instance encodePutScalingPolicyInput :: Encode PutScalingPolicyInput where encode = genericEncode options

-- | Constructs PutScalingPolicyInput from required parameters
newPutScalingPolicyInput :: ComparisonOperatorType -> PositiveInteger -> FleetId -> MetricName -> NonZeroAndMaxString -> Int -> ScalingAdjustmentType -> Number -> PutScalingPolicyInput
newPutScalingPolicyInput _ComparisonOperator _EvaluationPeriods _FleetId _MetricName _Name _ScalingAdjustment _ScalingAdjustmentType _Threshold = PutScalingPolicyInput { "ComparisonOperator": _ComparisonOperator, "EvaluationPeriods": _EvaluationPeriods, "FleetId": _FleetId, "MetricName": _MetricName, "Name": _Name, "ScalingAdjustment": _ScalingAdjustment, "ScalingAdjustmentType": _ScalingAdjustmentType, "Threshold": _Threshold }

-- | Constructs PutScalingPolicyInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutScalingPolicyInput' :: ComparisonOperatorType -> PositiveInteger -> FleetId -> MetricName -> NonZeroAndMaxString -> Int -> ScalingAdjustmentType -> Number -> ( { "Name" :: (NonZeroAndMaxString) , "FleetId" :: (FleetId) , "ScalingAdjustment" :: (Int) , "ScalingAdjustmentType" :: (ScalingAdjustmentType) , "Threshold" :: (Number) , "ComparisonOperator" :: (ComparisonOperatorType) , "EvaluationPeriods" :: (PositiveInteger) , "MetricName" :: (MetricName) } -> {"Name" :: (NonZeroAndMaxString) , "FleetId" :: (FleetId) , "ScalingAdjustment" :: (Int) , "ScalingAdjustmentType" :: (ScalingAdjustmentType) , "Threshold" :: (Number) , "ComparisonOperator" :: (ComparisonOperatorType) , "EvaluationPeriods" :: (PositiveInteger) , "MetricName" :: (MetricName) } ) -> PutScalingPolicyInput
newPutScalingPolicyInput' _ComparisonOperator _EvaluationPeriods _FleetId _MetricName _Name _ScalingAdjustment _ScalingAdjustmentType _Threshold customize = (PutScalingPolicyInput <<< customize) { "ComparisonOperator": _ComparisonOperator, "EvaluationPeriods": _EvaluationPeriods, "FleetId": _FleetId, "MetricName": _MetricName, "Name": _Name, "ScalingAdjustment": _ScalingAdjustment, "ScalingAdjustmentType": _ScalingAdjustmentType, "Threshold": _Threshold }



-- | <p>Represents the returned data in response to a request action.</p>
newtype PutScalingPolicyOutput = PutScalingPolicyOutput 
  { "Name" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypePutScalingPolicyOutput :: Newtype PutScalingPolicyOutput _
derive instance repGenericPutScalingPolicyOutput :: Generic PutScalingPolicyOutput _
instance showPutScalingPolicyOutput :: Show PutScalingPolicyOutput where show = genericShow
instance decodePutScalingPolicyOutput :: Decode PutScalingPolicyOutput where decode = genericDecode options
instance encodePutScalingPolicyOutput :: Encode PutScalingPolicyOutput where encode = genericEncode options

-- | Constructs PutScalingPolicyOutput from required parameters
newPutScalingPolicyOutput :: PutScalingPolicyOutput
newPutScalingPolicyOutput  = PutScalingPolicyOutput { "Name": (NullOrUndefined Nothing) }

-- | Constructs PutScalingPolicyOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutScalingPolicyOutput' :: ( { "Name" :: NullOrUndefined (NonZeroAndMaxString) } -> {"Name" :: NullOrUndefined (NonZeroAndMaxString) } ) -> PutScalingPolicyOutput
newPutScalingPolicyOutput'  customize = (PutScalingPolicyOutput <<< customize) { "Name": (NullOrUndefined Nothing) }



newtype QueueArnsList = QueueArnsList (Array ArnStringModel)
derive instance newtypeQueueArnsList :: Newtype QueueArnsList _
derive instance repGenericQueueArnsList :: Generic QueueArnsList _
instance showQueueArnsList :: Show QueueArnsList where show = genericShow
instance decodeQueueArnsList :: Decode QueueArnsList where decode = genericDecode options
instance encodeQueueArnsList :: Encode QueueArnsList where encode = genericEncode options



-- | <p>Represents the input for a request action.</p>
newtype RequestUploadCredentialsInput = RequestUploadCredentialsInput 
  { "BuildId" :: (BuildId)
  }
derive instance newtypeRequestUploadCredentialsInput :: Newtype RequestUploadCredentialsInput _
derive instance repGenericRequestUploadCredentialsInput :: Generic RequestUploadCredentialsInput _
instance showRequestUploadCredentialsInput :: Show RequestUploadCredentialsInput where show = genericShow
instance decodeRequestUploadCredentialsInput :: Decode RequestUploadCredentialsInput where decode = genericDecode options
instance encodeRequestUploadCredentialsInput :: Encode RequestUploadCredentialsInput where encode = genericEncode options

-- | Constructs RequestUploadCredentialsInput from required parameters
newRequestUploadCredentialsInput :: BuildId -> RequestUploadCredentialsInput
newRequestUploadCredentialsInput _BuildId = RequestUploadCredentialsInput { "BuildId": _BuildId }

-- | Constructs RequestUploadCredentialsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRequestUploadCredentialsInput' :: BuildId -> ( { "BuildId" :: (BuildId) } -> {"BuildId" :: (BuildId) } ) -> RequestUploadCredentialsInput
newRequestUploadCredentialsInput' _BuildId customize = (RequestUploadCredentialsInput <<< customize) { "BuildId": _BuildId }



-- | <p>Represents the returned data in response to a request action.</p>
newtype RequestUploadCredentialsOutput = RequestUploadCredentialsOutput 
  { "UploadCredentials" :: NullOrUndefined (AwsCredentials)
  , "StorageLocation" :: NullOrUndefined (S3Location)
  }
derive instance newtypeRequestUploadCredentialsOutput :: Newtype RequestUploadCredentialsOutput _
derive instance repGenericRequestUploadCredentialsOutput :: Generic RequestUploadCredentialsOutput _
instance showRequestUploadCredentialsOutput :: Show RequestUploadCredentialsOutput where show = genericShow
instance decodeRequestUploadCredentialsOutput :: Decode RequestUploadCredentialsOutput where decode = genericDecode options
instance encodeRequestUploadCredentialsOutput :: Encode RequestUploadCredentialsOutput where encode = genericEncode options

-- | Constructs RequestUploadCredentialsOutput from required parameters
newRequestUploadCredentialsOutput :: RequestUploadCredentialsOutput
newRequestUploadCredentialsOutput  = RequestUploadCredentialsOutput { "StorageLocation": (NullOrUndefined Nothing), "UploadCredentials": (NullOrUndefined Nothing) }

-- | Constructs RequestUploadCredentialsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRequestUploadCredentialsOutput' :: ( { "UploadCredentials" :: NullOrUndefined (AwsCredentials) , "StorageLocation" :: NullOrUndefined (S3Location) } -> {"UploadCredentials" :: NullOrUndefined (AwsCredentials) , "StorageLocation" :: NullOrUndefined (S3Location) } ) -> RequestUploadCredentialsOutput
newRequestUploadCredentialsOutput'  customize = (RequestUploadCredentialsOutput <<< customize) { "StorageLocation": (NullOrUndefined Nothing), "UploadCredentials": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype ResolveAliasInput = ResolveAliasInput 
  { "AliasId" :: (AliasId)
  }
derive instance newtypeResolveAliasInput :: Newtype ResolveAliasInput _
derive instance repGenericResolveAliasInput :: Generic ResolveAliasInput _
instance showResolveAliasInput :: Show ResolveAliasInput where show = genericShow
instance decodeResolveAliasInput :: Decode ResolveAliasInput where decode = genericDecode options
instance encodeResolveAliasInput :: Encode ResolveAliasInput where encode = genericEncode options

-- | Constructs ResolveAliasInput from required parameters
newResolveAliasInput :: AliasId -> ResolveAliasInput
newResolveAliasInput _AliasId = ResolveAliasInput { "AliasId": _AliasId }

-- | Constructs ResolveAliasInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResolveAliasInput' :: AliasId -> ( { "AliasId" :: (AliasId) } -> {"AliasId" :: (AliasId) } ) -> ResolveAliasInput
newResolveAliasInput' _AliasId customize = (ResolveAliasInput <<< customize) { "AliasId": _AliasId }



-- | <p>Represents the returned data in response to a request action.</p>
newtype ResolveAliasOutput = ResolveAliasOutput 
  { "FleetId" :: NullOrUndefined (FleetId)
  }
derive instance newtypeResolveAliasOutput :: Newtype ResolveAliasOutput _
derive instance repGenericResolveAliasOutput :: Generic ResolveAliasOutput _
instance showResolveAliasOutput :: Show ResolveAliasOutput where show = genericShow
instance decodeResolveAliasOutput :: Decode ResolveAliasOutput where decode = genericDecode options
instance encodeResolveAliasOutput :: Encode ResolveAliasOutput where encode = genericEncode options

-- | Constructs ResolveAliasOutput from required parameters
newResolveAliasOutput :: ResolveAliasOutput
newResolveAliasOutput  = ResolveAliasOutput { "FleetId": (NullOrUndefined Nothing) }

-- | Constructs ResolveAliasOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResolveAliasOutput' :: ( { "FleetId" :: NullOrUndefined (FleetId) } -> {"FleetId" :: NullOrUndefined (FleetId) } ) -> ResolveAliasOutput
newResolveAliasOutput'  customize = (ResolveAliasOutput <<< customize) { "FleetId": (NullOrUndefined Nothing) }



-- | <p>Policy that limits the number of game sessions a player can create on the same fleet. This optional policy gives game owners control over how players can consume available game server resources. A resource creation policy makes the following statement: "An individual player can create a maximum number of new game sessions within a specified time period".</p> <p>The policy is evaluated when a player tries to create a new game session. For example, with a policy of 10 new game sessions and a time period of 60 minutes, on receiving a <code>CreateGameSession</code> request, Amazon GameLift checks that the player (identified by <code>CreatorId</code>) has created fewer than 10 game sessions in the past 60 minutes.</p>
newtype ResourceCreationLimitPolicy = ResourceCreationLimitPolicy 
  { "NewGameSessionsPerCreator" :: NullOrUndefined (WholeNumber)
  , "PolicyPeriodInMinutes" :: NullOrUndefined (WholeNumber)
  }
derive instance newtypeResourceCreationLimitPolicy :: Newtype ResourceCreationLimitPolicy _
derive instance repGenericResourceCreationLimitPolicy :: Generic ResourceCreationLimitPolicy _
instance showResourceCreationLimitPolicy :: Show ResourceCreationLimitPolicy where show = genericShow
instance decodeResourceCreationLimitPolicy :: Decode ResourceCreationLimitPolicy where decode = genericDecode options
instance encodeResourceCreationLimitPolicy :: Encode ResourceCreationLimitPolicy where encode = genericEncode options

-- | Constructs ResourceCreationLimitPolicy from required parameters
newResourceCreationLimitPolicy :: ResourceCreationLimitPolicy
newResourceCreationLimitPolicy  = ResourceCreationLimitPolicy { "NewGameSessionsPerCreator": (NullOrUndefined Nothing), "PolicyPeriodInMinutes": (NullOrUndefined Nothing) }

-- | Constructs ResourceCreationLimitPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceCreationLimitPolicy' :: ( { "NewGameSessionsPerCreator" :: NullOrUndefined (WholeNumber) , "PolicyPeriodInMinutes" :: NullOrUndefined (WholeNumber) } -> {"NewGameSessionsPerCreator" :: NullOrUndefined (WholeNumber) , "PolicyPeriodInMinutes" :: NullOrUndefined (WholeNumber) } ) -> ResourceCreationLimitPolicy
newResourceCreationLimitPolicy'  customize = (ResourceCreationLimitPolicy <<< customize) { "NewGameSessionsPerCreator": (NullOrUndefined Nothing), "PolicyPeriodInMinutes": (NullOrUndefined Nothing) }



-- | <p>Routing configuration for a fleet alias.</p> <p>Fleet-related operations include:</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet capacity:</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>PutScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (automatic scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> </ul> </li> <li> <p> <a>DeleteFleet</a> </p> </li> </ul>
newtype RoutingStrategy = RoutingStrategy 
  { "Type" :: NullOrUndefined (RoutingStrategyType)
  , "FleetId" :: NullOrUndefined (FleetId)
  , "Message" :: NullOrUndefined (FreeText)
  }
derive instance newtypeRoutingStrategy :: Newtype RoutingStrategy _
derive instance repGenericRoutingStrategy :: Generic RoutingStrategy _
instance showRoutingStrategy :: Show RoutingStrategy where show = genericShow
instance decodeRoutingStrategy :: Decode RoutingStrategy where decode = genericDecode options
instance encodeRoutingStrategy :: Encode RoutingStrategy where encode = genericEncode options

-- | Constructs RoutingStrategy from required parameters
newRoutingStrategy :: RoutingStrategy
newRoutingStrategy  = RoutingStrategy { "FleetId": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs RoutingStrategy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRoutingStrategy' :: ( { "Type" :: NullOrUndefined (RoutingStrategyType) , "FleetId" :: NullOrUndefined (FleetId) , "Message" :: NullOrUndefined (FreeText) } -> {"Type" :: NullOrUndefined (RoutingStrategyType) , "FleetId" :: NullOrUndefined (FleetId) , "Message" :: NullOrUndefined (FreeText) } ) -> RoutingStrategy
newRoutingStrategy'  customize = (RoutingStrategy <<< customize) { "FleetId": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype RoutingStrategyType = RoutingStrategyType String
derive instance newtypeRoutingStrategyType :: Newtype RoutingStrategyType _
derive instance repGenericRoutingStrategyType :: Generic RoutingStrategyType _
instance showRoutingStrategyType :: Show RoutingStrategyType where show = genericShow
instance decodeRoutingStrategyType :: Decode RoutingStrategyType where decode = genericDecode options
instance encodeRoutingStrategyType :: Encode RoutingStrategyType where encode = genericEncode options



newtype RuleSetBody = RuleSetBody String
derive instance newtypeRuleSetBody :: Newtype RuleSetBody _
derive instance repGenericRuleSetBody :: Generic RuleSetBody _
instance showRuleSetBody :: Show RuleSetBody where show = genericShow
instance decodeRuleSetBody :: Decode RuleSetBody where decode = genericDecode options
instance encodeRuleSetBody :: Encode RuleSetBody where encode = genericEncode options



newtype RuleSetLimit = RuleSetLimit Int
derive instance newtypeRuleSetLimit :: Newtype RuleSetLimit _
derive instance repGenericRuleSetLimit :: Generic RuleSetLimit _
instance showRuleSetLimit :: Show RuleSetLimit where show = genericShow
instance decodeRuleSetLimit :: Decode RuleSetLimit where decode = genericDecode options
instance encodeRuleSetLimit :: Encode RuleSetLimit where encode = genericEncode options



-- | <p>A collection of server process configurations that describe what processes to run on each instance in a fleet. All fleets must have a run-time configuration. Each instance in the fleet launches the server processes specified in the run-time configuration and launches new ones as existing processes end. Each instance regularly checks for an updated run-time configuration and follows the new instructions. </p> <p>The run-time configuration enables the instances in a fleet to run multiple processes simultaneously. Potential scenarios are as follows: (1) Run multiple processes of a single game server executable to maximize usage of your hosting resources. (2) Run one or more processes of different build executables, such as your game server executable and a related program, or two or more different versions of a game server. (3) Run multiple processes of a single game server but with different launch parameters, for example to run one process on each instance in debug mode.</p> <p>A Amazon GameLift instance is limited to 50 processes running simultaneously. A run-time configuration must specify fewer than this limit. To calculate the total number of processes specified in a run-time configuration, add the values of the <code>ConcurrentExecutions</code> parameter for each <code> <a>ServerProcess</a> </code> object in the run-time configuration.</p> <p>Fleet-related operations include:</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet capacity:</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>PutScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (automatic scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> </ul> </li> <li> <p> <a>DeleteFleet</a> </p> </li> </ul>
newtype RuntimeConfiguration = RuntimeConfiguration 
  { "ServerProcesses" :: NullOrUndefined (ServerProcessList)
  , "MaxConcurrentGameSessionActivations" :: NullOrUndefined (MaxConcurrentGameSessionActivations)
  , "GameSessionActivationTimeoutSeconds" :: NullOrUndefined (GameSessionActivationTimeoutSeconds)
  }
derive instance newtypeRuntimeConfiguration :: Newtype RuntimeConfiguration _
derive instance repGenericRuntimeConfiguration :: Generic RuntimeConfiguration _
instance showRuntimeConfiguration :: Show RuntimeConfiguration where show = genericShow
instance decodeRuntimeConfiguration :: Decode RuntimeConfiguration where decode = genericDecode options
instance encodeRuntimeConfiguration :: Encode RuntimeConfiguration where encode = genericEncode options

-- | Constructs RuntimeConfiguration from required parameters
newRuntimeConfiguration :: RuntimeConfiguration
newRuntimeConfiguration  = RuntimeConfiguration { "GameSessionActivationTimeoutSeconds": (NullOrUndefined Nothing), "MaxConcurrentGameSessionActivations": (NullOrUndefined Nothing), "ServerProcesses": (NullOrUndefined Nothing) }

-- | Constructs RuntimeConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRuntimeConfiguration' :: ( { "ServerProcesses" :: NullOrUndefined (ServerProcessList) , "MaxConcurrentGameSessionActivations" :: NullOrUndefined (MaxConcurrentGameSessionActivations) , "GameSessionActivationTimeoutSeconds" :: NullOrUndefined (GameSessionActivationTimeoutSeconds) } -> {"ServerProcesses" :: NullOrUndefined (ServerProcessList) , "MaxConcurrentGameSessionActivations" :: NullOrUndefined (MaxConcurrentGameSessionActivations) , "GameSessionActivationTimeoutSeconds" :: NullOrUndefined (GameSessionActivationTimeoutSeconds) } ) -> RuntimeConfiguration
newRuntimeConfiguration'  customize = (RuntimeConfiguration <<< customize) { "GameSessionActivationTimeoutSeconds": (NullOrUndefined Nothing), "MaxConcurrentGameSessionActivations": (NullOrUndefined Nothing), "ServerProcesses": (NullOrUndefined Nothing) }



-- | <p>Location in Amazon Simple Storage Service (Amazon S3) where build files can be stored for access by Amazon GameLift. This location is specified in a <a>CreateBuild</a> request. For more details, see the <a href="http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build">Create a Build with Files in Amazon S3</a>.</p>
newtype S3Location = S3Location 
  { "Bucket" :: NullOrUndefined (NonEmptyString)
  , "Key" :: NullOrUndefined (NonEmptyString)
  , "RoleArn" :: NullOrUndefined (NonEmptyString)
  }
derive instance newtypeS3Location :: Newtype S3Location _
derive instance repGenericS3Location :: Generic S3Location _
instance showS3Location :: Show S3Location where show = genericShow
instance decodeS3Location :: Decode S3Location where decode = genericDecode options
instance encodeS3Location :: Encode S3Location where encode = genericEncode options

-- | Constructs S3Location from required parameters
newS3Location :: S3Location
newS3Location  = S3Location { "Bucket": (NullOrUndefined Nothing), "Key": (NullOrUndefined Nothing), "RoleArn": (NullOrUndefined Nothing) }

-- | Constructs S3Location's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newS3Location' :: ( { "Bucket" :: NullOrUndefined (NonEmptyString) , "Key" :: NullOrUndefined (NonEmptyString) , "RoleArn" :: NullOrUndefined (NonEmptyString) } -> {"Bucket" :: NullOrUndefined (NonEmptyString) , "Key" :: NullOrUndefined (NonEmptyString) , "RoleArn" :: NullOrUndefined (NonEmptyString) } ) -> S3Location
newS3Location'  customize = (S3Location <<< customize) { "Bucket": (NullOrUndefined Nothing), "Key": (NullOrUndefined Nothing), "RoleArn": (NullOrUndefined Nothing) }



newtype ScalingAdjustmentType = ScalingAdjustmentType String
derive instance newtypeScalingAdjustmentType :: Newtype ScalingAdjustmentType _
derive instance repGenericScalingAdjustmentType :: Generic ScalingAdjustmentType _
instance showScalingAdjustmentType :: Show ScalingAdjustmentType where show = genericShow
instance decodeScalingAdjustmentType :: Decode ScalingAdjustmentType where decode = genericDecode options
instance encodeScalingAdjustmentType :: Encode ScalingAdjustmentType where encode = genericEncode options



-- | <p>Rule that controls how a fleet is scaled. Scaling policies are uniquely identified by the combination of name and fleet ID.</p> <p>Fleet-related operations include:</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet capacity:</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>PutScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (automatic scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (automatic scaling)</p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> </ul> </li> <li> <p> <a>DeleteFleet</a> </p> </li> </ul>
newtype ScalingPolicy = ScalingPolicy 
  { "FleetId" :: NullOrUndefined (FleetId)
  , "Name" :: NullOrUndefined (NonZeroAndMaxString)
  , "Status" :: NullOrUndefined (ScalingStatusType)
  , "ScalingAdjustment" :: NullOrUndefined (Int)
  , "ScalingAdjustmentType" :: NullOrUndefined (ScalingAdjustmentType)
  , "ComparisonOperator" :: NullOrUndefined (ComparisonOperatorType)
  , "Threshold" :: NullOrUndefined (Number)
  , "EvaluationPeriods" :: NullOrUndefined (PositiveInteger)
  , "MetricName" :: NullOrUndefined (MetricName)
  }
derive instance newtypeScalingPolicy :: Newtype ScalingPolicy _
derive instance repGenericScalingPolicy :: Generic ScalingPolicy _
instance showScalingPolicy :: Show ScalingPolicy where show = genericShow
instance decodeScalingPolicy :: Decode ScalingPolicy where decode = genericDecode options
instance encodeScalingPolicy :: Encode ScalingPolicy where encode = genericEncode options

-- | Constructs ScalingPolicy from required parameters
newScalingPolicy :: ScalingPolicy
newScalingPolicy  = ScalingPolicy { "ComparisonOperator": (NullOrUndefined Nothing), "EvaluationPeriods": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "MetricName": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ScalingAdjustment": (NullOrUndefined Nothing), "ScalingAdjustmentType": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "Threshold": (NullOrUndefined Nothing) }

-- | Constructs ScalingPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalingPolicy' :: ( { "FleetId" :: NullOrUndefined (FleetId) , "Name" :: NullOrUndefined (NonZeroAndMaxString) , "Status" :: NullOrUndefined (ScalingStatusType) , "ScalingAdjustment" :: NullOrUndefined (Int) , "ScalingAdjustmentType" :: NullOrUndefined (ScalingAdjustmentType) , "ComparisonOperator" :: NullOrUndefined (ComparisonOperatorType) , "Threshold" :: NullOrUndefined (Number) , "EvaluationPeriods" :: NullOrUndefined (PositiveInteger) , "MetricName" :: NullOrUndefined (MetricName) } -> {"FleetId" :: NullOrUndefined (FleetId) , "Name" :: NullOrUndefined (NonZeroAndMaxString) , "Status" :: NullOrUndefined (ScalingStatusType) , "ScalingAdjustment" :: NullOrUndefined (Int) , "ScalingAdjustmentType" :: NullOrUndefined (ScalingAdjustmentType) , "ComparisonOperator" :: NullOrUndefined (ComparisonOperatorType) , "Threshold" :: NullOrUndefined (Number) , "EvaluationPeriods" :: NullOrUndefined (PositiveInteger) , "MetricName" :: NullOrUndefined (MetricName) } ) -> ScalingPolicy
newScalingPolicy'  customize = (ScalingPolicy <<< customize) { "ComparisonOperator": (NullOrUndefined Nothing), "EvaluationPeriods": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "MetricName": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ScalingAdjustment": (NullOrUndefined Nothing), "ScalingAdjustmentType": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "Threshold": (NullOrUndefined Nothing) }



newtype ScalingPolicyList = ScalingPolicyList (Array ScalingPolicy)
derive instance newtypeScalingPolicyList :: Newtype ScalingPolicyList _
derive instance repGenericScalingPolicyList :: Generic ScalingPolicyList _
instance showScalingPolicyList :: Show ScalingPolicyList where show = genericShow
instance decodeScalingPolicyList :: Decode ScalingPolicyList where decode = genericDecode options
instance encodeScalingPolicyList :: Encode ScalingPolicyList where encode = genericEncode options



newtype ScalingStatusType = ScalingStatusType String
derive instance newtypeScalingStatusType :: Newtype ScalingStatusType _
derive instance repGenericScalingStatusType :: Generic ScalingStatusType _
instance showScalingStatusType :: Show ScalingStatusType where show = genericShow
instance decodeScalingStatusType :: Decode ScalingStatusType where decode = genericDecode options
instance encodeScalingStatusType :: Encode ScalingStatusType where encode = genericEncode options



-- | <p>Represents the input for a request action.</p>
newtype SearchGameSessionsInput = SearchGameSessionsInput 
  { "FleetId" :: NullOrUndefined (FleetId)
  , "AliasId" :: NullOrUndefined (AliasId)
  , "FilterExpression" :: NullOrUndefined (NonZeroAndMaxString)
  , "SortExpression" :: NullOrUndefined (NonZeroAndMaxString)
  , "Limit" :: NullOrUndefined (PositiveInteger)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeSearchGameSessionsInput :: Newtype SearchGameSessionsInput _
derive instance repGenericSearchGameSessionsInput :: Generic SearchGameSessionsInput _
instance showSearchGameSessionsInput :: Show SearchGameSessionsInput where show = genericShow
instance decodeSearchGameSessionsInput :: Decode SearchGameSessionsInput where decode = genericDecode options
instance encodeSearchGameSessionsInput :: Encode SearchGameSessionsInput where encode = genericEncode options

-- | Constructs SearchGameSessionsInput from required parameters
newSearchGameSessionsInput :: SearchGameSessionsInput
newSearchGameSessionsInput  = SearchGameSessionsInput { "AliasId": (NullOrUndefined Nothing), "FilterExpression": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "SortExpression": (NullOrUndefined Nothing) }

-- | Constructs SearchGameSessionsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchGameSessionsInput' :: ( { "FleetId" :: NullOrUndefined (FleetId) , "AliasId" :: NullOrUndefined (AliasId) , "FilterExpression" :: NullOrUndefined (NonZeroAndMaxString) , "SortExpression" :: NullOrUndefined (NonZeroAndMaxString) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"FleetId" :: NullOrUndefined (FleetId) , "AliasId" :: NullOrUndefined (AliasId) , "FilterExpression" :: NullOrUndefined (NonZeroAndMaxString) , "SortExpression" :: NullOrUndefined (NonZeroAndMaxString) , "Limit" :: NullOrUndefined (PositiveInteger) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> SearchGameSessionsInput
newSearchGameSessionsInput'  customize = (SearchGameSessionsInput <<< customize) { "AliasId": (NullOrUndefined Nothing), "FilterExpression": (NullOrUndefined Nothing), "FleetId": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "SortExpression": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype SearchGameSessionsOutput = SearchGameSessionsOutput 
  { "GameSessions" :: NullOrUndefined (GameSessionList)
  , "NextToken" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeSearchGameSessionsOutput :: Newtype SearchGameSessionsOutput _
derive instance repGenericSearchGameSessionsOutput :: Generic SearchGameSessionsOutput _
instance showSearchGameSessionsOutput :: Show SearchGameSessionsOutput where show = genericShow
instance decodeSearchGameSessionsOutput :: Decode SearchGameSessionsOutput where decode = genericDecode options
instance encodeSearchGameSessionsOutput :: Encode SearchGameSessionsOutput where encode = genericEncode options

-- | Constructs SearchGameSessionsOutput from required parameters
newSearchGameSessionsOutput :: SearchGameSessionsOutput
newSearchGameSessionsOutput  = SearchGameSessionsOutput { "GameSessions": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs SearchGameSessionsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchGameSessionsOutput' :: ( { "GameSessions" :: NullOrUndefined (GameSessionList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } -> {"GameSessions" :: NullOrUndefined (GameSessionList) , "NextToken" :: NullOrUndefined (NonZeroAndMaxString) } ) -> SearchGameSessionsOutput
newSearchGameSessionsOutput'  customize = (SearchGameSessionsOutput <<< customize) { "GameSessions": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>A set of instructions for launching server processes on each instance in a fleet. Each instruction set identifies the location of the server executable, optional launch parameters, and the number of server processes with this configuration to maintain concurrently on the instance. Server process configurations make up a fleet's <code> <a>RuntimeConfiguration</a> </code>.</p>
newtype ServerProcess = ServerProcess 
  { "LaunchPath" :: (NonZeroAndMaxString)
  , "Parameters" :: NullOrUndefined (NonZeroAndMaxString)
  , "ConcurrentExecutions" :: (PositiveInteger)
  }
derive instance newtypeServerProcess :: Newtype ServerProcess _
derive instance repGenericServerProcess :: Generic ServerProcess _
instance showServerProcess :: Show ServerProcess where show = genericShow
instance decodeServerProcess :: Decode ServerProcess where decode = genericDecode options
instance encodeServerProcess :: Encode ServerProcess where encode = genericEncode options

-- | Constructs ServerProcess from required parameters
newServerProcess :: PositiveInteger -> NonZeroAndMaxString -> ServerProcess
newServerProcess _ConcurrentExecutions _LaunchPath = ServerProcess { "ConcurrentExecutions": _ConcurrentExecutions, "LaunchPath": _LaunchPath, "Parameters": (NullOrUndefined Nothing) }

-- | Constructs ServerProcess's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServerProcess' :: PositiveInteger -> NonZeroAndMaxString -> ( { "LaunchPath" :: (NonZeroAndMaxString) , "Parameters" :: NullOrUndefined (NonZeroAndMaxString) , "ConcurrentExecutions" :: (PositiveInteger) } -> {"LaunchPath" :: (NonZeroAndMaxString) , "Parameters" :: NullOrUndefined (NonZeroAndMaxString) , "ConcurrentExecutions" :: (PositiveInteger) } ) -> ServerProcess
newServerProcess' _ConcurrentExecutions _LaunchPath customize = (ServerProcess <<< customize) { "ConcurrentExecutions": _ConcurrentExecutions, "LaunchPath": _LaunchPath, "Parameters": (NullOrUndefined Nothing) }



newtype ServerProcessList = ServerProcessList (Array ServerProcess)
derive instance newtypeServerProcessList :: Newtype ServerProcessList _
derive instance repGenericServerProcessList :: Generic ServerProcessList _
instance showServerProcessList :: Show ServerProcessList where show = genericShow
instance decodeServerProcessList :: Decode ServerProcessList where decode = genericDecode options
instance encodeServerProcessList :: Encode ServerProcessList where encode = genericEncode options



newtype SnsArnStringModel = SnsArnStringModel String
derive instance newtypeSnsArnStringModel :: Newtype SnsArnStringModel _
derive instance repGenericSnsArnStringModel :: Generic SnsArnStringModel _
instance showSnsArnStringModel :: Show SnsArnStringModel where show = genericShow
instance decodeSnsArnStringModel :: Decode SnsArnStringModel where decode = genericDecode options
instance encodeSnsArnStringModel :: Encode SnsArnStringModel where encode = genericEncode options



-- | <p>Represents the input for a request action.</p>
newtype StartGameSessionPlacementInput = StartGameSessionPlacementInput 
  { "PlacementId" :: (IdStringModel)
  , "GameSessionQueueName" :: (GameSessionQueueName)
  , "GameProperties" :: NullOrUndefined (GamePropertyList)
  , "MaximumPlayerSessionCount" :: (WholeNumber)
  , "GameSessionName" :: NullOrUndefined (NonZeroAndMaxString)
  , "PlayerLatencies" :: NullOrUndefined (PlayerLatencyList)
  , "DesiredPlayerSessions" :: NullOrUndefined (DesiredPlayerSessionList)
  , "GameSessionData" :: NullOrUndefined (GameSessionData)
  }
derive instance newtypeStartGameSessionPlacementInput :: Newtype StartGameSessionPlacementInput _
derive instance repGenericStartGameSessionPlacementInput :: Generic StartGameSessionPlacementInput _
instance showStartGameSessionPlacementInput :: Show StartGameSessionPlacementInput where show = genericShow
instance decodeStartGameSessionPlacementInput :: Decode StartGameSessionPlacementInput where decode = genericDecode options
instance encodeStartGameSessionPlacementInput :: Encode StartGameSessionPlacementInput where encode = genericEncode options

-- | Constructs StartGameSessionPlacementInput from required parameters
newStartGameSessionPlacementInput :: GameSessionQueueName -> WholeNumber -> IdStringModel -> StartGameSessionPlacementInput
newStartGameSessionPlacementInput _GameSessionQueueName _MaximumPlayerSessionCount _PlacementId = StartGameSessionPlacementInput { "GameSessionQueueName": _GameSessionQueueName, "MaximumPlayerSessionCount": _MaximumPlayerSessionCount, "PlacementId": _PlacementId, "DesiredPlayerSessions": (NullOrUndefined Nothing), "GameProperties": (NullOrUndefined Nothing), "GameSessionData": (NullOrUndefined Nothing), "GameSessionName": (NullOrUndefined Nothing), "PlayerLatencies": (NullOrUndefined Nothing) }

-- | Constructs StartGameSessionPlacementInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartGameSessionPlacementInput' :: GameSessionQueueName -> WholeNumber -> IdStringModel -> ( { "PlacementId" :: (IdStringModel) , "GameSessionQueueName" :: (GameSessionQueueName) , "GameProperties" :: NullOrUndefined (GamePropertyList) , "MaximumPlayerSessionCount" :: (WholeNumber) , "GameSessionName" :: NullOrUndefined (NonZeroAndMaxString) , "PlayerLatencies" :: NullOrUndefined (PlayerLatencyList) , "DesiredPlayerSessions" :: NullOrUndefined (DesiredPlayerSessionList) , "GameSessionData" :: NullOrUndefined (GameSessionData) } -> {"PlacementId" :: (IdStringModel) , "GameSessionQueueName" :: (GameSessionQueueName) , "GameProperties" :: NullOrUndefined (GamePropertyList) , "MaximumPlayerSessionCount" :: (WholeNumber) , "GameSessionName" :: NullOrUndefined (NonZeroAndMaxString) , "PlayerLatencies" :: NullOrUndefined (PlayerLatencyList) , "DesiredPlayerSessions" :: NullOrUndefined (DesiredPlayerSessionList) , "GameSessionData" :: NullOrUndefined (GameSessionData) } ) -> StartGameSessionPlacementInput
newStartGameSessionPlacementInput' _GameSessionQueueName _MaximumPlayerSessionCount _PlacementId customize = (StartGameSessionPlacementInput <<< customize) { "GameSessionQueueName": _GameSessionQueueName, "MaximumPlayerSessionCount": _MaximumPlayerSessionCount, "PlacementId": _PlacementId, "DesiredPlayerSessions": (NullOrUndefined Nothing), "GameProperties": (NullOrUndefined Nothing), "GameSessionData": (NullOrUndefined Nothing), "GameSessionName": (NullOrUndefined Nothing), "PlayerLatencies": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype StartGameSessionPlacementOutput = StartGameSessionPlacementOutput 
  { "GameSessionPlacement" :: NullOrUndefined (GameSessionPlacement)
  }
derive instance newtypeStartGameSessionPlacementOutput :: Newtype StartGameSessionPlacementOutput _
derive instance repGenericStartGameSessionPlacementOutput :: Generic StartGameSessionPlacementOutput _
instance showStartGameSessionPlacementOutput :: Show StartGameSessionPlacementOutput where show = genericShow
instance decodeStartGameSessionPlacementOutput :: Decode StartGameSessionPlacementOutput where decode = genericDecode options
instance encodeStartGameSessionPlacementOutput :: Encode StartGameSessionPlacementOutput where encode = genericEncode options

-- | Constructs StartGameSessionPlacementOutput from required parameters
newStartGameSessionPlacementOutput :: StartGameSessionPlacementOutput
newStartGameSessionPlacementOutput  = StartGameSessionPlacementOutput { "GameSessionPlacement": (NullOrUndefined Nothing) }

-- | Constructs StartGameSessionPlacementOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartGameSessionPlacementOutput' :: ( { "GameSessionPlacement" :: NullOrUndefined (GameSessionPlacement) } -> {"GameSessionPlacement" :: NullOrUndefined (GameSessionPlacement) } ) -> StartGameSessionPlacementOutput
newStartGameSessionPlacementOutput'  customize = (StartGameSessionPlacementOutput <<< customize) { "GameSessionPlacement": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype StartMatchBackfillInput = StartMatchBackfillInput 
  { "TicketId" :: NullOrUndefined (MatchmakingIdStringModel)
  , "ConfigurationName" :: (MatchmakingIdStringModel)
  , "GameSessionArn" :: (ArnStringModel)
  , "Players" :: (PlayerList)
  }
derive instance newtypeStartMatchBackfillInput :: Newtype StartMatchBackfillInput _
derive instance repGenericStartMatchBackfillInput :: Generic StartMatchBackfillInput _
instance showStartMatchBackfillInput :: Show StartMatchBackfillInput where show = genericShow
instance decodeStartMatchBackfillInput :: Decode StartMatchBackfillInput where decode = genericDecode options
instance encodeStartMatchBackfillInput :: Encode StartMatchBackfillInput where encode = genericEncode options

-- | Constructs StartMatchBackfillInput from required parameters
newStartMatchBackfillInput :: MatchmakingIdStringModel -> ArnStringModel -> PlayerList -> StartMatchBackfillInput
newStartMatchBackfillInput _ConfigurationName _GameSessionArn _Players = StartMatchBackfillInput { "ConfigurationName": _ConfigurationName, "GameSessionArn": _GameSessionArn, "Players": _Players, "TicketId": (NullOrUndefined Nothing) }

-- | Constructs StartMatchBackfillInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartMatchBackfillInput' :: MatchmakingIdStringModel -> ArnStringModel -> PlayerList -> ( { "TicketId" :: NullOrUndefined (MatchmakingIdStringModel) , "ConfigurationName" :: (MatchmakingIdStringModel) , "GameSessionArn" :: (ArnStringModel) , "Players" :: (PlayerList) } -> {"TicketId" :: NullOrUndefined (MatchmakingIdStringModel) , "ConfigurationName" :: (MatchmakingIdStringModel) , "GameSessionArn" :: (ArnStringModel) , "Players" :: (PlayerList) } ) -> StartMatchBackfillInput
newStartMatchBackfillInput' _ConfigurationName _GameSessionArn _Players customize = (StartMatchBackfillInput <<< customize) { "ConfigurationName": _ConfigurationName, "GameSessionArn": _GameSessionArn, "Players": _Players, "TicketId": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype StartMatchBackfillOutput = StartMatchBackfillOutput 
  { "MatchmakingTicket" :: NullOrUndefined (MatchmakingTicket)
  }
derive instance newtypeStartMatchBackfillOutput :: Newtype StartMatchBackfillOutput _
derive instance repGenericStartMatchBackfillOutput :: Generic StartMatchBackfillOutput _
instance showStartMatchBackfillOutput :: Show StartMatchBackfillOutput where show = genericShow
instance decodeStartMatchBackfillOutput :: Decode StartMatchBackfillOutput where decode = genericDecode options
instance encodeStartMatchBackfillOutput :: Encode StartMatchBackfillOutput where encode = genericEncode options

-- | Constructs StartMatchBackfillOutput from required parameters
newStartMatchBackfillOutput :: StartMatchBackfillOutput
newStartMatchBackfillOutput  = StartMatchBackfillOutput { "MatchmakingTicket": (NullOrUndefined Nothing) }

-- | Constructs StartMatchBackfillOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartMatchBackfillOutput' :: ( { "MatchmakingTicket" :: NullOrUndefined (MatchmakingTicket) } -> {"MatchmakingTicket" :: NullOrUndefined (MatchmakingTicket) } ) -> StartMatchBackfillOutput
newStartMatchBackfillOutput'  customize = (StartMatchBackfillOutput <<< customize) { "MatchmakingTicket": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype StartMatchmakingInput = StartMatchmakingInput 
  { "TicketId" :: NullOrUndefined (MatchmakingIdStringModel)
  , "ConfigurationName" :: (MatchmakingIdStringModel)
  , "Players" :: (PlayerList)
  }
derive instance newtypeStartMatchmakingInput :: Newtype StartMatchmakingInput _
derive instance repGenericStartMatchmakingInput :: Generic StartMatchmakingInput _
instance showStartMatchmakingInput :: Show StartMatchmakingInput where show = genericShow
instance decodeStartMatchmakingInput :: Decode StartMatchmakingInput where decode = genericDecode options
instance encodeStartMatchmakingInput :: Encode StartMatchmakingInput where encode = genericEncode options

-- | Constructs StartMatchmakingInput from required parameters
newStartMatchmakingInput :: MatchmakingIdStringModel -> PlayerList -> StartMatchmakingInput
newStartMatchmakingInput _ConfigurationName _Players = StartMatchmakingInput { "ConfigurationName": _ConfigurationName, "Players": _Players, "TicketId": (NullOrUndefined Nothing) }

-- | Constructs StartMatchmakingInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartMatchmakingInput' :: MatchmakingIdStringModel -> PlayerList -> ( { "TicketId" :: NullOrUndefined (MatchmakingIdStringModel) , "ConfigurationName" :: (MatchmakingIdStringModel) , "Players" :: (PlayerList) } -> {"TicketId" :: NullOrUndefined (MatchmakingIdStringModel) , "ConfigurationName" :: (MatchmakingIdStringModel) , "Players" :: (PlayerList) } ) -> StartMatchmakingInput
newStartMatchmakingInput' _ConfigurationName _Players customize = (StartMatchmakingInput <<< customize) { "ConfigurationName": _ConfigurationName, "Players": _Players, "TicketId": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype StartMatchmakingOutput = StartMatchmakingOutput 
  { "MatchmakingTicket" :: NullOrUndefined (MatchmakingTicket)
  }
derive instance newtypeStartMatchmakingOutput :: Newtype StartMatchmakingOutput _
derive instance repGenericStartMatchmakingOutput :: Generic StartMatchmakingOutput _
instance showStartMatchmakingOutput :: Show StartMatchmakingOutput where show = genericShow
instance decodeStartMatchmakingOutput :: Decode StartMatchmakingOutput where decode = genericDecode options
instance encodeStartMatchmakingOutput :: Encode StartMatchmakingOutput where encode = genericEncode options

-- | Constructs StartMatchmakingOutput from required parameters
newStartMatchmakingOutput :: StartMatchmakingOutput
newStartMatchmakingOutput  = StartMatchmakingOutput { "MatchmakingTicket": (NullOrUndefined Nothing) }

-- | Constructs StartMatchmakingOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartMatchmakingOutput' :: ( { "MatchmakingTicket" :: NullOrUndefined (MatchmakingTicket) } -> {"MatchmakingTicket" :: NullOrUndefined (MatchmakingTicket) } ) -> StartMatchmakingOutput
newStartMatchmakingOutput'  customize = (StartMatchmakingOutput <<< customize) { "MatchmakingTicket": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype StopGameSessionPlacementInput = StopGameSessionPlacementInput 
  { "PlacementId" :: (IdStringModel)
  }
derive instance newtypeStopGameSessionPlacementInput :: Newtype StopGameSessionPlacementInput _
derive instance repGenericStopGameSessionPlacementInput :: Generic StopGameSessionPlacementInput _
instance showStopGameSessionPlacementInput :: Show StopGameSessionPlacementInput where show = genericShow
instance decodeStopGameSessionPlacementInput :: Decode StopGameSessionPlacementInput where decode = genericDecode options
instance encodeStopGameSessionPlacementInput :: Encode StopGameSessionPlacementInput where encode = genericEncode options

-- | Constructs StopGameSessionPlacementInput from required parameters
newStopGameSessionPlacementInput :: IdStringModel -> StopGameSessionPlacementInput
newStopGameSessionPlacementInput _PlacementId = StopGameSessionPlacementInput { "PlacementId": _PlacementId }

-- | Constructs StopGameSessionPlacementInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopGameSessionPlacementInput' :: IdStringModel -> ( { "PlacementId" :: (IdStringModel) } -> {"PlacementId" :: (IdStringModel) } ) -> StopGameSessionPlacementInput
newStopGameSessionPlacementInput' _PlacementId customize = (StopGameSessionPlacementInput <<< customize) { "PlacementId": _PlacementId }



-- | <p>Represents the returned data in response to a request action.</p>
newtype StopGameSessionPlacementOutput = StopGameSessionPlacementOutput 
  { "GameSessionPlacement" :: NullOrUndefined (GameSessionPlacement)
  }
derive instance newtypeStopGameSessionPlacementOutput :: Newtype StopGameSessionPlacementOutput _
derive instance repGenericStopGameSessionPlacementOutput :: Generic StopGameSessionPlacementOutput _
instance showStopGameSessionPlacementOutput :: Show StopGameSessionPlacementOutput where show = genericShow
instance decodeStopGameSessionPlacementOutput :: Decode StopGameSessionPlacementOutput where decode = genericDecode options
instance encodeStopGameSessionPlacementOutput :: Encode StopGameSessionPlacementOutput where encode = genericEncode options

-- | Constructs StopGameSessionPlacementOutput from required parameters
newStopGameSessionPlacementOutput :: StopGameSessionPlacementOutput
newStopGameSessionPlacementOutput  = StopGameSessionPlacementOutput { "GameSessionPlacement": (NullOrUndefined Nothing) }

-- | Constructs StopGameSessionPlacementOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopGameSessionPlacementOutput' :: ( { "GameSessionPlacement" :: NullOrUndefined (GameSessionPlacement) } -> {"GameSessionPlacement" :: NullOrUndefined (GameSessionPlacement) } ) -> StopGameSessionPlacementOutput
newStopGameSessionPlacementOutput'  customize = (StopGameSessionPlacementOutput <<< customize) { "GameSessionPlacement": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype StopMatchmakingInput = StopMatchmakingInput 
  { "TicketId" :: (MatchmakingIdStringModel)
  }
derive instance newtypeStopMatchmakingInput :: Newtype StopMatchmakingInput _
derive instance repGenericStopMatchmakingInput :: Generic StopMatchmakingInput _
instance showStopMatchmakingInput :: Show StopMatchmakingInput where show = genericShow
instance decodeStopMatchmakingInput :: Decode StopMatchmakingInput where decode = genericDecode options
instance encodeStopMatchmakingInput :: Encode StopMatchmakingInput where encode = genericEncode options

-- | Constructs StopMatchmakingInput from required parameters
newStopMatchmakingInput :: MatchmakingIdStringModel -> StopMatchmakingInput
newStopMatchmakingInput _TicketId = StopMatchmakingInput { "TicketId": _TicketId }

-- | Constructs StopMatchmakingInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopMatchmakingInput' :: MatchmakingIdStringModel -> ( { "TicketId" :: (MatchmakingIdStringModel) } -> {"TicketId" :: (MatchmakingIdStringModel) } ) -> StopMatchmakingInput
newStopMatchmakingInput' _TicketId customize = (StopMatchmakingInput <<< customize) { "TicketId": _TicketId }



newtype StopMatchmakingOutput = StopMatchmakingOutput Types.NoArguments
derive instance newtypeStopMatchmakingOutput :: Newtype StopMatchmakingOutput _
derive instance repGenericStopMatchmakingOutput :: Generic StopMatchmakingOutput _
instance showStopMatchmakingOutput :: Show StopMatchmakingOutput where show = genericShow
instance decodeStopMatchmakingOutput :: Decode StopMatchmakingOutput where decode = genericDecode options
instance encodeStopMatchmakingOutput :: Encode StopMatchmakingOutput where encode = genericEncode options



newtype StringDoubleMap = StringDoubleMap (StrMap.StrMap DoubleObject)
derive instance newtypeStringDoubleMap :: Newtype StringDoubleMap _
derive instance repGenericStringDoubleMap :: Generic StringDoubleMap _
instance showStringDoubleMap :: Show StringDoubleMap where show = genericShow
instance decodeStringDoubleMap :: Decode StringDoubleMap where decode = genericDecode options
instance encodeStringDoubleMap :: Encode StringDoubleMap where encode = genericEncode options



newtype StringList = StringList (Array NonZeroAndMaxString)
derive instance newtypeStringList :: Newtype StringList _
derive instance repGenericStringList :: Generic StringList _
instance showStringList :: Show StringList where show = genericShow
instance decodeStringList :: Decode StringList where decode = genericDecode options
instance encodeStringList :: Encode StringList where encode = genericEncode options



newtype StringModel = StringModel String
derive instance newtypeStringModel :: Newtype StringModel _
derive instance repGenericStringModel :: Generic StringModel _
instance showStringModel :: Show StringModel where show = genericShow
instance decodeStringModel :: Decode StringModel where decode = genericDecode options
instance encodeStringModel :: Encode StringModel where encode = genericEncode options



-- | <p>The service is unable to resolve the routing for a particular alias because it has a terminal <a>RoutingStrategy</a> associated with it. The message returned in this exception is the message defined in the routing strategy itself. Such requests should only be retried if the routing strategy for the specified alias is modified. </p>
newtype TerminalRoutingStrategyException = TerminalRoutingStrategyException 
  { "Message" :: NullOrUndefined (NonEmptyString)
  }
derive instance newtypeTerminalRoutingStrategyException :: Newtype TerminalRoutingStrategyException _
derive instance repGenericTerminalRoutingStrategyException :: Generic TerminalRoutingStrategyException _
instance showTerminalRoutingStrategyException :: Show TerminalRoutingStrategyException where show = genericShow
instance decodeTerminalRoutingStrategyException :: Decode TerminalRoutingStrategyException where decode = genericDecode options
instance encodeTerminalRoutingStrategyException :: Encode TerminalRoutingStrategyException where encode = genericEncode options

-- | Constructs TerminalRoutingStrategyException from required parameters
newTerminalRoutingStrategyException :: TerminalRoutingStrategyException
newTerminalRoutingStrategyException  = TerminalRoutingStrategyException { "Message": (NullOrUndefined Nothing) }

-- | Constructs TerminalRoutingStrategyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTerminalRoutingStrategyException' :: ( { "Message" :: NullOrUndefined (NonEmptyString) } -> {"Message" :: NullOrUndefined (NonEmptyString) } ) -> TerminalRoutingStrategyException
newTerminalRoutingStrategyException'  customize = (TerminalRoutingStrategyException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The client failed authentication. Clients should not retry such requests.</p>
newtype UnauthorizedException = UnauthorizedException 
  { "Message" :: NullOrUndefined (NonEmptyString)
  }
derive instance newtypeUnauthorizedException :: Newtype UnauthorizedException _
derive instance repGenericUnauthorizedException :: Generic UnauthorizedException _
instance showUnauthorizedException :: Show UnauthorizedException where show = genericShow
instance decodeUnauthorizedException :: Decode UnauthorizedException where decode = genericDecode options
instance encodeUnauthorizedException :: Encode UnauthorizedException where encode = genericEncode options

-- | Constructs UnauthorizedException from required parameters
newUnauthorizedException :: UnauthorizedException
newUnauthorizedException  = UnauthorizedException { "Message": (NullOrUndefined Nothing) }

-- | Constructs UnauthorizedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnauthorizedException' :: ( { "Message" :: NullOrUndefined (NonEmptyString) } -> {"Message" :: NullOrUndefined (NonEmptyString) } ) -> UnauthorizedException
newUnauthorizedException'  customize = (UnauthorizedException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The requested operation is not supported in the region specified.</p>
newtype UnsupportedRegionException = UnsupportedRegionException 
  { "Message" :: NullOrUndefined (NonEmptyString)
  }
derive instance newtypeUnsupportedRegionException :: Newtype UnsupportedRegionException _
derive instance repGenericUnsupportedRegionException :: Generic UnsupportedRegionException _
instance showUnsupportedRegionException :: Show UnsupportedRegionException where show = genericShow
instance decodeUnsupportedRegionException :: Decode UnsupportedRegionException where decode = genericDecode options
instance encodeUnsupportedRegionException :: Encode UnsupportedRegionException where encode = genericEncode options

-- | Constructs UnsupportedRegionException from required parameters
newUnsupportedRegionException :: UnsupportedRegionException
newUnsupportedRegionException  = UnsupportedRegionException { "Message": (NullOrUndefined Nothing) }

-- | Constructs UnsupportedRegionException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnsupportedRegionException' :: ( { "Message" :: NullOrUndefined (NonEmptyString) } -> {"Message" :: NullOrUndefined (NonEmptyString) } ) -> UnsupportedRegionException
newUnsupportedRegionException'  customize = (UnsupportedRegionException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype UpdateAliasInput = UpdateAliasInput 
  { "AliasId" :: (AliasId)
  , "Name" :: NullOrUndefined (NonBlankAndLengthConstraintString)
  , "Description" :: NullOrUndefined (NonZeroAndMaxString)
  , "RoutingStrategy" :: NullOrUndefined (RoutingStrategy)
  }
derive instance newtypeUpdateAliasInput :: Newtype UpdateAliasInput _
derive instance repGenericUpdateAliasInput :: Generic UpdateAliasInput _
instance showUpdateAliasInput :: Show UpdateAliasInput where show = genericShow
instance decodeUpdateAliasInput :: Decode UpdateAliasInput where decode = genericDecode options
instance encodeUpdateAliasInput :: Encode UpdateAliasInput where encode = genericEncode options

-- | Constructs UpdateAliasInput from required parameters
newUpdateAliasInput :: AliasId -> UpdateAliasInput
newUpdateAliasInput _AliasId = UpdateAliasInput { "AliasId": _AliasId, "Description": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "RoutingStrategy": (NullOrUndefined Nothing) }

-- | Constructs UpdateAliasInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateAliasInput' :: AliasId -> ( { "AliasId" :: (AliasId) , "Name" :: NullOrUndefined (NonBlankAndLengthConstraintString) , "Description" :: NullOrUndefined (NonZeroAndMaxString) , "RoutingStrategy" :: NullOrUndefined (RoutingStrategy) } -> {"AliasId" :: (AliasId) , "Name" :: NullOrUndefined (NonBlankAndLengthConstraintString) , "Description" :: NullOrUndefined (NonZeroAndMaxString) , "RoutingStrategy" :: NullOrUndefined (RoutingStrategy) } ) -> UpdateAliasInput
newUpdateAliasInput' _AliasId customize = (UpdateAliasInput <<< customize) { "AliasId": _AliasId, "Description": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "RoutingStrategy": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype UpdateAliasOutput = UpdateAliasOutput 
  { "Alias" :: NullOrUndefined (Alias)
  }
derive instance newtypeUpdateAliasOutput :: Newtype UpdateAliasOutput _
derive instance repGenericUpdateAliasOutput :: Generic UpdateAliasOutput _
instance showUpdateAliasOutput :: Show UpdateAliasOutput where show = genericShow
instance decodeUpdateAliasOutput :: Decode UpdateAliasOutput where decode = genericDecode options
instance encodeUpdateAliasOutput :: Encode UpdateAliasOutput where encode = genericEncode options

-- | Constructs UpdateAliasOutput from required parameters
newUpdateAliasOutput :: UpdateAliasOutput
newUpdateAliasOutput  = UpdateAliasOutput { "Alias": (NullOrUndefined Nothing) }

-- | Constructs UpdateAliasOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateAliasOutput' :: ( { "Alias" :: NullOrUndefined (Alias) } -> {"Alias" :: NullOrUndefined (Alias) } ) -> UpdateAliasOutput
newUpdateAliasOutput'  customize = (UpdateAliasOutput <<< customize) { "Alias": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype UpdateBuildInput = UpdateBuildInput 
  { "BuildId" :: (BuildId)
  , "Name" :: NullOrUndefined (NonZeroAndMaxString)
  , "Version" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeUpdateBuildInput :: Newtype UpdateBuildInput _
derive instance repGenericUpdateBuildInput :: Generic UpdateBuildInput _
instance showUpdateBuildInput :: Show UpdateBuildInput where show = genericShow
instance decodeUpdateBuildInput :: Decode UpdateBuildInput where decode = genericDecode options
instance encodeUpdateBuildInput :: Encode UpdateBuildInput where encode = genericEncode options

-- | Constructs UpdateBuildInput from required parameters
newUpdateBuildInput :: BuildId -> UpdateBuildInput
newUpdateBuildInput _BuildId = UpdateBuildInput { "BuildId": _BuildId, "Name": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }

-- | Constructs UpdateBuildInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateBuildInput' :: BuildId -> ( { "BuildId" :: (BuildId) , "Name" :: NullOrUndefined (NonZeroAndMaxString) , "Version" :: NullOrUndefined (NonZeroAndMaxString) } -> {"BuildId" :: (BuildId) , "Name" :: NullOrUndefined (NonZeroAndMaxString) , "Version" :: NullOrUndefined (NonZeroAndMaxString) } ) -> UpdateBuildInput
newUpdateBuildInput' _BuildId customize = (UpdateBuildInput <<< customize) { "BuildId": _BuildId, "Name": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype UpdateBuildOutput = UpdateBuildOutput 
  { "Build" :: NullOrUndefined (Build)
  }
derive instance newtypeUpdateBuildOutput :: Newtype UpdateBuildOutput _
derive instance repGenericUpdateBuildOutput :: Generic UpdateBuildOutput _
instance showUpdateBuildOutput :: Show UpdateBuildOutput where show = genericShow
instance decodeUpdateBuildOutput :: Decode UpdateBuildOutput where decode = genericDecode options
instance encodeUpdateBuildOutput :: Encode UpdateBuildOutput where encode = genericEncode options

-- | Constructs UpdateBuildOutput from required parameters
newUpdateBuildOutput :: UpdateBuildOutput
newUpdateBuildOutput  = UpdateBuildOutput { "Build": (NullOrUndefined Nothing) }

-- | Constructs UpdateBuildOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateBuildOutput' :: ( { "Build" :: NullOrUndefined (Build) } -> {"Build" :: NullOrUndefined (Build) } ) -> UpdateBuildOutput
newUpdateBuildOutput'  customize = (UpdateBuildOutput <<< customize) { "Build": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype UpdateFleetAttributesInput = UpdateFleetAttributesInput 
  { "FleetId" :: (FleetId)
  , "Name" :: NullOrUndefined (NonZeroAndMaxString)
  , "Description" :: NullOrUndefined (NonZeroAndMaxString)
  , "NewGameSessionProtectionPolicy" :: NullOrUndefined (ProtectionPolicy)
  , "ResourceCreationLimitPolicy" :: NullOrUndefined (ResourceCreationLimitPolicy)
  , "MetricGroups" :: NullOrUndefined (MetricGroupList)
  }
derive instance newtypeUpdateFleetAttributesInput :: Newtype UpdateFleetAttributesInput _
derive instance repGenericUpdateFleetAttributesInput :: Generic UpdateFleetAttributesInput _
instance showUpdateFleetAttributesInput :: Show UpdateFleetAttributesInput where show = genericShow
instance decodeUpdateFleetAttributesInput :: Decode UpdateFleetAttributesInput where decode = genericDecode options
instance encodeUpdateFleetAttributesInput :: Encode UpdateFleetAttributesInput where encode = genericEncode options

-- | Constructs UpdateFleetAttributesInput from required parameters
newUpdateFleetAttributesInput :: FleetId -> UpdateFleetAttributesInput
newUpdateFleetAttributesInput _FleetId = UpdateFleetAttributesInput { "FleetId": _FleetId, "Description": (NullOrUndefined Nothing), "MetricGroups": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "NewGameSessionProtectionPolicy": (NullOrUndefined Nothing), "ResourceCreationLimitPolicy": (NullOrUndefined Nothing) }

-- | Constructs UpdateFleetAttributesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateFleetAttributesInput' :: FleetId -> ( { "FleetId" :: (FleetId) , "Name" :: NullOrUndefined (NonZeroAndMaxString) , "Description" :: NullOrUndefined (NonZeroAndMaxString) , "NewGameSessionProtectionPolicy" :: NullOrUndefined (ProtectionPolicy) , "ResourceCreationLimitPolicy" :: NullOrUndefined (ResourceCreationLimitPolicy) , "MetricGroups" :: NullOrUndefined (MetricGroupList) } -> {"FleetId" :: (FleetId) , "Name" :: NullOrUndefined (NonZeroAndMaxString) , "Description" :: NullOrUndefined (NonZeroAndMaxString) , "NewGameSessionProtectionPolicy" :: NullOrUndefined (ProtectionPolicy) , "ResourceCreationLimitPolicy" :: NullOrUndefined (ResourceCreationLimitPolicy) , "MetricGroups" :: NullOrUndefined (MetricGroupList) } ) -> UpdateFleetAttributesInput
newUpdateFleetAttributesInput' _FleetId customize = (UpdateFleetAttributesInput <<< customize) { "FleetId": _FleetId, "Description": (NullOrUndefined Nothing), "MetricGroups": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "NewGameSessionProtectionPolicy": (NullOrUndefined Nothing), "ResourceCreationLimitPolicy": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype UpdateFleetAttributesOutput = UpdateFleetAttributesOutput 
  { "FleetId" :: NullOrUndefined (FleetId)
  }
derive instance newtypeUpdateFleetAttributesOutput :: Newtype UpdateFleetAttributesOutput _
derive instance repGenericUpdateFleetAttributesOutput :: Generic UpdateFleetAttributesOutput _
instance showUpdateFleetAttributesOutput :: Show UpdateFleetAttributesOutput where show = genericShow
instance decodeUpdateFleetAttributesOutput :: Decode UpdateFleetAttributesOutput where decode = genericDecode options
instance encodeUpdateFleetAttributesOutput :: Encode UpdateFleetAttributesOutput where encode = genericEncode options

-- | Constructs UpdateFleetAttributesOutput from required parameters
newUpdateFleetAttributesOutput :: UpdateFleetAttributesOutput
newUpdateFleetAttributesOutput  = UpdateFleetAttributesOutput { "FleetId": (NullOrUndefined Nothing) }

-- | Constructs UpdateFleetAttributesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateFleetAttributesOutput' :: ( { "FleetId" :: NullOrUndefined (FleetId) } -> {"FleetId" :: NullOrUndefined (FleetId) } ) -> UpdateFleetAttributesOutput
newUpdateFleetAttributesOutput'  customize = (UpdateFleetAttributesOutput <<< customize) { "FleetId": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype UpdateFleetCapacityInput = UpdateFleetCapacityInput 
  { "FleetId" :: (FleetId)
  , "DesiredInstances" :: NullOrUndefined (WholeNumber)
  , "MinSize" :: NullOrUndefined (WholeNumber)
  , "MaxSize" :: NullOrUndefined (WholeNumber)
  }
derive instance newtypeUpdateFleetCapacityInput :: Newtype UpdateFleetCapacityInput _
derive instance repGenericUpdateFleetCapacityInput :: Generic UpdateFleetCapacityInput _
instance showUpdateFleetCapacityInput :: Show UpdateFleetCapacityInput where show = genericShow
instance decodeUpdateFleetCapacityInput :: Decode UpdateFleetCapacityInput where decode = genericDecode options
instance encodeUpdateFleetCapacityInput :: Encode UpdateFleetCapacityInput where encode = genericEncode options

-- | Constructs UpdateFleetCapacityInput from required parameters
newUpdateFleetCapacityInput :: FleetId -> UpdateFleetCapacityInput
newUpdateFleetCapacityInput _FleetId = UpdateFleetCapacityInput { "FleetId": _FleetId, "DesiredInstances": (NullOrUndefined Nothing), "MaxSize": (NullOrUndefined Nothing), "MinSize": (NullOrUndefined Nothing) }

-- | Constructs UpdateFleetCapacityInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateFleetCapacityInput' :: FleetId -> ( { "FleetId" :: (FleetId) , "DesiredInstances" :: NullOrUndefined (WholeNumber) , "MinSize" :: NullOrUndefined (WholeNumber) , "MaxSize" :: NullOrUndefined (WholeNumber) } -> {"FleetId" :: (FleetId) , "DesiredInstances" :: NullOrUndefined (WholeNumber) , "MinSize" :: NullOrUndefined (WholeNumber) , "MaxSize" :: NullOrUndefined (WholeNumber) } ) -> UpdateFleetCapacityInput
newUpdateFleetCapacityInput' _FleetId customize = (UpdateFleetCapacityInput <<< customize) { "FleetId": _FleetId, "DesiredInstances": (NullOrUndefined Nothing), "MaxSize": (NullOrUndefined Nothing), "MinSize": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype UpdateFleetCapacityOutput = UpdateFleetCapacityOutput 
  { "FleetId" :: NullOrUndefined (FleetId)
  }
derive instance newtypeUpdateFleetCapacityOutput :: Newtype UpdateFleetCapacityOutput _
derive instance repGenericUpdateFleetCapacityOutput :: Generic UpdateFleetCapacityOutput _
instance showUpdateFleetCapacityOutput :: Show UpdateFleetCapacityOutput where show = genericShow
instance decodeUpdateFleetCapacityOutput :: Decode UpdateFleetCapacityOutput where decode = genericDecode options
instance encodeUpdateFleetCapacityOutput :: Encode UpdateFleetCapacityOutput where encode = genericEncode options

-- | Constructs UpdateFleetCapacityOutput from required parameters
newUpdateFleetCapacityOutput :: UpdateFleetCapacityOutput
newUpdateFleetCapacityOutput  = UpdateFleetCapacityOutput { "FleetId": (NullOrUndefined Nothing) }

-- | Constructs UpdateFleetCapacityOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateFleetCapacityOutput' :: ( { "FleetId" :: NullOrUndefined (FleetId) } -> {"FleetId" :: NullOrUndefined (FleetId) } ) -> UpdateFleetCapacityOutput
newUpdateFleetCapacityOutput'  customize = (UpdateFleetCapacityOutput <<< customize) { "FleetId": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype UpdateFleetPortSettingsInput = UpdateFleetPortSettingsInput 
  { "FleetId" :: (FleetId)
  , "InboundPermissionAuthorizations" :: NullOrUndefined (IpPermissionsList)
  , "InboundPermissionRevocations" :: NullOrUndefined (IpPermissionsList)
  }
derive instance newtypeUpdateFleetPortSettingsInput :: Newtype UpdateFleetPortSettingsInput _
derive instance repGenericUpdateFleetPortSettingsInput :: Generic UpdateFleetPortSettingsInput _
instance showUpdateFleetPortSettingsInput :: Show UpdateFleetPortSettingsInput where show = genericShow
instance decodeUpdateFleetPortSettingsInput :: Decode UpdateFleetPortSettingsInput where decode = genericDecode options
instance encodeUpdateFleetPortSettingsInput :: Encode UpdateFleetPortSettingsInput where encode = genericEncode options

-- | Constructs UpdateFleetPortSettingsInput from required parameters
newUpdateFleetPortSettingsInput :: FleetId -> UpdateFleetPortSettingsInput
newUpdateFleetPortSettingsInput _FleetId = UpdateFleetPortSettingsInput { "FleetId": _FleetId, "InboundPermissionAuthorizations": (NullOrUndefined Nothing), "InboundPermissionRevocations": (NullOrUndefined Nothing) }

-- | Constructs UpdateFleetPortSettingsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateFleetPortSettingsInput' :: FleetId -> ( { "FleetId" :: (FleetId) , "InboundPermissionAuthorizations" :: NullOrUndefined (IpPermissionsList) , "InboundPermissionRevocations" :: NullOrUndefined (IpPermissionsList) } -> {"FleetId" :: (FleetId) , "InboundPermissionAuthorizations" :: NullOrUndefined (IpPermissionsList) , "InboundPermissionRevocations" :: NullOrUndefined (IpPermissionsList) } ) -> UpdateFleetPortSettingsInput
newUpdateFleetPortSettingsInput' _FleetId customize = (UpdateFleetPortSettingsInput <<< customize) { "FleetId": _FleetId, "InboundPermissionAuthorizations": (NullOrUndefined Nothing), "InboundPermissionRevocations": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype UpdateFleetPortSettingsOutput = UpdateFleetPortSettingsOutput 
  { "FleetId" :: NullOrUndefined (FleetId)
  }
derive instance newtypeUpdateFleetPortSettingsOutput :: Newtype UpdateFleetPortSettingsOutput _
derive instance repGenericUpdateFleetPortSettingsOutput :: Generic UpdateFleetPortSettingsOutput _
instance showUpdateFleetPortSettingsOutput :: Show UpdateFleetPortSettingsOutput where show = genericShow
instance decodeUpdateFleetPortSettingsOutput :: Decode UpdateFleetPortSettingsOutput where decode = genericDecode options
instance encodeUpdateFleetPortSettingsOutput :: Encode UpdateFleetPortSettingsOutput where encode = genericEncode options

-- | Constructs UpdateFleetPortSettingsOutput from required parameters
newUpdateFleetPortSettingsOutput :: UpdateFleetPortSettingsOutput
newUpdateFleetPortSettingsOutput  = UpdateFleetPortSettingsOutput { "FleetId": (NullOrUndefined Nothing) }

-- | Constructs UpdateFleetPortSettingsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateFleetPortSettingsOutput' :: ( { "FleetId" :: NullOrUndefined (FleetId) } -> {"FleetId" :: NullOrUndefined (FleetId) } ) -> UpdateFleetPortSettingsOutput
newUpdateFleetPortSettingsOutput'  customize = (UpdateFleetPortSettingsOutput <<< customize) { "FleetId": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype UpdateGameSessionInput = UpdateGameSessionInput 
  { "GameSessionId" :: (ArnStringModel)
  , "MaximumPlayerSessionCount" :: NullOrUndefined (WholeNumber)
  , "Name" :: NullOrUndefined (NonZeroAndMaxString)
  , "PlayerSessionCreationPolicy" :: NullOrUndefined (PlayerSessionCreationPolicy)
  , "ProtectionPolicy" :: NullOrUndefined (ProtectionPolicy)
  }
derive instance newtypeUpdateGameSessionInput :: Newtype UpdateGameSessionInput _
derive instance repGenericUpdateGameSessionInput :: Generic UpdateGameSessionInput _
instance showUpdateGameSessionInput :: Show UpdateGameSessionInput where show = genericShow
instance decodeUpdateGameSessionInput :: Decode UpdateGameSessionInput where decode = genericDecode options
instance encodeUpdateGameSessionInput :: Encode UpdateGameSessionInput where encode = genericEncode options

-- | Constructs UpdateGameSessionInput from required parameters
newUpdateGameSessionInput :: ArnStringModel -> UpdateGameSessionInput
newUpdateGameSessionInput _GameSessionId = UpdateGameSessionInput { "GameSessionId": _GameSessionId, "MaximumPlayerSessionCount": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "PlayerSessionCreationPolicy": (NullOrUndefined Nothing), "ProtectionPolicy": (NullOrUndefined Nothing) }

-- | Constructs UpdateGameSessionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGameSessionInput' :: ArnStringModel -> ( { "GameSessionId" :: (ArnStringModel) , "MaximumPlayerSessionCount" :: NullOrUndefined (WholeNumber) , "Name" :: NullOrUndefined (NonZeroAndMaxString) , "PlayerSessionCreationPolicy" :: NullOrUndefined (PlayerSessionCreationPolicy) , "ProtectionPolicy" :: NullOrUndefined (ProtectionPolicy) } -> {"GameSessionId" :: (ArnStringModel) , "MaximumPlayerSessionCount" :: NullOrUndefined (WholeNumber) , "Name" :: NullOrUndefined (NonZeroAndMaxString) , "PlayerSessionCreationPolicy" :: NullOrUndefined (PlayerSessionCreationPolicy) , "ProtectionPolicy" :: NullOrUndefined (ProtectionPolicy) } ) -> UpdateGameSessionInput
newUpdateGameSessionInput' _GameSessionId customize = (UpdateGameSessionInput <<< customize) { "GameSessionId": _GameSessionId, "MaximumPlayerSessionCount": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "PlayerSessionCreationPolicy": (NullOrUndefined Nothing), "ProtectionPolicy": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype UpdateGameSessionOutput = UpdateGameSessionOutput 
  { "GameSession" :: NullOrUndefined (GameSession)
  }
derive instance newtypeUpdateGameSessionOutput :: Newtype UpdateGameSessionOutput _
derive instance repGenericUpdateGameSessionOutput :: Generic UpdateGameSessionOutput _
instance showUpdateGameSessionOutput :: Show UpdateGameSessionOutput where show = genericShow
instance decodeUpdateGameSessionOutput :: Decode UpdateGameSessionOutput where decode = genericDecode options
instance encodeUpdateGameSessionOutput :: Encode UpdateGameSessionOutput where encode = genericEncode options

-- | Constructs UpdateGameSessionOutput from required parameters
newUpdateGameSessionOutput :: UpdateGameSessionOutput
newUpdateGameSessionOutput  = UpdateGameSessionOutput { "GameSession": (NullOrUndefined Nothing) }

-- | Constructs UpdateGameSessionOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGameSessionOutput' :: ( { "GameSession" :: NullOrUndefined (GameSession) } -> {"GameSession" :: NullOrUndefined (GameSession) } ) -> UpdateGameSessionOutput
newUpdateGameSessionOutput'  customize = (UpdateGameSessionOutput <<< customize) { "GameSession": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype UpdateGameSessionQueueInput = UpdateGameSessionQueueInput 
  { "Name" :: (GameSessionQueueName)
  , "TimeoutInSeconds" :: NullOrUndefined (WholeNumber)
  , "PlayerLatencyPolicies" :: NullOrUndefined (PlayerLatencyPolicyList)
  , "Destinations" :: NullOrUndefined (GameSessionQueueDestinationList)
  }
derive instance newtypeUpdateGameSessionQueueInput :: Newtype UpdateGameSessionQueueInput _
derive instance repGenericUpdateGameSessionQueueInput :: Generic UpdateGameSessionQueueInput _
instance showUpdateGameSessionQueueInput :: Show UpdateGameSessionQueueInput where show = genericShow
instance decodeUpdateGameSessionQueueInput :: Decode UpdateGameSessionQueueInput where decode = genericDecode options
instance encodeUpdateGameSessionQueueInput :: Encode UpdateGameSessionQueueInput where encode = genericEncode options

-- | Constructs UpdateGameSessionQueueInput from required parameters
newUpdateGameSessionQueueInput :: GameSessionQueueName -> UpdateGameSessionQueueInput
newUpdateGameSessionQueueInput _Name = UpdateGameSessionQueueInput { "Name": _Name, "Destinations": (NullOrUndefined Nothing), "PlayerLatencyPolicies": (NullOrUndefined Nothing), "TimeoutInSeconds": (NullOrUndefined Nothing) }

-- | Constructs UpdateGameSessionQueueInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGameSessionQueueInput' :: GameSessionQueueName -> ( { "Name" :: (GameSessionQueueName) , "TimeoutInSeconds" :: NullOrUndefined (WholeNumber) , "PlayerLatencyPolicies" :: NullOrUndefined (PlayerLatencyPolicyList) , "Destinations" :: NullOrUndefined (GameSessionQueueDestinationList) } -> {"Name" :: (GameSessionQueueName) , "TimeoutInSeconds" :: NullOrUndefined (WholeNumber) , "PlayerLatencyPolicies" :: NullOrUndefined (PlayerLatencyPolicyList) , "Destinations" :: NullOrUndefined (GameSessionQueueDestinationList) } ) -> UpdateGameSessionQueueInput
newUpdateGameSessionQueueInput' _Name customize = (UpdateGameSessionQueueInput <<< customize) { "Name": _Name, "Destinations": (NullOrUndefined Nothing), "PlayerLatencyPolicies": (NullOrUndefined Nothing), "TimeoutInSeconds": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype UpdateGameSessionQueueOutput = UpdateGameSessionQueueOutput 
  { "GameSessionQueue" :: NullOrUndefined (GameSessionQueue)
  }
derive instance newtypeUpdateGameSessionQueueOutput :: Newtype UpdateGameSessionQueueOutput _
derive instance repGenericUpdateGameSessionQueueOutput :: Generic UpdateGameSessionQueueOutput _
instance showUpdateGameSessionQueueOutput :: Show UpdateGameSessionQueueOutput where show = genericShow
instance decodeUpdateGameSessionQueueOutput :: Decode UpdateGameSessionQueueOutput where decode = genericDecode options
instance encodeUpdateGameSessionQueueOutput :: Encode UpdateGameSessionQueueOutput where encode = genericEncode options

-- | Constructs UpdateGameSessionQueueOutput from required parameters
newUpdateGameSessionQueueOutput :: UpdateGameSessionQueueOutput
newUpdateGameSessionQueueOutput  = UpdateGameSessionQueueOutput { "GameSessionQueue": (NullOrUndefined Nothing) }

-- | Constructs UpdateGameSessionQueueOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGameSessionQueueOutput' :: ( { "GameSessionQueue" :: NullOrUndefined (GameSessionQueue) } -> {"GameSessionQueue" :: NullOrUndefined (GameSessionQueue) } ) -> UpdateGameSessionQueueOutput
newUpdateGameSessionQueueOutput'  customize = (UpdateGameSessionQueueOutput <<< customize) { "GameSessionQueue": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype UpdateMatchmakingConfigurationInput = UpdateMatchmakingConfigurationInput 
  { "Name" :: (MatchmakingIdStringModel)
  , "Description" :: NullOrUndefined (NonZeroAndMaxString)
  , "GameSessionQueueArns" :: NullOrUndefined (QueueArnsList)
  , "RequestTimeoutSeconds" :: NullOrUndefined (MatchmakingRequestTimeoutInteger)
  , "AcceptanceTimeoutSeconds" :: NullOrUndefined (MatchmakingAcceptanceTimeoutInteger)
  , "AcceptanceRequired" :: NullOrUndefined (BooleanModel)
  , "RuleSetName" :: NullOrUndefined (MatchmakingIdStringModel)
  , "NotificationTarget" :: NullOrUndefined (SnsArnStringModel)
  , "AdditionalPlayerCount" :: NullOrUndefined (WholeNumber)
  , "CustomEventData" :: NullOrUndefined (CustomEventData)
  , "GameProperties" :: NullOrUndefined (GamePropertyList)
  , "GameSessionData" :: NullOrUndefined (GameSessionData)
  }
derive instance newtypeUpdateMatchmakingConfigurationInput :: Newtype UpdateMatchmakingConfigurationInput _
derive instance repGenericUpdateMatchmakingConfigurationInput :: Generic UpdateMatchmakingConfigurationInput _
instance showUpdateMatchmakingConfigurationInput :: Show UpdateMatchmakingConfigurationInput where show = genericShow
instance decodeUpdateMatchmakingConfigurationInput :: Decode UpdateMatchmakingConfigurationInput where decode = genericDecode options
instance encodeUpdateMatchmakingConfigurationInput :: Encode UpdateMatchmakingConfigurationInput where encode = genericEncode options

-- | Constructs UpdateMatchmakingConfigurationInput from required parameters
newUpdateMatchmakingConfigurationInput :: MatchmakingIdStringModel -> UpdateMatchmakingConfigurationInput
newUpdateMatchmakingConfigurationInput _Name = UpdateMatchmakingConfigurationInput { "Name": _Name, "AcceptanceRequired": (NullOrUndefined Nothing), "AcceptanceTimeoutSeconds": (NullOrUndefined Nothing), "AdditionalPlayerCount": (NullOrUndefined Nothing), "CustomEventData": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "GameProperties": (NullOrUndefined Nothing), "GameSessionData": (NullOrUndefined Nothing), "GameSessionQueueArns": (NullOrUndefined Nothing), "NotificationTarget": (NullOrUndefined Nothing), "RequestTimeoutSeconds": (NullOrUndefined Nothing), "RuleSetName": (NullOrUndefined Nothing) }

-- | Constructs UpdateMatchmakingConfigurationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateMatchmakingConfigurationInput' :: MatchmakingIdStringModel -> ( { "Name" :: (MatchmakingIdStringModel) , "Description" :: NullOrUndefined (NonZeroAndMaxString) , "GameSessionQueueArns" :: NullOrUndefined (QueueArnsList) , "RequestTimeoutSeconds" :: NullOrUndefined (MatchmakingRequestTimeoutInteger) , "AcceptanceTimeoutSeconds" :: NullOrUndefined (MatchmakingAcceptanceTimeoutInteger) , "AcceptanceRequired" :: NullOrUndefined (BooleanModel) , "RuleSetName" :: NullOrUndefined (MatchmakingIdStringModel) , "NotificationTarget" :: NullOrUndefined (SnsArnStringModel) , "AdditionalPlayerCount" :: NullOrUndefined (WholeNumber) , "CustomEventData" :: NullOrUndefined (CustomEventData) , "GameProperties" :: NullOrUndefined (GamePropertyList) , "GameSessionData" :: NullOrUndefined (GameSessionData) } -> {"Name" :: (MatchmakingIdStringModel) , "Description" :: NullOrUndefined (NonZeroAndMaxString) , "GameSessionQueueArns" :: NullOrUndefined (QueueArnsList) , "RequestTimeoutSeconds" :: NullOrUndefined (MatchmakingRequestTimeoutInteger) , "AcceptanceTimeoutSeconds" :: NullOrUndefined (MatchmakingAcceptanceTimeoutInteger) , "AcceptanceRequired" :: NullOrUndefined (BooleanModel) , "RuleSetName" :: NullOrUndefined (MatchmakingIdStringModel) , "NotificationTarget" :: NullOrUndefined (SnsArnStringModel) , "AdditionalPlayerCount" :: NullOrUndefined (WholeNumber) , "CustomEventData" :: NullOrUndefined (CustomEventData) , "GameProperties" :: NullOrUndefined (GamePropertyList) , "GameSessionData" :: NullOrUndefined (GameSessionData) } ) -> UpdateMatchmakingConfigurationInput
newUpdateMatchmakingConfigurationInput' _Name customize = (UpdateMatchmakingConfigurationInput <<< customize) { "Name": _Name, "AcceptanceRequired": (NullOrUndefined Nothing), "AcceptanceTimeoutSeconds": (NullOrUndefined Nothing), "AdditionalPlayerCount": (NullOrUndefined Nothing), "CustomEventData": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "GameProperties": (NullOrUndefined Nothing), "GameSessionData": (NullOrUndefined Nothing), "GameSessionQueueArns": (NullOrUndefined Nothing), "NotificationTarget": (NullOrUndefined Nothing), "RequestTimeoutSeconds": (NullOrUndefined Nothing), "RuleSetName": (NullOrUndefined Nothing) }



-- | <p>Represents the returned data in response to a request action.</p>
newtype UpdateMatchmakingConfigurationOutput = UpdateMatchmakingConfigurationOutput 
  { "Configuration" :: NullOrUndefined (MatchmakingConfiguration)
  }
derive instance newtypeUpdateMatchmakingConfigurationOutput :: Newtype UpdateMatchmakingConfigurationOutput _
derive instance repGenericUpdateMatchmakingConfigurationOutput :: Generic UpdateMatchmakingConfigurationOutput _
instance showUpdateMatchmakingConfigurationOutput :: Show UpdateMatchmakingConfigurationOutput where show = genericShow
instance decodeUpdateMatchmakingConfigurationOutput :: Decode UpdateMatchmakingConfigurationOutput where decode = genericDecode options
instance encodeUpdateMatchmakingConfigurationOutput :: Encode UpdateMatchmakingConfigurationOutput where encode = genericEncode options

-- | Constructs UpdateMatchmakingConfigurationOutput from required parameters
newUpdateMatchmakingConfigurationOutput :: UpdateMatchmakingConfigurationOutput
newUpdateMatchmakingConfigurationOutput  = UpdateMatchmakingConfigurationOutput { "Configuration": (NullOrUndefined Nothing) }

-- | Constructs UpdateMatchmakingConfigurationOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateMatchmakingConfigurationOutput' :: ( { "Configuration" :: NullOrUndefined (MatchmakingConfiguration) } -> {"Configuration" :: NullOrUndefined (MatchmakingConfiguration) } ) -> UpdateMatchmakingConfigurationOutput
newUpdateMatchmakingConfigurationOutput'  customize = (UpdateMatchmakingConfigurationOutput <<< customize) { "Configuration": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype UpdateRuntimeConfigurationInput = UpdateRuntimeConfigurationInput 
  { "FleetId" :: (FleetId)
  , "RuntimeConfiguration" :: (RuntimeConfiguration)
  }
derive instance newtypeUpdateRuntimeConfigurationInput :: Newtype UpdateRuntimeConfigurationInput _
derive instance repGenericUpdateRuntimeConfigurationInput :: Generic UpdateRuntimeConfigurationInput _
instance showUpdateRuntimeConfigurationInput :: Show UpdateRuntimeConfigurationInput where show = genericShow
instance decodeUpdateRuntimeConfigurationInput :: Decode UpdateRuntimeConfigurationInput where decode = genericDecode options
instance encodeUpdateRuntimeConfigurationInput :: Encode UpdateRuntimeConfigurationInput where encode = genericEncode options

-- | Constructs UpdateRuntimeConfigurationInput from required parameters
newUpdateRuntimeConfigurationInput :: FleetId -> RuntimeConfiguration -> UpdateRuntimeConfigurationInput
newUpdateRuntimeConfigurationInput _FleetId _RuntimeConfiguration = UpdateRuntimeConfigurationInput { "FleetId": _FleetId, "RuntimeConfiguration": _RuntimeConfiguration }

-- | Constructs UpdateRuntimeConfigurationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRuntimeConfigurationInput' :: FleetId -> RuntimeConfiguration -> ( { "FleetId" :: (FleetId) , "RuntimeConfiguration" :: (RuntimeConfiguration) } -> {"FleetId" :: (FleetId) , "RuntimeConfiguration" :: (RuntimeConfiguration) } ) -> UpdateRuntimeConfigurationInput
newUpdateRuntimeConfigurationInput' _FleetId _RuntimeConfiguration customize = (UpdateRuntimeConfigurationInput <<< customize) { "FleetId": _FleetId, "RuntimeConfiguration": _RuntimeConfiguration }



-- | <p>Represents the returned data in response to a request action.</p>
newtype UpdateRuntimeConfigurationOutput = UpdateRuntimeConfigurationOutput 
  { "RuntimeConfiguration" :: NullOrUndefined (RuntimeConfiguration)
  }
derive instance newtypeUpdateRuntimeConfigurationOutput :: Newtype UpdateRuntimeConfigurationOutput _
derive instance repGenericUpdateRuntimeConfigurationOutput :: Generic UpdateRuntimeConfigurationOutput _
instance showUpdateRuntimeConfigurationOutput :: Show UpdateRuntimeConfigurationOutput where show = genericShow
instance decodeUpdateRuntimeConfigurationOutput :: Decode UpdateRuntimeConfigurationOutput where decode = genericDecode options
instance encodeUpdateRuntimeConfigurationOutput :: Encode UpdateRuntimeConfigurationOutput where encode = genericEncode options

-- | Constructs UpdateRuntimeConfigurationOutput from required parameters
newUpdateRuntimeConfigurationOutput :: UpdateRuntimeConfigurationOutput
newUpdateRuntimeConfigurationOutput  = UpdateRuntimeConfigurationOutput { "RuntimeConfiguration": (NullOrUndefined Nothing) }

-- | Constructs UpdateRuntimeConfigurationOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRuntimeConfigurationOutput' :: ( { "RuntimeConfiguration" :: NullOrUndefined (RuntimeConfiguration) } -> {"RuntimeConfiguration" :: NullOrUndefined (RuntimeConfiguration) } ) -> UpdateRuntimeConfigurationOutput
newUpdateRuntimeConfigurationOutput'  customize = (UpdateRuntimeConfigurationOutput <<< customize) { "RuntimeConfiguration": (NullOrUndefined Nothing) }



-- | <p>Represents the input for a request action.</p>
newtype ValidateMatchmakingRuleSetInput = ValidateMatchmakingRuleSetInput 
  { "RuleSetBody" :: (RuleSetBody)
  }
derive instance newtypeValidateMatchmakingRuleSetInput :: Newtype ValidateMatchmakingRuleSetInput _
derive instance repGenericValidateMatchmakingRuleSetInput :: Generic ValidateMatchmakingRuleSetInput _
instance showValidateMatchmakingRuleSetInput :: Show ValidateMatchmakingRuleSetInput where show = genericShow
instance decodeValidateMatchmakingRuleSetInput :: Decode ValidateMatchmakingRuleSetInput where decode = genericDecode options
instance encodeValidateMatchmakingRuleSetInput :: Encode ValidateMatchmakingRuleSetInput where encode = genericEncode options

-- | Constructs ValidateMatchmakingRuleSetInput from required parameters
newValidateMatchmakingRuleSetInput :: RuleSetBody -> ValidateMatchmakingRuleSetInput
newValidateMatchmakingRuleSetInput _RuleSetBody = ValidateMatchmakingRuleSetInput { "RuleSetBody": _RuleSetBody }

-- | Constructs ValidateMatchmakingRuleSetInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newValidateMatchmakingRuleSetInput' :: RuleSetBody -> ( { "RuleSetBody" :: (RuleSetBody) } -> {"RuleSetBody" :: (RuleSetBody) } ) -> ValidateMatchmakingRuleSetInput
newValidateMatchmakingRuleSetInput' _RuleSetBody customize = (ValidateMatchmakingRuleSetInput <<< customize) { "RuleSetBody": _RuleSetBody }



-- | <p>Represents the returned data in response to a request action.</p>
newtype ValidateMatchmakingRuleSetOutput = ValidateMatchmakingRuleSetOutput 
  { "Valid" :: NullOrUndefined (BooleanModel)
  }
derive instance newtypeValidateMatchmakingRuleSetOutput :: Newtype ValidateMatchmakingRuleSetOutput _
derive instance repGenericValidateMatchmakingRuleSetOutput :: Generic ValidateMatchmakingRuleSetOutput _
instance showValidateMatchmakingRuleSetOutput :: Show ValidateMatchmakingRuleSetOutput where show = genericShow
instance decodeValidateMatchmakingRuleSetOutput :: Decode ValidateMatchmakingRuleSetOutput where decode = genericDecode options
instance encodeValidateMatchmakingRuleSetOutput :: Encode ValidateMatchmakingRuleSetOutput where encode = genericEncode options

-- | Constructs ValidateMatchmakingRuleSetOutput from required parameters
newValidateMatchmakingRuleSetOutput :: ValidateMatchmakingRuleSetOutput
newValidateMatchmakingRuleSetOutput  = ValidateMatchmakingRuleSetOutput { "Valid": (NullOrUndefined Nothing) }

-- | Constructs ValidateMatchmakingRuleSetOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newValidateMatchmakingRuleSetOutput' :: ( { "Valid" :: NullOrUndefined (BooleanModel) } -> {"Valid" :: NullOrUndefined (BooleanModel) } ) -> ValidateMatchmakingRuleSetOutput
newValidateMatchmakingRuleSetOutput'  customize = (ValidateMatchmakingRuleSetOutput <<< customize) { "Valid": (NullOrUndefined Nothing) }



-- | <p>Represents an authorization for a VPC peering connection between the VPC for an Amazon GameLift fleet and another VPC on an account you have access to. This authorization must exist and be valid for the peering connection to be established. Authorizations are valid for 24 hours after they are issued.</p> <p>VPC peering connection operations include:</p> <ul> <li> <p> <a>CreateVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>DescribeVpcPeeringAuthorizations</a> </p> </li> <li> <p> <a>DeleteVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>CreateVpcPeeringConnection</a> </p> </li> <li> <p> <a>DescribeVpcPeeringConnections</a> </p> </li> <li> <p> <a>DeleteVpcPeeringConnection</a> </p> </li> </ul>
newtype VpcPeeringAuthorization = VpcPeeringAuthorization 
  { "GameLiftAwsAccountId" :: NullOrUndefined (NonZeroAndMaxString)
  , "PeerVpcAwsAccountId" :: NullOrUndefined (NonZeroAndMaxString)
  , "PeerVpcId" :: NullOrUndefined (NonZeroAndMaxString)
  , "CreationTime" :: NullOrUndefined (Types.Timestamp)
  , "ExpirationTime" :: NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeVpcPeeringAuthorization :: Newtype VpcPeeringAuthorization _
derive instance repGenericVpcPeeringAuthorization :: Generic VpcPeeringAuthorization _
instance showVpcPeeringAuthorization :: Show VpcPeeringAuthorization where show = genericShow
instance decodeVpcPeeringAuthorization :: Decode VpcPeeringAuthorization where decode = genericDecode options
instance encodeVpcPeeringAuthorization :: Encode VpcPeeringAuthorization where encode = genericEncode options

-- | Constructs VpcPeeringAuthorization from required parameters
newVpcPeeringAuthorization :: VpcPeeringAuthorization
newVpcPeeringAuthorization  = VpcPeeringAuthorization { "CreationTime": (NullOrUndefined Nothing), "ExpirationTime": (NullOrUndefined Nothing), "GameLiftAwsAccountId": (NullOrUndefined Nothing), "PeerVpcAwsAccountId": (NullOrUndefined Nothing), "PeerVpcId": (NullOrUndefined Nothing) }

-- | Constructs VpcPeeringAuthorization's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVpcPeeringAuthorization' :: ( { "GameLiftAwsAccountId" :: NullOrUndefined (NonZeroAndMaxString) , "PeerVpcAwsAccountId" :: NullOrUndefined (NonZeroAndMaxString) , "PeerVpcId" :: NullOrUndefined (NonZeroAndMaxString) , "CreationTime" :: NullOrUndefined (Types.Timestamp) , "ExpirationTime" :: NullOrUndefined (Types.Timestamp) } -> {"GameLiftAwsAccountId" :: NullOrUndefined (NonZeroAndMaxString) , "PeerVpcAwsAccountId" :: NullOrUndefined (NonZeroAndMaxString) , "PeerVpcId" :: NullOrUndefined (NonZeroAndMaxString) , "CreationTime" :: NullOrUndefined (Types.Timestamp) , "ExpirationTime" :: NullOrUndefined (Types.Timestamp) } ) -> VpcPeeringAuthorization
newVpcPeeringAuthorization'  customize = (VpcPeeringAuthorization <<< customize) { "CreationTime": (NullOrUndefined Nothing), "ExpirationTime": (NullOrUndefined Nothing), "GameLiftAwsAccountId": (NullOrUndefined Nothing), "PeerVpcAwsAccountId": (NullOrUndefined Nothing), "PeerVpcId": (NullOrUndefined Nothing) }



newtype VpcPeeringAuthorizationList = VpcPeeringAuthorizationList (Array VpcPeeringAuthorization)
derive instance newtypeVpcPeeringAuthorizationList :: Newtype VpcPeeringAuthorizationList _
derive instance repGenericVpcPeeringAuthorizationList :: Generic VpcPeeringAuthorizationList _
instance showVpcPeeringAuthorizationList :: Show VpcPeeringAuthorizationList where show = genericShow
instance decodeVpcPeeringAuthorizationList :: Decode VpcPeeringAuthorizationList where decode = genericDecode options
instance encodeVpcPeeringAuthorizationList :: Encode VpcPeeringAuthorizationList where encode = genericEncode options



-- | <p>Represents a peering connection between a VPC on one of your AWS accounts and the VPC for your Amazon GameLift fleets. This record may be for an active peering connection or a pending connection that has not yet been established.</p> <p>VPC peering connection operations include:</p> <ul> <li> <p> <a>CreateVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>DescribeVpcPeeringAuthorizations</a> </p> </li> <li> <p> <a>DeleteVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>CreateVpcPeeringConnection</a> </p> </li> <li> <p> <a>DescribeVpcPeeringConnections</a> </p> </li> <li> <p> <a>DeleteVpcPeeringConnection</a> </p> </li> </ul>
newtype VpcPeeringConnection = VpcPeeringConnection 
  { "FleetId" :: NullOrUndefined (FleetId)
  , "IpV4CidrBlock" :: NullOrUndefined (NonZeroAndMaxString)
  , "VpcPeeringConnectionId" :: NullOrUndefined (NonZeroAndMaxString)
  , "Status" :: NullOrUndefined (VpcPeeringConnectionStatus)
  , "PeerVpcId" :: NullOrUndefined (NonZeroAndMaxString)
  , "GameLiftVpcId" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeVpcPeeringConnection :: Newtype VpcPeeringConnection _
derive instance repGenericVpcPeeringConnection :: Generic VpcPeeringConnection _
instance showVpcPeeringConnection :: Show VpcPeeringConnection where show = genericShow
instance decodeVpcPeeringConnection :: Decode VpcPeeringConnection where decode = genericDecode options
instance encodeVpcPeeringConnection :: Encode VpcPeeringConnection where encode = genericEncode options

-- | Constructs VpcPeeringConnection from required parameters
newVpcPeeringConnection :: VpcPeeringConnection
newVpcPeeringConnection  = VpcPeeringConnection { "FleetId": (NullOrUndefined Nothing), "GameLiftVpcId": (NullOrUndefined Nothing), "IpV4CidrBlock": (NullOrUndefined Nothing), "PeerVpcId": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "VpcPeeringConnectionId": (NullOrUndefined Nothing) }

-- | Constructs VpcPeeringConnection's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVpcPeeringConnection' :: ( { "FleetId" :: NullOrUndefined (FleetId) , "IpV4CidrBlock" :: NullOrUndefined (NonZeroAndMaxString) , "VpcPeeringConnectionId" :: NullOrUndefined (NonZeroAndMaxString) , "Status" :: NullOrUndefined (VpcPeeringConnectionStatus) , "PeerVpcId" :: NullOrUndefined (NonZeroAndMaxString) , "GameLiftVpcId" :: NullOrUndefined (NonZeroAndMaxString) } -> {"FleetId" :: NullOrUndefined (FleetId) , "IpV4CidrBlock" :: NullOrUndefined (NonZeroAndMaxString) , "VpcPeeringConnectionId" :: NullOrUndefined (NonZeroAndMaxString) , "Status" :: NullOrUndefined (VpcPeeringConnectionStatus) , "PeerVpcId" :: NullOrUndefined (NonZeroAndMaxString) , "GameLiftVpcId" :: NullOrUndefined (NonZeroAndMaxString) } ) -> VpcPeeringConnection
newVpcPeeringConnection'  customize = (VpcPeeringConnection <<< customize) { "FleetId": (NullOrUndefined Nothing), "GameLiftVpcId": (NullOrUndefined Nothing), "IpV4CidrBlock": (NullOrUndefined Nothing), "PeerVpcId": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "VpcPeeringConnectionId": (NullOrUndefined Nothing) }



newtype VpcPeeringConnectionList = VpcPeeringConnectionList (Array VpcPeeringConnection)
derive instance newtypeVpcPeeringConnectionList :: Newtype VpcPeeringConnectionList _
derive instance repGenericVpcPeeringConnectionList :: Generic VpcPeeringConnectionList _
instance showVpcPeeringConnectionList :: Show VpcPeeringConnectionList where show = genericShow
instance decodeVpcPeeringConnectionList :: Decode VpcPeeringConnectionList where decode = genericDecode options
instance encodeVpcPeeringConnectionList :: Encode VpcPeeringConnectionList where encode = genericEncode options



-- | <p>Represents status information for a VPC peering connection. Status is associated with a <a>VpcPeeringConnection</a> object. Status codes and messages are provided from EC2 (see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VpcPeeringConnectionStateReason.html">VpcPeeringConnectionStateReason</a>). Connection status information is also communicated as a fleet <a>Event</a>.</p>
newtype VpcPeeringConnectionStatus = VpcPeeringConnectionStatus 
  { "Code" :: NullOrUndefined (NonZeroAndMaxString)
  , "Message" :: NullOrUndefined (NonZeroAndMaxString)
  }
derive instance newtypeVpcPeeringConnectionStatus :: Newtype VpcPeeringConnectionStatus _
derive instance repGenericVpcPeeringConnectionStatus :: Generic VpcPeeringConnectionStatus _
instance showVpcPeeringConnectionStatus :: Show VpcPeeringConnectionStatus where show = genericShow
instance decodeVpcPeeringConnectionStatus :: Decode VpcPeeringConnectionStatus where decode = genericDecode options
instance encodeVpcPeeringConnectionStatus :: Encode VpcPeeringConnectionStatus where encode = genericEncode options

-- | Constructs VpcPeeringConnectionStatus from required parameters
newVpcPeeringConnectionStatus :: VpcPeeringConnectionStatus
newVpcPeeringConnectionStatus  = VpcPeeringConnectionStatus { "Code": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }

-- | Constructs VpcPeeringConnectionStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVpcPeeringConnectionStatus' :: ( { "Code" :: NullOrUndefined (NonZeroAndMaxString) , "Message" :: NullOrUndefined (NonZeroAndMaxString) } -> {"Code" :: NullOrUndefined (NonZeroAndMaxString) , "Message" :: NullOrUndefined (NonZeroAndMaxString) } ) -> VpcPeeringConnectionStatus
newVpcPeeringConnectionStatus'  customize = (VpcPeeringConnectionStatus <<< customize) { "Code": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }



newtype WholeNumber = WholeNumber Int
derive instance newtypeWholeNumber :: Newtype WholeNumber _
derive instance repGenericWholeNumber :: Generic WholeNumber _
instance showWholeNumber :: Show WholeNumber where show = genericShow
instance decodeWholeNumber :: Decode WholeNumber where decode = genericDecode options
instance encodeWholeNumber :: Encode WholeNumber where encode = genericEncode options

