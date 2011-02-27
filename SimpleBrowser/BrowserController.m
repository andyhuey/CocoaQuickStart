//
//  BrowserController.m
//  SImpleBrowser
//
//  Created by Andrew Huey on 2/27/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import "BrowserController.h"
#import <WebKit/WebKit.h>

@implementation BrowserController

@synthesize myWebView, backButton, forwardButton, address, progress;

-(void) resetButtons {
	[self.backButton setEnabled:[self.myWebView canGoBack]];
	[self.forwardButton setEnabled:[self.myWebView canGoForward]];
}

/*
-(IBAction) loadPreviousPage: (id)sender {
	//NSLog(@"loadPreviousPage:");
	[self.myWebView goBack:sender];
	//[self resetButtons];
}

-(IBAction) loadNextPage: (id)sender {
	[self.myWebView goForward:sender];
	//[self resetButtons];
}
  
-(IBAction) loadURLFrom: (id)sender {
	[self.myWebView takeStringURLFrom: sender];
	//[self resetButtons];
  }
*/

-(void) awakeFromNib {
	[self.address setStringValue:@"http://pragprog.com"];
	//[self loadURLFrom:self.address];
	[self.myWebView takeStringURLFrom: self.address];
}

// WebView delegate stuff:

-(void) webView:(WebView *)sender didReceiveTitle:(NSString *)title
	   forFrame:(WebFrame *)frame {
	[[sender window] setTitle:title];
}

- (void)webView:(WebView *)sender didFinishLoadForFrame:(WebFrame *)frame {
	[self.address setStringValue:[sender mainFrameURL]];
	[self resetButtons];
	[self.progress stopAnimation:self];
}

- (void)webView:(WebView *)sender didStartProvisionalLoadForFrame:(WebFrame *)frame {
	[self.progress startAnimation:self];
}

@end
