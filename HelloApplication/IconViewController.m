//
//  IconViewController.m
//  HelloApplication
//
//  Created by Andrew Huey on 3/6/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import "IconViewController.h"
#import "IconView.h"

@implementation IconViewController

-(void) displayColor:(NSColor *) color for:(NSRunningApplication *) app {
	((IconView *)self.view).alertColor = color;
	((IconView *)self.view).imageView.image = app.icon;
	((IconView *)self.view).appName = app.localizedName;
	[self.view setNeedsDisplay:YES];
}

-(void)applicationDidLaunch:(NSRunningApplication *)app {
	[self displayColor: [NSColor greenColor] for:app];
	
}

-(void)applicationDidTerminate:(NSRunningApplication *)app {
	[self displayColor: [NSColor redColor] for:app];
}

@end
