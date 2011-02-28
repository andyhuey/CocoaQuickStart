//
//  MobileBrowserViewController.h
//  MobileBrowser
//
//  Created by Andrew Huey on 2/27/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MobileBrowserViewController : UIViewController 
<UITextFieldDelegate, UIWebViewDelegate> {
	UIWebView *webView;
	UITextField *address;
	UIBarButtonItem *backButton;
	UIBarButtonItem *forwardButton;
	UIActivityIndicatorView *activityView;
}

@property(nonatomic,retain) IBOutlet UIWebView *webView;
@property(nonatomic,retain) IBOutlet UITextField *address;
@property(nonatomic,retain) IBOutlet UIBarButtonItem *backButton;
@property(nonatomic,retain) IBOutlet UIBarButtonItem *forwardButton;
@property(nonatomic,retain) IBOutlet UIActivityIndicatorView *activityView;
@end

