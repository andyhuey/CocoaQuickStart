//
//  FlashlightAppDelegate.h
//  Flashlight
//
//  Created by Andrew Huey on 2/26/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FlashlightAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

