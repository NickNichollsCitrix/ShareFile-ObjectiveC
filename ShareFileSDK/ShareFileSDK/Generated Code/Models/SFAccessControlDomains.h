//
// SFAccessControlDomains.h
//
// Autogenerated by a tool
//  Copyright (c) 2016 Citrix ShareFile. All rights reserved.
//

#import "SFODataObject.h"


@interface SFAccessControlDomains : SFODataObject
{
}

/**
   Specifies that the list is interpreted as a list of allowed or disallowed domains
 */
@property (nonatomic, strong) NSString *AccessControlType;
/**
   A list of domain names
 */
@property (nonatomic, strong) NSArray *Domains;


@end
