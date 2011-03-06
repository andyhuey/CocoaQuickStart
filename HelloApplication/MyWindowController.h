//
//  MyWindowController.h
//  HelloApplication
//
//  Created by Andrew Huey on 3/6/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class CurrentApp;
@class ActivityController;

@interface MyWindowController : NSWindowController {
	CurrentApp *currentApp;
	ActivityController *ac;
}

@property CurrentApp *currentApp;
@property ActivityController *ac;

@end
