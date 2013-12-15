//
//  AppDelegate.m
//  YouG
//
//  Created by Khan on 15/12/13.
//  Copyright (c) 2013 com.iKhanstudios. All rights reserved.
//

#import "AppDelegate.h"
#import <Parse/Parse.h>
#import "graphController.h"
#import "tabbarcontroller.h"
#import "PostIssue.h"

@implementation AppDelegate
@synthesize graphObj= _graphObj;
@synthesize tab = _tab ;
@synthesize post = _post;
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [Parse setApplicationId:@"CTJZZADhJcRu1sOAoL95i0OvUIgKKzcgCNg8qZjJ"
                  clientKey:@"CTJZZADhJcRu1sOAoL95i0OvUIgKKzcgCNg8qZjJ"];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    _graphObj = [[graphController alloc]initWithNibName:@"graphController" bundle:Nil];
    _post     = [[PostIssue alloc]initWithNibName:@"PostIssue" bundle:nil];

    
    _tab     = [[tabbarcontroller alloc]initWithNibName:@"tabbarcontroller" bundle:nil];
    NSArray *ary = [[NSArray alloc]initWithObjects:_graphObj,_post,nil];
    _tab.viewControllers = ary;
    // Override point for customization after application launch.
    self.window.rootViewController = _tab;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
