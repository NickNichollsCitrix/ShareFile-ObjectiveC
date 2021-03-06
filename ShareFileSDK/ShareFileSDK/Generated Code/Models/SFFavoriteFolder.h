//
// SFFavoriteFolder.h
//
// Autogenerated by a tool
//  Copyright (c) 2016 Citrix ShareFile. All rights reserved.
//

#import "SFODataObject.h"

@class SFUser;
@class SFItem;

@interface SFFavoriteFolder : SFODataObject
{
}

@property (nonatomic, strong) SFUser *User;
@property (nonatomic, strong) SFItem *Folder;
@property (nonatomic, strong) NSNumber *SortOrder;
@property (nonatomic, strong) NSString *FolderAlias;
@property (nonatomic, strong) NSString *FolderName;
@property (nonatomic, strong) NSString *Path;
@property (nonatomic, strong) NSNumber *FileSize;
@property (nonatomic, strong) NSDate *CreationDate;
@property (nonatomic, strong) NSString *CreatorFirstName;
@property (nonatomic, strong) NSString *CreatorLastName;


@end
