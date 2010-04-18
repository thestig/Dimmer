//
//  DimmerAppDelegate.m
//  Dimmer
//
//  Created by The Stig on 10-04-17.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "DimmerAppDelegate.h"

@implementation DimmerAppDelegate

@synthesize window;

- (void) applicationDidFinishLaunching: (UIApplication*) application
{    
	// Override point for customization after application launch
	[window makeKeyAndVisible];
}

- (void) dealloc
{
	[window release];
	[super dealloc];
}

@end
