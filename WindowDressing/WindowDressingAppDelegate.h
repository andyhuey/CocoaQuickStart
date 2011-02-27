//
//  WindowDressingAppDelegate.h
//  WindowDressing
//
//  Created by Andrew Huey on 2/27/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface WindowDressingAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
