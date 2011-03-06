//
//  HelloApplicationAppDelegate.m
//  HelloApplication
//
//  Created by Andrew Huey on 2/28/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import "HelloApplicationAppDelegate.h"
#import "MyWindowController.h"

@implementation HelloApplicationAppDelegate

//@synthesize window, ac, currentApp;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application 
	//self.window.contentView = ac.view;
	[[MyWindowController alloc] initWithWindowNibName:@"MainWindow"];
}

@end
