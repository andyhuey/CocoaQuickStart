//
//  ActivityController.m
//  HelloApplication
//
//  Created by Andrew Huey on 2/28/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import "ActivityController.h"
#import "CurrentApp.h"

@implementation ActivityController

@synthesize currentApp, activityDisplay;

-(void) awakeFromNib {
	self.currentApp = [[CurrentApp alloc] init];
}
@end
