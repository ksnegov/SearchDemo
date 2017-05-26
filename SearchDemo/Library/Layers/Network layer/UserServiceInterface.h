//
//  Service interface for working with users
//
//  Created by Konstantin Snegov on 26/05/2017.
//  Copyright © 2017 Konstantin Snegov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class User;

@protocol UserServiceInterface <NSObject>
/**
 Search users

 @param text search text
 @param completionHandler completion hadnler return users or error
 @return network request
 */
//- (id)searchUsersWithText:(NSString *)text completionHandler:(void(^)(NSArray <User *> *, NSError *error))completionHandler;
@end
