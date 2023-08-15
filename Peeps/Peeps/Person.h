// Copyright (C) 2023 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <Foundation/Foundation.h>
#import <Peeps/Dog.h>

@interface Person : NSObject <NSCopying> {
@private
    NSString *_firstName;
    NSString *_lastName;
    NSInteger _age;
    
    Dog *_dog;
}

- (instancetype)initWithFirstName:(NSString *)aFirstName
                         lastName:(NSString *)aLastName;

- (instancetype)initWithFirstName:(NSString *)aFirstName
                         lastName:(NSString *)aLastName
                              age:(NSInteger)anAge;

+ (instancetype)personWithFirstName:(NSString *)aFirstName
                           lastName:(NSString *)aLastName
                                age:(NSInteger)anAge;

@property (copy, nonatomic) NSString *firstName;
@property (copy, nonatomic) NSString *lastName;
@property (readonly, nonatomic) NSString *fullName;
@property (assign, nonatomic) NSInteger age;
@property (strong, nonatomic) Dog *dog;

@end
