//
//  ActivityController.h
//  HelloApplication
//
//  Created by Andrew Huey on 2/28/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ActivityMonitorDelegate.h"

@interface ActivityController : NSViewController 
	<ActivityMonitorDelegate, NSTableViewDelegate, NSTableViewDataSource> {
		NSMutableArray *runningApps;
		NSTableView *table;
		NSButton *deleteButton;
}

@property(retain) NSMutableArray *runningApps;
@property IBOutlet NSTableView *table;
@property IBOutlet NSButton *deleteButton;
-(IBAction) removeRow:(id)sender;
@end
