//
//  ActivityController.h
//  HelloApplication
//
//  Created by Andrew Huey on 2/28/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class CurrentApp;

@interface ActivityController : NSObject {
	CurrentApp *currentApp;
}

@property CurrentApp *currentApp;

@end
