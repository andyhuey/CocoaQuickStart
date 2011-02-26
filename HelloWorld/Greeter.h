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
	NSInteger age;
	Greeter *buddy;
	BOOL upperCase;
}
-(NSString *) greeting;
-(id) initWithName: (NSString *) newName;

@property(copy) NSString *name;
@property(assign, readonly) NSInteger age;
@property(retain) Greeter *buddy;
@property(assign, getter=isUpperCase) BOOL upperCase;
@end
