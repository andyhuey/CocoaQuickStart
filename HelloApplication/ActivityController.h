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

@interface ActivityController : NSViewController <ActivityMonitorDelegate> {
	//CurrentApp *currentApp;
	NSTextField *activityDisplay;
	NSImageView *imageView;
}

//@property CurrentApp *currentApp;
@property IBOutlet NSTextField *activityDisplay;
@property IBOutlet NSImageView *imageView;
@end
