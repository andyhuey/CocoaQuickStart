//
//  MyWindowController.h
//  HelloApplication
//
//  Created by Andrew Huey on 3/6/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ActivityMonitorDelegate.h"

@class CurrentApp;

@interface MyWindowController : NSWindowController {
	CurrentApp *currentApp;
	NSViewController <ActivityMonitorDelegate> *ac;
}

@property CurrentApp *currentApp;
@property NSViewController <ActivityMonitorDelegate> *ac;

@end
