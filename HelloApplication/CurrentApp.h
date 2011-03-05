//
//  CurrentApp.h
//  HelloApplication
//
//  Created by Andrew Huey on 2/28/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ActivityMonitorDelegate.h";

@interface CurrentApp : NSObject {
	NSObject <ActivityMonitorDelegate> *delegate;
	NSString *name;
}

@property IBOutlet NSObject <ActivityMonitorDelegate> *delegate;
@property(copy) NSString *name;

@end
