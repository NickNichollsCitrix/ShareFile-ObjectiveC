//
//  SFSharesEntity.m
//
//  Autogenerated by a tool.
//  Copyright (c) 2016 Citrix ShareFile. All rights reserved.
//

#import "SFHttpMethodConstants.h"
#import "SFEntityConstants.h"
#import "SFSharesEntity.h"
#import "SFODataEntityBase.h"
#import "SFShare.h"
#import "SFShareAlias.h"
#import "SFItem.h"
#import "SFItemProtocolLink.h"
#import "SFShareSendParams.h"
#import "SFShareRequestParams.h"
#import "SFShareResendParams.h"
#import "SFUploadSpecification.h"
#import "SFUploadRequestParams.h"
#import "SFRedirection.h"


@implementation SFSharesEntity
- (SFApiQuery *)get {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    sfApiQuery.responseClass = [SFShare class];
    sfApiQuery.isODataFeed = YES;
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery setHttpMethod:kSFHttpMethodGET];
    return sfApiQuery;
}

- (SFApiQuery *)getWithUrl:(NSURL *)url {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    sfApiQuery.responseClass = [SFShare class];
    sfApiQuery.isODataFeed = NO;
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery addIds:url];
    [sfApiQuery setHttpMethod:kSFHttpMethodGET];
    return sfApiQuery;
}

- (SFApiQuery *)getRecipientsWithUrl:(NSURL *)url {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    sfApiQuery.responseClass = [SFShareAlias class];
    sfApiQuery.isODataFeed = YES;
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery setAction:@"Recipients"];
    [sfApiQuery addIds:url];
    [sfApiQuery setHttpMethod:kSFHttpMethodGET];
    return sfApiQuery;
}

- (SFApiQuery *)getRecipientsWithParentUrl:(NSURL *)parentUrl andId:(NSString *)Id {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    sfApiQuery.responseClass = [SFShareAlias class];
    sfApiQuery.isODataFeed = NO;
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery setAction:@"Recipients"];
    [sfApiQuery addIds:parentUrl];
    [sfApiQuery addActionIds:Id];
    [sfApiQuery setHttpMethod:kSFHttpMethodGET];
    return sfApiQuery;
}

- (SFApiQuery *)createRecipientsWithParentUrl:(NSURL *)parentUrl email:(NSString *)Email firstName:(NSString *)FirstName lastName:(NSString *)LastName andCompany:(NSString *)Company {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    sfApiQuery.responseClass = [SFShareAlias class];
    sfApiQuery.isODataFeed = NO;
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery setAction:@"Recipients"];
    [sfApiQuery addIds:parentUrl];
    [sfApiQuery addQueryString:@"Email" withValue:Email];
    [sfApiQuery addQueryString:@"FirstName" withValue:FirstName];
    [sfApiQuery addQueryString:@"LastName" withValue:LastName];
    [sfApiQuery addQueryString:@"Company" withValue:Company];
    [sfApiQuery setHttpMethod:kSFHttpMethodPOST];
    return sfApiQuery;
}

- (SFApiQuery *)getItemsWithUrl:(NSURL *)url {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    sfApiQuery.responseClass = [SFItem class];
    sfApiQuery.isODataFeed = YES;
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery setAction:@"Items"];
    [sfApiQuery addIds:url];
    [sfApiQuery setHttpMethod:kSFHttpMethodGET];
    return sfApiQuery;
}

- (SFApiQuery *)getItemsWithShareUrl:(NSURL *)shareUrl andItemid:(NSString *)itemid {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    sfApiQuery.responseClass = [SFItem class];
    sfApiQuery.isODataFeed = NO;
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery setAction:@"Items"];
    [sfApiQuery addIds:shareUrl];
    [sfApiQuery addActionIds:itemid];
    [sfApiQuery setHttpMethod:kSFHttpMethodGET];
    return sfApiQuery;
}

- (SFApiQuery *)thumbnailWithShareUrl:(NSURL *)shareUrl itemid:(NSString *)itemid size:(NSNumber *)size andRedirect:(NSNumber *)redirect {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery setAction:@"Items"];
    [sfApiQuery addIds:shareUrl];
    [sfApiQuery addActionIds:itemid];
    [sfApiQuery addSubAction:@"Thumbnail"];
    [sfApiQuery addQueryString:@"size" withValue:size];
    [sfApiQuery addQueryString:@"redirect" withValue:redirect];
    [sfApiQuery setHttpMethod:kSFHttpMethodGET];
    return sfApiQuery;
}

- (SFApiQuery *)protocolLinksWithShareUrl:(NSURL *)shareUrl itemid:(NSString *)itemid andPlatform:(NSString *)platform {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    sfApiQuery.responseClass = [SFItemProtocolLink class];
    sfApiQuery.isODataFeed = YES;
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery setAction:@"Items"];
    [sfApiQuery addIds:shareUrl];
    [sfApiQuery addActionIds:itemid];
    [sfApiQuery addSubAction:@"ProtocolLinks" withValue:platform];
    [sfApiQuery setHttpMethod:kSFHttpMethodGET];
    return sfApiQuery;
}

