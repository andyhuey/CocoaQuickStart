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

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	Greeter *host = [[Greeter alloc] initWithName:@"Monkey"];
	NSLog(@"Greeter: %@", host);
	
	/*Greeter *greeter = [self getGreeterFor: @"Martha"];
	NSLog(@"This occured in %@ at line %d in file %s.",
		  NSStringFromSelector(_cmd), __LINE__, __FILE__);
	[self setUpperCaseName: greeter];
	NSTextField *label = [self labelWithText:[greeter greeting]];
	[[self.window contentView] addSubview: label];*/
}

@end
