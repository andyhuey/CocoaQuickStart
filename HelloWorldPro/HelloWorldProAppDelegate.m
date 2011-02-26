//
//  HelloWorldProAppDelegate.m
//  HelloWorldPro
//
//  Created by Andrew Huey on 2/26/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import "HelloWorldProAppDelegate.h"

@implementation HelloWorldProAppDelegate

@synthesize window;
@synthesize textField;
@synthesize button;

-(void) personalize {
	self.window.backgroundColor = [NSColor redColor];
	[self.textField setStringValue:
	 [NSString stringWithFormat: @"Hello, %@!", NSFullUserName()]];
	isPersonalized = YES;
	[self.button setTitle: @"Generalize"];
}

-(void) generalize {
	self.window.backgroundColor = [NSColor greenColor];
	[self.textField setStringValue:@"Hello, World!"];
	//[sender setHidden:YES];
	isPersonalized = NO;
	[self.button setTitle:@"Personalize"];
}

-(IBAction) changeGreeting: (id)sender {
	/*if (isPersonalized) {
		[self generalize];
	}
	else {
		[self personalize];
	}*/
	[self performSelector:
	 NSSelectorFromString([[self.button title] lowercaseString])];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application 
	//self.window.backgroundColor = [NSColor greenColor];
	//[self.textField setStringValue:@"Hello, World!"];
	//isPersonalized = NO;
	[self generalize];
}

@end
