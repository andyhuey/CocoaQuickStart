//
//  HelloWorldProAppDelegate.h
//  HelloWorldPro
//
//  Created by Andrew Huey on 2/26/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface HelloWorldProAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
	NSTextField *textField;
	NSButton *button;
	BOOL isPersonalized;
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *textField;
@property (assign) IBOutlet NSButton *button;

-(IBAction) changeGreeting: (id)sender;

@end
