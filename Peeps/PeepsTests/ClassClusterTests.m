// Copyright (C) 2023 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>

@interface ClassClusterTests : XCTestCase
@end

@implementation ClassClusterTests

- (void)testStringClassCluster {
    NSString *s1 = [NSString alloc];
    NSString *s2 = [NSString alloc];
    
    NSString *s3 = [s1 initWithFormat:@"%@ %@", @"Hello", @"World"];
    NSString *s4 = [s2 initWithString:@"Woohoo!"];
    
    NSLog(@"%@", s3);
    NSLog(@"%@", s4);
}


@end
