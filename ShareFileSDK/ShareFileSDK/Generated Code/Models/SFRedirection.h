//
// SFRedirection.h
//
// Autogenerated by a tool
//  Copyright (c) 2016 Citrix ShareFile. All rights reserved.
//

#import "SFODataObject.h"

@class SFZone;

@interface SFRedirection : SFODataObject
{
}

@property (nonatomic, strong) NSString *Method;
@property (nonatomic, strong) NSString *Root;
@property (nonatomic, strong) SFZone *Zone;
@property (nonatomic, strong) NSObject *Domain;
@property (nonatomic, strong) NSURL *Uri;
@property (nonatomic, strong) NSURL *FormsUri;
@property (nonatomic, strong) NSURL *SessionUri;
@property (nonatomic, strong) NSURL *TokenUri;
@property (nonatomic, strong) NSNumber *SessionCheck;
@property (nonatomic, strong) NSString *Body;
@property (nonatomic, strong) NSNumber *Available;


@end
