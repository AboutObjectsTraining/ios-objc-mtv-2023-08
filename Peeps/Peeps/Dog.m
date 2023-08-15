// Copyright (C) 2023 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "Dog.h"

@implementation Dog {
    NSString *_name;
}

- (id)copyWithZone:(NSZone *)zone {
    return [[[self class] alloc] init];
}

- (void)bark {
//    NSLog(@"Woof, woof!!!");
    printf("Woof, woof!!!\n");
}

- (void)growl {
    printf("Grrrr!!\n");
}

- (NSString *)name {
    NSLog(@"Accessing dog's name");
    return _name;
}
- (void)setName:(NSString *)newValue {
    NSLog(@"Setting dog's name");
    _name = [newValue copy];
}

@end
