// Copyright (C) 2023 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>

@interface ObjC_ExampleTests : XCTestCase
@end


void Capitalize(char *word) {
    const char delta = 'a' - 'A';
    word[0] -= delta;
}

typedef struct {
    char *firstName;
    char *lastName;
    int age;
} Person;

@implementation ObjC_ExampleTests

- (void)testInitializePerson {
    Person fred = {
        .firstName = "Fred",
        .age = 42
    };
    
    printf("Fred's first name is %s, age is %d\n", fred.firstName, fred.age);
}

- (void)testCapitalizeHappyPath {
//    char text2[] = {
//        97, 98, 98, 0
//    };
    char text[] = "hello";
    
    printf("%s\n", text);
    Capitalize(text);
    printf("%s\n", text);
}

- (void)testCapitalizeNotSoHappyPath {
    char *text = "hello";
//    char *text2 = "hello";
    
    
    printf("%s\n", text);
    Capitalize(text);
    printf("%s\n", text);
}

@end
