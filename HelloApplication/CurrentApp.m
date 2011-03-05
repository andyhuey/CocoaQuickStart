//
//  CurrentApp.m
//  HelloApplication
//
//  Created by Andrew Huey on 2/28/11.
//  Copyright 2011 EVI. All rights reserved. 
//

#import "CurrentApp.h"

@implementation CurrentApp

@synthesize delegate, app;

-(void) initializeMethodDictionary {
	delegateMethods = [[NSDictionary alloc] initWithObjectsAndKeys:
					   @"applicationDidLaunch:",
					   NSWorkspaceDidLaunchApplicationNotification,
					   @"applicationDidTerminate:",
					   NSWorkspaceDidTerminateApplicationNotification,
					   nil];
}

-(void) respondToChange:(NSNotification *) notification {
	SEL methodName;
	//NSLog(@"notification name=%@", [notification name]);
	methodName = NSSelectorFromString(
		[delegateMethods objectForKey:[notification name]]);
	/*if (notification.name == NSWorkspaceDidLaunchApplicationNotification) {
		methodName = @selector(applicationDidLaunch:);
	} else {
		methodName = @selector(applicationDidTerminate:);
	}*/
	//NSLog(@"methodName=%@", methodName);
	if ([self.delegate respondsToSelector:methodName]) {
		self.app = [notification.userInfo objectForKey:@"NSWorkspaceApplicationKey"];
		[self.delegate performSelector:methodName withObject:self.app];
	}
	NSLog(@"%@", runningApps);
}

-(void) applicationDidLaunch: (NSNotification *) notification {
	[runningApps setObject:[NSDate date] 
					forKey: [notification.userInfo objectForKey:@"NSApplicationName"]];
	[self respondToChange:notification];
}

-(void) applicationDidTerminate: (NSNotification *) notification {
	[runningApps removeObjectForKey:
	 [notification.userInfo objectForKey:@"NSApplicationName"]];
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
		[self initializeMethodDictionary];
		[self registerNotifications];
		runningApps = [[NSMutableDictionary alloc] initWithCapacity: 5];
	}
	return self;
}

@end