- (SFApiQuery *)downloadWithShareUrl:(NSURL *)shareUrl itemId:(NSString *)itemId name:(NSString *)Name email:(NSString *)Email company:(NSString *)Company andRedirect:(NSNumber *)redirect {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery setAction:@"Download"];
    [sfApiQuery addIds:shareUrl];
    [sfApiQuery addQueryString:@"Id" withValue:itemId];
    [sfApiQuery addQueryString:@"Name" withValue:Name];
    [sfApiQuery addQueryString:@"Email" withValue:Email];
    [sfApiQuery addQueryString:@"Company" withValue:Company];
    [sfApiQuery addQueryString:@"redirect" withValue:redirect];
    [sfApiQuery setHttpMethod:kSFHttpMethodGET];
    return sfApiQuery;
}

- (SFApiQuery *)downloadWithAliasWithShareUrl:(NSURL *)shareUrl aliasid:(NSString *)aliasid itemId:(NSString *)itemId andRedirect:(NSNumber *)redirect {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery setAction:@"Recipients"];
    [sfApiQuery addIds:shareUrl];
    [sfApiQuery addActionIds:aliasid];
    [sfApiQuery addSubAction:@"DownloadWithAlias"];
    [sfApiQuery addQueryString:@"Id" withValue:itemId];
    [sfApiQuery addQueryString:@"redirect" withValue:redirect];
    [sfApiQuery setHttpMethod:kSFHttpMethodGET];
    return sfApiQuery;
}

- (SFApiQuery *)bulkDownloadWithShareUrl:(NSURL *)shareUrl aliasid:(NSString *)aliasid ids:(NSArray *)ids andRedirect:(NSNumber *)redirect {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery setAction:@"Recipients"];
    [sfApiQuery addIds:shareUrl];
    [sfApiQuery addActionIds:aliasid];
    [sfApiQuery addSubAction:@"BulkDownload"];
    [sfApiQuery addQueryString:@"redirect" withValue:redirect];
    [sfApiQuery setBody:ids];
    [sfApiQuery setHttpMethod:kSFHttpMethodPOST];
    return sfApiQuery;
}

- (SFApiQuery *)createWithShare:(SFShare *)share andNotify:(NSNumber *)notify {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    sfApiQuery.responseClass = [SFShare class];
    sfApiQuery.isODataFeed = NO;
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery addQueryString:@"notify" withValue:notify];
    [sfApiQuery setBody:share];
    [sfApiQuery setHttpMethod:kSFHttpMethodPOST];
    return sfApiQuery;
}

- (SFApiQuery *)updateWithUrl:(NSURL *)url andShare:(SFShare *)share {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    sfApiQuery.responseClass = [SFShare class];
    sfApiQuery.isODataFeed = NO;
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery addIds:url];
    [sfApiQuery setBody:share];
    [sfApiQuery setHttpMethod:kSFHttpMethodPATCH];
    return sfApiQuery;
}

- (SFApiQuery *)deleteWithUrl:(NSURL *)url {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery addIds:url];
    [sfApiQuery setHttpMethod:kSFHttpMethodDELETE];
    return sfApiQuery;
}

- (SFApiQuery *)createAliasWithUrl:(NSURL *)url email:(NSString *)email andNotify:(NSNumber *)notify {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    sfApiQuery.responseClass = [SFShare class];
    sfApiQuery.isODataFeed = NO;
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery setAction:@"Alias"];
    [sfApiQuery addIds:url];
    [sfApiQuery addQueryString:@"email" withValue:email];
    [sfApiQuery addQueryString:@"notify" withValue:notify];
    [sfApiQuery setHttpMethod:kSFHttpMethodPOST];
    return sfApiQuery;
}

- (SFApiQuery *)createSendWithParameters:(SFShareSendParams *)parameters {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    sfApiQuery.responseClass = [SFShare class];
    sfApiQuery.isODataFeed = NO;
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery setAction:@"Send"];
    [sfApiQuery setBody:parameters];
    [sfApiQuery setHttpMethod:kSFHttpMethodPOST];
    return sfApiQuery;
}

- (SFApiQuery *)createRequestWithParameters:(SFShareRequestParams *)parameters {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery setAction:@"Request"];
    [sfApiQuery setBody:parameters];
    [sfApiQuery setHttpMethod:kSFHttpMethodPOST];
    return sfApiQuery;
}

- (SFApiQuery *)resendWithParameters:(SFShareResendParams *)parameters {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    sfApiQuery.responseClass = [SFShare class];
    sfApiQuery.isODataFeed = NO;
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery setAction:@"Resend"];
    [sfApiQuery setBody:parameters];
    [sfApiQuery setHttpMethod:kSFHttpMethodPOST];
    return sfApiQuery;
}

