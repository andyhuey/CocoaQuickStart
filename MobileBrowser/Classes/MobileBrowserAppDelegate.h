//
//  MobileBrowserAppDelegate.h
//  MobileBrowser
//
//  Created by Andrew Huey on 2/27/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MobileBrowserViewController;

@interface MobileBrowserAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MobileBrowserViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MobileBrowserViewController *viewController;

@end

