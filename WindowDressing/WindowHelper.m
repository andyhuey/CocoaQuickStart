//
//  WindowHelper.m
//  WindowDressing
//
//  Created by Andrew Huey on 2/27/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import "WindowHelper.h"


@implementation WindowHelper

-(BOOL) windowShouldClose:(id)sender {
	[sender setBackgroundColor: [NSColor redColor]];
	return NO;
}

-(BOOL) windowShouldZoom:(NSWindow *)window toFrame:(NSRect)newFrame {
	[window setBackgroundColor: [NSColor greenColor]];
	return NO;
}

@end
