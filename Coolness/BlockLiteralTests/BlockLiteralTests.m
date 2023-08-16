// Copyright (C) 2023 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>

@interface BlockLiteralTests : XCTestCase
@end

void SayHello(void) {
    printf("Hello!\n");
}

void PerformNTimes(int count, void (*thingToPerform)(void)) {
    for (int i = 0; i < count; i++) {
        thingToPerform();
    }
}

void PerformBlockNTimes(int count, void(^blockToPerform)(void)) {
    for (int i = 0; i < count; i++) {
        blockToPerform();
    }
}

@implementation BlockLiteralTests

- (void)testBlockLiteralSyntax {
    void (^myBlock)(void);
    const char *message = "sunny";
    
    myBlock = ^{
        printf("Hello from my block! The weather is %s\n", message);
    };
    
    myBlock();
    
    id foo = [myBlock copy];
    
    PerformBlockNTimes(3, myBlock);
}

- (void)testFunctionPointerSyntax {
    
    void (*myFunctionPointer)(void);
    
    myFunctionPointer = SayHello;
    
    myFunctionPointer();
    
    PerformNTimes(3, myFunctionPointer);
}

@end