- (SFApiQuery *)uploadWithUrl:(NSURL *)url method:(NSString *)method raw:(NSNumber *)raw fileName:(NSString *)fileName fileSize:(NSNumber *)fileSize batchId:(NSString *)batchId batchLast:(NSNumber *)batchLast canResume:(NSNumber *)canResume startOver:(NSNumber *)startOver unzip:(NSNumber *)unzip tool:(NSString *)tool overwrite:(NSNumber *)overwrite title:(NSString *)title details:(NSString *)details isSend:(NSNumber *)isSend sendGuid:(NSString *)sendGuid opid:(NSString *)opid threadCount:(NSNumber *)threadCount responseFormat:(NSString *)responseFormat notify:(NSNumber *)notify clientCreatedDateUTC:(NSDate *)clientCreatedDateUTC clientModifiedDateUTC:(NSDate *)clientModifiedDateUTC andExpirationDays:(NSNumber *)expirationDays {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    sfApiQuery.responseClass = [SFUploadSpecification class];
    sfApiQuery.isODataFeed = NO;
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery setAction:@"Upload"];
    [sfApiQuery addIds:url];
    [sfApiQuery addQueryString:@"method" withValue:method];
    [sfApiQuery addQueryString:@"raw" withValue:raw];
    [sfApiQuery addQueryString:@"fileName" withValue:fileName];
    [sfApiQuery addQueryString:@"fileSize" withValue:fileSize];
    [sfApiQuery addQueryString:@"batchId" withValue:batchId];
    [sfApiQuery addQueryString:@"batchLast" withValue:batchLast];
    [sfApiQuery addQueryString:@"canResume" withValue:canResume];
    [sfApiQuery addQueryString:@"startOver" withValue:startOver];
    [sfApiQuery addQueryString:@"unzip" withValue:unzip];
    [sfApiQuery addQueryString:@"tool" withValue:tool];
    [sfApiQuery addQueryString:@"overwrite" withValue:overwrite];
    [sfApiQuery addQueryString:@"title" withValue:title];
    [sfApiQuery addQueryString:@"details" withValue:details];
    [sfApiQuery addQueryString:@"isSend" withValue:isSend];
    [sfApiQuery addQueryString:@"sendGuid" withValue:sendGuid];
    [sfApiQuery addQueryString:@"opid" withValue:opid];
    [sfApiQuery addQueryString:@"threadCount" withValue:threadCount];
    [sfApiQuery addQueryString:@"responseFormat" withValue:responseFormat];
    [sfApiQuery addQueryString:@"notify" withValue:notify];
    [sfApiQuery addQueryString:@"clientCreatedDateUTC" withValue:clientCreatedDateUTC];
    [sfApiQuery addQueryString:@"clientModifiedDateUTC" withValue:clientModifiedDateUTC];
    [sfApiQuery addQueryString:@"expirationDays" withValue:expirationDays];
    [sfApiQuery setHttpMethod:kSFHttpMethodPOST];
    return sfApiQuery;
}

- (SFApiQuery *)upload2WithUrl:(NSURL *)url uploadParams:(SFUploadRequestParams *)uploadParams andExpirationDays:(NSNumber *)expirationDays {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    sfApiQuery.responseClass = [SFUploadSpecification class];
    sfApiQuery.isODataFeed = NO;
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery setAction:@"Upload2"];
    [sfApiQuery addIds:url];
    [sfApiQuery addQueryString:@"expirationDays" withValue:expirationDays];
    [sfApiQuery setBody:uploadParams];
    [sfApiQuery setHttpMethod:kSFHttpMethodPOST];
    return sfApiQuery;
}

- (SFApiQuery *)getRedirectionWithUrl:(NSURL *)url {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    sfApiQuery.responseClass = [SFRedirection class];
    sfApiQuery.isODataFeed = NO;
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery setAction:@"Redirection"];
    [sfApiQuery addIds:url];
    [sfApiQuery setHttpMethod:kSFHttpMethodGET];
    return sfApiQuery;
}

- (SFApiQuery *)getInboxWithUserId:(NSString *)userId type:(NSString *)type andArchived:(NSNumber *)archived {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    sfApiQuery.responseClass = [SFShare class];
    sfApiQuery.isODataFeed = YES;
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery setAction:@"Inbox"];
    [sfApiQuery addActionIds:userId];
    [sfApiQuery addQueryString:@"type" withValue:type];
    [sfApiQuery addQueryString:@"archived" withValue:archived];
    [sfApiQuery setHttpMethod:kSFHttpMethodGET];
    return sfApiQuery;
}

- (SFApiQuery *)messageWithShareUrl:(NSURL *)shareUrl andAliasId:(NSString *)aliasId {
    SFApiQuery *sfApiQuery = [[SFApiQuery alloc] initWithClient:self.client];
    
    [sfApiQuery setFrom:kSFEntities_Shares];
    [sfApiQuery setAction:@"Recipients"];
    [sfApiQuery addIds:shareUrl];
    [sfApiQuery addActionIds:aliasId];
    [sfApiQuery addSubAction:@"Message"];
    [sfApiQuery setHttpMethod:kSFHttpMethodGET];
    return sfApiQuery;
}

@end