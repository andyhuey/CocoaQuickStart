//
//  ActivityController.h
//  HelloApplication
//
//  Created by Andrew Huey on 2/28/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ActivityMonitorDelegate.h"

//@class CurrentApp;

@interface ActivityController : NSObject <ActivityMonitorDelegate> {
	//CurrentApp *currentApp;
	NSTextField *activityDisplay;
}

//@property CurrentApp *currentApp;
@property IBOutlet NSTextField *activityDisplay;

@end
