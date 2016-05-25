//
//  SFSessionsEntity.h
//
//  Autogenerated by a tool.
//  Copyright (c) 2016 Citrix ShareFile. All rights reserved.
//

#import "SFODataEntityBase.h"


@interface SFSessionsEntity : SFODataEntityBase
{
}

/**
   @abstract Get Session
   Retrieve the current authentication session object. If the client is not authenticated,this operation will challenge for ShareFile authentication using a 401 response. This method willnot trigger the SAML authentication flow - use /Sessions/Login instead.@return The current authentication Context, based on the request SFAPI_AuthID Cookie
 */
- (SFApiQuery *)get;

/**
   @abstract Logout
   Logout the current session - invalidate the current Session ID*/
- (SFApiQuery *)delete;

/**
   @abstract Login
   API clients can provide ShareFile Authentication directly to any API operation using OAuth (Bearer).However, the client must know that the provided authentication type is supported on the API endpoint; and that SAML is not configured.This API provides a generic authentication routine for clients. It will challenge for ShareFile credentialspassing all supported authentication methods; redirect to the SAML IDP if configured to do so; and handlecertain HTTP headers, like device registration.If the client is already authenticated, the Session object is returned. If the client is not authenticated, andthe account is not configured for SAML, then the API will challenge for a local authentication. If the accountis configured for SAML, then the client will be redirected to the SAML IDP using the SAML passive flow - authenticationwill be performed at the IDP domain instead. The IDP callback will be on the API Acs, which will return a Sessionobject if authentication is accepted.The following HTTP Headers are also processed in this request, and stored with the Session object:X-SFAPI-Tool: Tool string (user-agent equivalent for ShareFile)X-SFAPI-ToolVersion: Tool Version stringX-SFAPI-UserInitiated: true or false, indicates whether this is an interactive login, or re-authenticationinitiated by the ToolX-SFAPI-DeviceId: Device Identifier. If set to 'register', a new DeviceID will be generated. This willeither create or associate an existing DeviceID to this session - indicates user is logging in using this DeviceX-SFAPI-DeviceName: Device Name. Only required/used when a registration process occurs.
   @param authmethod
   @param authcomparison
   @return A Session object, if authentication is successful
 */
- (SFApiQuery *)loginWithAuthmethod:(NSString *)authmethod andAuthcomparison:(NSString *)authcomparison;

/**
   @abstract Get Assertion Consumer Service. This is the IDP callback endpoint in SAML authentication
 */
- (SFApiQuery *)acs;
@end