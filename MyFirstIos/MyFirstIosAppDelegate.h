//
//  MyFirstIosAppDelegate.h
//  MyFirstIos
//
//  Created by LCC on 11-9-17.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyViewController;

@interface MyFirstIosAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) MyViewController *myViewController;


@end
