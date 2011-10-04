//
//  GoalsAppDelegate.h
//  Goals
//
//  Created by Kory Calmes on 10/4/11.
//  Copyright 2011 Calmes Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GoalsAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
