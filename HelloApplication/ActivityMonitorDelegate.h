//
//  ActivityMonitorDelegate.h
//  HelloApplication
//
//  Created by Andrew Huey on 3/2/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class ActivityController;
@class CurrentApp;

@protocol ActivityMonitorDelegate

//@optional
-(void) applicationDidLaunch: (CurrentApp *) app;
-(void) applicationDidTerminate: (CurrentApp *) app;

@end
