//
//  AppDelegate.m
//  SimpleSample-location_users-ios
//
//  Created by Alexey Voitenko on 24.02.12.
//  Copyright (c) 2012 QuickBlox. All rights reserved.
//

#import "AppDelegate.h"
#import "MapViewController.h"
#import "LatestCheckinsViewController.h"
#import "SplashViewController.h"
#import "LoginViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize tabBarController = _tabBarController;
@synthesize splashController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Set QuickBlox credentials (You must create application in admin.quickblox.com)
    [QBSettings setApplicationID:92];
    [QBSettings setAuthorizationKey:@"wJHdOcQSxXQGWx5"];
    [QBSettings setAuthorizationSecret:@"BTFsj7Rtt27DAmT"];
    [QBSettings setAccountKey:@"7yvNe17TnjNUqDoPwfqp"];
    
    // create two  UIViewControllers
    UIViewController *mapViewControleler, *latestCheckinsViewControleler;
    mapViewControleler = [[MapViewController alloc] initWithNibName:@"MapViewController" bundle:nil];
    latestCheckinsViewControleler = [[LatestCheckinsViewController alloc] initWithNibName:@"LatestCheckinsViewController" bundle:nil];
    
    // connect views to tabBar
    self.tabBarController = [[UITabBarController alloc] init];
    if(QB_SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"7.0")){
        self.tabBarController.tabBar.translucent = NO;
    }
    self.tabBarController.viewControllers = [NSArray arrayWithObjects:mapViewControleler, latestCheckinsViewControleler, nil];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Override point for customization after application launch.
    
    // show splash controller
    self.splashController = [[SplashViewController alloc] initWithNibName:@"SplashViewController" bundle:nil];
    
    self.window.rootViewController = (UIViewController*)self.splashController;
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
