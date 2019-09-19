//
//  AppDelegate.m
//  ContainerDemo
//
//  Created by JL on 2019/8/5.
//  Copyright © 2019 JL. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    if (@available(iOS 13.0, *)) {
//        if ([scene isKindOfClass:[UIWindowScene class]]) {
//            self.window = [[UIWindow alloc] initWithWindowScene:(UIWindowScene *)scene];
//        } else {
//            return;
//        }
//
//    } else {
//        // Fallback on earlier versions
//    }
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    ViewController *vc = [[ViewController alloc] init];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    return YES;
}


@end
