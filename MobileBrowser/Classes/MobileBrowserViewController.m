//
//  MobileBrowserViewController.m
//  MobileBrowser
//
//  Created by Andrew Huey on 2/27/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import "MobileBrowserViewController.h"

@implementation MobileBrowserViewController

@synthesize webView, address, backButton, forwardButton, activityView;

-(void)loadURLFromTextField {
	NSURL *url = [NSURL URLWithString: self.address.text];
	NSURLRequest *request = [NSURLRequest requestWithURL:url];
	[self.webView loadRequest:request];
	 }

-(void) resetButtons:(UIWebView *) theWebView {
	[self.backButton setEnabled:[theWebView canGoBack]];
	[self.forwardButton setEnabled:[theWebView canGoForward]];
}

-(void) disableWebView {
	self.webView.userInteractionEnabled = NO;
	self.webView.alpha = 0.25;
}
-(void) enableWebView {
	self.webView.userInteractionEnabled = YES;
	self.webView.alpha = 1.00;
}

-(void) webViewDidStartLoad:(UIWebView *)myWebView {
	[self disableWebView];
	[self.activityView startAnimating];
}

-(void) webViewDidFinishLoad:(UIWebView *)myWebView {
	[self enableWebView];
	[self.activityView stopAnimating];
	[self resetButtons:myWebView];
	//NSLog(@"in webViewDidFinishLoad");
}

-(void) textFieldDidBeginEditing:(UITextField *)textField {
	[self disableWebView];
}
	
-(BOOL) textFieldShouldReturn:(UITextField *)textField {
	[self loadURLFromTextField];
	[textField resignFirstResponder];
	[self enableWebView];
	return YES;
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	self.address.text = @"http://pragprog.com";
	[self loadURLFromTextField];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	self.address = nil;
	self.webView = nil;
	self.backButton = nil;
	self.forwardButton = nil;
	self.activityView = nil;
    [super dealloc];
}

@end
