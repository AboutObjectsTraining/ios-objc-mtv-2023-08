// Copyright (C) 2023 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>
#import <Peeps/Peeps.h>

@interface PeepsTests : XCTestCase
@end

@interface Person ()
- (void)growl;
@end

@implementation PeepsTests

- (void)testInitializePerson {
    Person *fred = [[Person alloc] init];
    NSLog(@"Fred's name: %@", [fred fullName]);
    
    [fred setFirstName:@"Frederick"];
    NSLog(@"Fred's name: %@", [fred fullName]);
    
    [fred setLastName:@"Smith"];
    NSLog(@"Fred's name: %@", [fred fullName]);
}

- (void)testCustomInitializer {
    Person *p1 = [[Person alloc] initWithFirstName:@"Fred"
                                             lastName:@"Smith"];
    NSLog(@"%@", p1);
    
    Person *p2 = [[Person alloc] initWithFirstName:@"Fred"
                                          lastName:@"Smith"
                                               age: 32];
    NSLog(@"%@", p2);
}

- (void)testFactoryMethod {
    Person *p = [Person personWithFirstName:@"Fred"
                                   lastName:@"Smith"
                                        age:33];
    NSLog(@"%@", p);
}

- (void)testDescribePerson {
    Person *fred = [[Person alloc] init];
    [fred setFirstName:@"Frederick"];
    [fred setLastName:@"Smith"];

    NSLog(@"Fred is: %@", fred);
}

- (void)testMakePersonBark {
    id fred = [[Person alloc] init];
    Dog *rover = [[Dog alloc] init];
    
    [fred setDog:rover];

    if ([fred respondsToSelector:@selector(bark)]) {
        [fred bark];
    }
    
    if ([fred respondsToSelector:@selector(growl)]) {
        [fred performSelector:@selector(growl)];
    }
}

- (void)testCopyMyDog {
    Dog *rover = [[Dog alloc] init];
    Dog *cloneOfRover = [rover copy];
    
    NSLog(@"%@", cloneOfRover);
}

- (void)testCloneOfPerson {
    Person *p = [Person personWithFirstName:@"Fred"
                                   lastName:@"Smith"
                                        age:33];
    Person *cloneOfP = [p copy];
    NSLog(@"Person: %@, clone of person: %@", p, cloneOfP);
}

- (void)testKVCSetter {
    Person *fred = [[Person alloc] init];
    Dog *rover = [[Dog alloc] init];
    
    fred.dog = rover;
//    [fred setDog:rover];
    
    [fred setValue:@"Rover" forKeyPath:@"dog.name"];
    
    NSLog(@"Dog's name is %@", [fred valueForKeyPath:@"dog.name"]);
}

@end
