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

@synthesize activityDisplay, imageView;

-(void) displayAction: (NSString *) action
	   forApplication:(NSRunningApplication *) app {
	[self.activityDisplay setStringValue:
	 [NSString stringWithFormat: @"%@: %@", action, app.localizedName]];
	[self.imageView setImage:app.icon];
}	

-(void) applicationDidLaunch:(NSRunningApplication *)app {
	[self displayAction:@"Launched" forApplication: app];
}
	 
-(void) applicationDidTerminate:(NSRunningApplication *)app {
	[self displayAction:@"Terminated" forApplication: app];
}

/*
-(void) awakeFromNib {
	self.currentApp = [[CurrentApp alloc] init];
	self.currentApp.delegate = self;
	//[self registerNotifications];
}*/

@end
