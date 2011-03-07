//
//  IconView.m
//  HelloApplication
//
//  Created by Andrew Huey on 3/6/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import "IconView.h"


@implementation IconView

@synthesize alertColor, imageView, appName;

- (id)initWithFrame:(NSRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
	[self.alertColor set];
	[NSBezierPath strokeRect: frameRect];
	[self.imageView.image setSize: imageRect.size];
	
	[self.appName drawInRect:textRect withAttributes:textAttributes];
	
    // Drawing code here.
	/*NSRect innerRect = NSMakeRect(18, 42, 180, 180);
	[[NSColor blueColor] set];
	[NSBezierPath fillRect: innerRect];
	
	[[NSColor blackColor] set];
	[NSBezierPath setDefaultLineWidth:12];
	[NSBezierPath strokeRect: innerRect];*/
}

-(void) setupFrameRect {
	frameRect = NSMakeRect(18, 42, 180, 180);
	[NSBezierPath setDefaultLineWidth:12];
}	

-(void) setupImageView {
	imageRect = NSMakeRect(36, 66, 144, 144);
	self.imageView = [[NSImageView alloc] initWithFrame:imageRect];
	[self addSubview:self.imageView];
}	

-(void) setupTextView {
	textRect = NSMakeRect(36, 10, 144, 20);
	NSMutableParagraphStyle *par = [[NSMutableParagraphStyle alloc] init];
	[par setAlignment:NSCenterTextAlignment];
	textAttributes = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
					  [NSColor blueColor], NSForegroundColorAttributeName,
					  par, NSParagraphStyleAttributeName,
					  [NSFont boldSystemFontOfSize:12], NSFontAttributeName,
					  nil];
}

-(void) awakeFromNib {
	[self setupFrameRect];
	[self setupImageView];
	[self setupTextView];
}

@end
