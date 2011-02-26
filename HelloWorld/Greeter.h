//
//  Greeter.h
//  HelloWorld
//
//  Created by Andrew Huey on 2/24/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Greeter : NSObject {
	NSString *name;
}
-(NSString *) greeting;
-(id) initWithName: (NSString *) newName;

@end
