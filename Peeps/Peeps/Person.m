// Copyright (C) 2023 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "Person.h"

@implementation Person

- (instancetype)initWithFirstName:(NSString *)aFirstName
                         lastName:(NSString *)aLastName {
    return [self initWithFirstName:aFirstName lastName:aLastName age:0];
}

// Designated initializer.
- (instancetype)initWithFirstName:(NSString *)aFirstName
                         lastName:(NSString *)aLastName
                              age:(NSInteger)anAge {
    self = [super init];
    if (self == nil) return nil;
    
    _firstName = [aFirstName copy];
    _lastName = [aLastName copy];
    _age = anAge;
    
    return self;
}

+ (instancetype)personWithFirstName:(NSString *)aFirstName
                           lastName:(NSString *)aLastName
                                age:(NSInteger)anAge {
    return [[self alloc] initWithFirstName:aFirstName lastName:aLastName age:anAge];
}



- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    return [self.class personWithFirstName:self.firstName
                                  lastName:self.lastName
                                       age:self.age];
}


- (id)forwardingTargetForSelector:(SEL)aSelector {
    if ([self.dog respondsToSelector:aSelector])
        return self.dog;
    
    return [super forwardingTargetForSelector:aSelector];
}

- (BOOL)respondsToSelector:(SEL)aSelector {
    if ([super respondsToSelector:aSelector]) return YES;
    
    return [self.dog respondsToSelector:aSelector];
}

- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@, age: %@", self.fullName, @(self.age)];
}

@end
