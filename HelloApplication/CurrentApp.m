//
//  CurrentApp.m
//  HelloApplication
//
//  Created by Andrew Huey on 2/28/11.
//  Copyright 2011 EVI. All rights reserved. 
//

#import "CurrentApp.h"

@implementation CurrentApp

@synthesize delegate, name;

-(void) respondToChange:(NSNotification *) notification {
	SEL methodName;
	if (notification.name == NSWorkspaceDidLaunchApplicationNotification) {
		methodName = @selector(applicationDidLaunch:);
	} else {
		methodName = @selector(applicationDidTerminate:);
	}
	if ([self.delegate respondsToSelector:methodName]) {
		self.name = [notification.userInfo objectForKey:@"NSApplicationName"];
		[self.delegate performSelector:methodName withObject:self];
	}
}

-(void) applicationDidLaunch: (NSNotification *) notification {
	[self respondToChange:notification];
}

-(void) applicationDidTerminate: (NSNotification *) notification {
	[self respondToChange:notification];
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
