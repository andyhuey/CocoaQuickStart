//
//  BrowserController.h
//  SImpleBrowser
//
//  Created by Andrew Huey on 2/27/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import <Cocoa/Cocoa.h>
//#import <WebKit/WebKit.h>
@class WebView;

@interface BrowserController : NSObject {
	WebView *myWebView;
	NSTextField *address;
	NSButton *backButton;
	NSButton *forwardButton;
}

@property(assign) IBOutlet WebView *myWebView;
@property(assign) IBOutlet NSButton *backButton;
@property(assign) IBOutlet NSButton *forwardButton;
@property(assign) IBOutlet NSTextField *address;

-(IBAction) loadPreviousPage: (id)sender;
-(IBAction) loadNextPage: (id)sender;
-(IBAction) loadURLFrom: (id)sender;

@end
