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
}

@property(retain) NSMutableArray *runningApps;

@end
