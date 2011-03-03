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

@synthesize activityDisplay;

-(void) applicationDidLaunch:(CurrentApp *)app {
	[self.activityDisplay setStringValue:@"Launched!"];
}
	 
-(void) applicationDidTerminate:(CurrentApp *)app {
	[self.activityDisplay setStringValue:@"Terminated!"];
}

/*
-(void) awakeFromNib {
	self.currentApp = [[CurrentApp alloc] init];
	self.currentApp.delegate = self;
	//[self registerNotifications];
}*/

@end
