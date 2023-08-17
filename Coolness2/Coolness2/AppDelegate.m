// Copyright (C) 2023 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "AppDelegate.h"

@implementation AppDelegate

- (UISceneConfiguration *)application:(UIApplication *)application
configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession
                              options:(UISceneConnectionOptions *)options
{
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration"
                                          sessionRole:connectingSceneSession.role];
}

// MARK: - Responder chain experiments

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"In %s", __func__);
    [UIApplication.sharedApplication sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
}

//- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    UITouch *touch = touches.anyObject;
//
//    CGPoint currLocation = [touch locationInView:nil];
//    CGPoint prevLocation = [touch previousLocationInView:nil];
//
//    CGFloat deltaX = currLocation.x - prevLocation.x;
//    CGFloat deltaY = currLocation.y - prevLocation.y;
//
//    touch.view.frame = CGRectOffset(touch.view.frame, deltaX, deltaY);
//}

@end
