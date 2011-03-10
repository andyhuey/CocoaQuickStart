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

@synthesize runningApps, table, deleteButton;

-(void) applicationDidLaunch:(NSRunningApplication *)app {
	[self.runningApps addObject:app];
	[table reloadData];
}
	 
-(void) applicationDidTerminate:(NSRunningApplication *)app {
	[self.runningApps removeObject: app];
	[table reloadData];
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView {
	return [runningApps count];
}

- (id)			tableView:(NSTableView *)aTableView 
objectValueForTableColumn:(NSTableColumn *)aTableColumn 
					  row:(NSInteger)rowIndex {
	return [[runningApps objectAtIndex: rowIndex] 
			valueForKey:[aTableColumn identifier]];
			//performSelector:NSSelectorFromString([aTableColumn identifier])];
}

-(void)tableViewSelectionDidChange:(NSNotification *)notification {
	[self.deleteButton setHidden:NO];
}

-(IBAction)removeRow:(id)sender {
	[self.runningApps removeObjectAtIndex: [self.table selectedRow]];
	[self.table deselectAll:nil];
	[self.table reloadData];
	[self.deleteButton setHidden:YES];
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
