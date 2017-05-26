//
//  User model
//  SearchDemo
//
//  Created by Konstantin Snegov on 26/05/2017.
//  Copyright © 2017 Konstantin Snegov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
/**
 User identifier
 */
@property (nonatomic,assign,readonly) NSUInteger identifier;

/**
 User login
 */
@property (nonatomic,copy,readonly) NSString *login;

/**
 Full path to get user avatar image
 */
@property (nonatomic,copy,readonly) NSString *avatarPath;

/**
 Designated initiliazer

 @param identifier User identifier
 @param login User login
 @param avatarPath Full path to get user avatar image
 @return user
 */
- (instancetype)initWithIdentifier:(NSUInteger)identifier login:(NSString *)login avatarPath:(NSString *)avatarPath NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;

- (NSString *)debugDescription;
@end
