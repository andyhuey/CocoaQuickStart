//
//  CurrentApp.m
//  HelloApplication
//
//  Created by Andrew Huey on 2/28/11.
//  Copyright 2011 EVI. All rights reserved. 
//

#import "CurrentApp.h"

@implementation CurrentApp

@synthesize delegate;

-(void) applicationDidLaunch: (NSNotification *) notification {
	//if ([self.delegate respondsToSelector:@selector(applicationDidLaunch:)]) {
		//NSLog(@"delegate implements applicationDidLaunch:");
		[self.delegate applicationDidLaunch: self];
	//} else {
	//	NSLog(@"we're on our own.");
	//}
	
	/*NSLog(@"Launched %@", notification.name);
	[[NSNotificationCenter defaultCenter]
		postNotificationName: @"Launched" object: self];*/
}

-(void) applicationDidTerminate: (NSNotification *) notification {
	//if ([self.delegate respondsToSelector:@selector(applicationDidTerminate:)]) {
		[self.delegate applicationDidTerminate: self];
	//}
	
	/*NSLog(@"Terminated %@", notification.name);
	[[NSNotificationCenter defaultCenter]
		postNotificationName: @"Terminated" object: self];*/
}

-(void) setupNotification: (NSString *)notification withSelector: (SEL) methodName {
	[[[NSWorkspace sharedWorkspace] notificationCenter]
	 addObserver: self
	 selector: methodName
	 name: notification
	 object: nil];
}

-(void) registerNotifications {
	[self setupNotification: NSWorkspaceDidLaunchApplicationNotification
			   withSelector: @selector(applicationDidLaunch:)];
	[self setupNotification: NSWorkspaceDidTerminateApplicationNotification
			   withSelector: @selector(applicationDidTerminate:)];
	}

-(id) init {
	if (self = [super init]) {
		[self registerNotifications];
	}
	return self;
}

@end
