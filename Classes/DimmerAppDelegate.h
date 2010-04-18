//
//  DimmerAppDelegate.h
//  Dimmer
//
//  Created by The Stig on 10-04-17.
//  Copyright The Stig 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DimmerAppDelegate : NSObject <UIApplicationDelegate> 
{
	UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

