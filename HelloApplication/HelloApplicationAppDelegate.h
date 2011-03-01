//
//  HelloApplicationAppDelegate.h
//  HelloApplication
//
//  Created by Andrew Huey on 2/28/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface HelloApplicationAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
