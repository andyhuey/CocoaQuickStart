//
//  HelloWorldAppDelegate.m
//  HelloWorld
//
//  Created by Andrew Huey on 2/23/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import "HelloWorldAppDelegate.h"
#import "Greeter.h"

@implementation HelloWorldAppDelegate

@synthesize window;

- (void) createLabel {
	NSRect labelFrame = NSMakeRect(20, 20, 540, 50);
	NSTextField *label = [[NSTextField alloc] initWithFrame:labelFrame];
	[label setEditable:NO];
	[label setSelectable:NO];
	[label setAlignment:NSCenterTextAlignment];
	[label setFont:[NSFont boldSystemFontOfSize:36]];
	
//	[label setStringValue:@"Hello, World!"];
//	[label setStringValue:[Greeter greeting]];
	
	Greeter *greeter = [[Greeter alloc] init];
	
	[[self.window contentView] addSubview:label];
	[label setStringValue:[greeter greeting]];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application 
	//NSLog(@"Hello, world!");
	
	[self createLabel];
}

@end
