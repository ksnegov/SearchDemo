//
//  User.m
//  SearchDemo
//
//  Created by Konstantin Snegov on 26/05/2017.
//  Copyright © 2017 Konstantin Snegov. All rights reserved.
//

#import "User.h"

@implementation User
#pragma mark - Initializers
- (instancetype)initWithIdentifier:(NSUInteger)identifier login:(NSString *)login avatarPath:(NSString *)avatarPath {
    if (self = [super init]) {
        _identifier = identifier;
        _login = [login copy];
        _avatarPath = [avatarPath copy];
    }
    return self;
}

#pragma mark - NSObject
- (NSString *)debugDescription {
    return [NSString stringWithFormat:@"%lu %@", self.identifier, self.login];
}
@end
