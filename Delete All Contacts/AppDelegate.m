//
//  AppDelegate.m
//  Delete All Contacts
//
//  Created by Daniel Tull on 13.10.2011.
//  Copyright (c) 2011 Daniel Tull. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	self.window.rootViewController = [[ViewController alloc] init];
    [self.window makeKeyAndVisible];
	
    return YES;
}

@end
