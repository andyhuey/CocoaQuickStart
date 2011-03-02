//
//  ActivityController.m
//  HelloApplication
//
//  Created by Andrew Huey on 2/28/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import "ActivityController.h"
#import "CurrentApp.h"

@implementation ActivityController

@synthesize currentApp, activityDisplay;

-(void) applicationDidLaunch: (NSNotification *) notification {
	[self.activityDisplay setStringValue: @"Launched"];
	NSLog(@"Launched!");
}

-(void) applicationDidTerminate: (NSNotification *) notification {
	[self.activityDisplay setStringValue: @"Terminated"];
	NSLog(@"Terminated!");
}

-(void) setupNotification: (NSString *)notification withSelector: (SEL) methodName {
	[[NSNotificationCenter defaultCenter]
	 addObserver: self
	 selector: methodName
	 name: notification
	 object: nil];
}

-(void) registerNotifications {
	[self setupNotification: @"Launched"
			   withSelector: @selector(applicationDidLaunch:)];
	[self setupNotification: @"Terminated"
			   withSelector: @selector(applicationDidTerminate:)];
}

-(void) awakeFromNib {
	self.currentApp = [[CurrentApp alloc] init];
	[self registerNotifications];
}
@end
