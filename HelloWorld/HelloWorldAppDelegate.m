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

- (NSTextField *) labelWithText: (NSString *) labelText {
	NSRect labelFrame = NSMakeRect(20, 20, 540, 50);
	NSTextField *label = [[NSTextField alloc] initWithFrame:labelFrame];
	[label setEditable:NO];
	[label setSelectable:NO];
	[label setAlignment:NSCenterTextAlignment];
	[label setFont:[NSFont boldSystemFontOfSize:36]];
	[label setStringValue: labelText];
	return label;
}

- (Greeter *) getGreeterFor:(NSString *) personName {
	//return [[Greeter alloc] init];
	return [[Greeter alloc] initWithName: personName];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	Greeter *greeter = [self getGreeterFor: @"Martha"];
	NSLog(@"Greeter: %@", greeter);
	NSLog(@"This occured in %@ at line %d in file %s.",
		  NSStringFromSelector(_cmd), __LINE__, __FILE__);
	NSTextField *label = [self labelWithText:[greeter greeting]];
	[[self.window contentView] addSubview: label];
}

@end
