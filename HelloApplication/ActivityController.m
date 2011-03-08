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

@synthesize runningApps;

-(void) applicationDidLaunch:(NSRunningApplication *)app {
}
	 
-(void) applicationDidTerminate:(NSRunningApplication *)app {
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView {
	return [runningApps count];
}

- (id)			tableView:(NSTableView *)aTableView 
objectValueForTableColumn:(NSTableColumn *)aTableColumn 
					  row:(NSInteger)rowIndex {
	return [[runningApps objectAtIndex: rowIndex] localizedName];
}

-(id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)nibBundle {
	if (self = [super initWithNibName:nibName bundle:nibBundle]) {
		self.runningApps = [NSMutableArray arrayWithCapacity:20];
		[self.runningApps 
		 addObjectsFromArray:[[NSWorkspace sharedWorkspace] runningApplications]];
	}
	return self;
}

@end
