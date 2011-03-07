//
//  IconView.h
//  HelloApplication
//
//  Created by Andrew Huey on 3/6/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface IconView : NSView {
	NSColor *alertColor;
	NSRect frameRect;
	NSRect imageRect;
	NSImageView *imageView;
	NSString *appName;
	NSRect textRect;
	NSMutableDictionary *textAttributes;
}

@property(copy) NSColor *alertColor;
@property NSImageView *imageView;
@property(copy) NSString *appName;

@end
