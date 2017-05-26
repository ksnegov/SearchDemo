//
//  UserTests.m
//  SearchDemo
//
//  Created by Konstantin Snegov on 26/05/2017.
//  Copyright © 2017 Konstantin Snegov. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "User.h"

@interface UserTests : XCTestCase
@end

@implementation UserTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

#pragma mark - Initializers
- (void)testDesignatedInitializerShouldSetIdentifier {
    //given
    NSUInteger identifier = 42;
    //when
    User *user = [[User alloc] initWithIdentifier:identifier login:nil avatarPath:nil];
    //then
    XCTAssertEqual(identifier, user.identifier);
}

- (void)testDesignatedInitializerShouldSetLogin {
    //given
    NSString *login = @"testLogin";
    //when
    User *user = [[User alloc] initWithIdentifier:0 login:login avatarPath:nil];
    //then
    XCTAssertTrue([user.login isEqualToString:login]);
}

- (void)testDesignatedInitializerShouldSetAvatarPath {
    //given
    NSString *avatarPath = @"http://apple.com";
    //when
    User *user = [[User alloc] initWithIdentifier:0 login:nil avatarPath:avatarPath];
    //then
    XCTAssertTrue([user.avatarPath isEqualToString:avatarPath]);
}

#pragma mark - NSObject
- (void)testDebugDescriptionShouldContatinIdetifierWithLogin {
    //given
    NSUInteger identifier = 42;
    NSString *login = @"testLogin";
    NSString *description = @"42 testLogin";
    //when
    User *user = [[User alloc] initWithIdentifier:identifier login:login avatarPath:nil];
    //then
    XCTAssertTrue([[user debugDescription] isEqualToString:description]);
}
@end
