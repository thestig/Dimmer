//
//  DimmerAppDelegate.m
//  Dimmer
//
//  Created by The Stig on 10-04-17.
//  Copyright The Stig 2010. All rights reserved.
//

#import "DimmerAppDelegate.h"

@interface UIApplication(private)

- (void) setBacklightLevel: (float) level;
- (float) backlightLevel;

@end


@implementation DimmerAppDelegate

@synthesize window;

- (void) applicationDidFinishLaunching: (UIApplication*) application
{
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	UIApplication *app = [UIApplication sharedApplication];
	float curBrightness = 0.0;
	
	if ([app respondsToSelector: @selector(backlightLevel)])
		curBrightness = [app backlightLevel];

	if (curBrightness > 0.0)
	{
		[defaults setFloat: curBrightness forKey: @"brightness"];
		if ([app respondsToSelector: @selector(setBacklightLevel:)])
			[app setBacklightLevel: 0.0];
	}
	else
	{
		float savedBrightness = [defaults floatForKey: @"brightness"];
		if (savedBrightness > 0.0)
			if ([app respondsToSelector: @selector(setBacklightLevel:)])
				[app setBacklightLevel: savedBrightness];
	}

	[defaults synchronize];
	exit(0);
	//[window makeKeyAndVisible];
}

- (void) dealloc
{
	[window release];
	[super dealloc];
}

@end
