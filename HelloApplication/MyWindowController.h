//
//  MyWindowController.h
//  HelloApplication
//
//  Created by Andrew Huey on 3/6/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class CurrentApp;
@class IconViewController;

@interface MyWindowController : NSWindowController {
	CurrentApp *currentApp;
	IconViewController *ac;
}

@property CurrentApp *currentApp;
@property IconViewController *ac;

@end
