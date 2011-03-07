//
//  MyWindowController.m
//  HelloApplication
//
//  Created by Andrew Huey on 3/6/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import "MyWindowController.h"
#import "IconViewController.h"
#import "CurrentApp.h"

@implementation MyWindowController

@synthesize ac, currentApp;

-(void) setupView {
	self.ac = [[IconViewController alloc]
			   initWithNibName:@"IconView" bundle:nil];
	self.currentApp = [[CurrentApp alloc] init];
	self.currentApp.delegate = self.ac;
	
	[self.window setContentSize:[self.ac.view bounds].size];
	self.window.contentView = self.ac.view;
	
	[self.ac applicationDidLaunch:[NSRunningApplication currentApplication]];
}

-(id) initWithWindowNibName:(NSString *)windowNibName {
	if (self = [super initWithWindowNibName:windowNibName]) {
		[self setupView];
		[self showWindow:self];
	}
	return self;
}

@end
