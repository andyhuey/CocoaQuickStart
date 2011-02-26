//
//  Greeter.h
//  HelloWorld
//
//  Created by Andrew Huey on 2/24/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Greeter : NSObject {
	NSString *name;
	NSInteger age;
	//Greeter *buddy;
	NSDate *today;
	BOOL upperCase;
}
-(NSString *) greeting;
-(id) initWithName: (NSString *) newName;
+(id) greeterWithName: (NSString *) newName;

@property(copy) NSString *name;
@property(assign, readonly) NSInteger age;
//@property(retain) Greeter *buddy;
@property(copy) NSDate *today;
@property(assign, getter=isUpperCase) BOOL upperCase;
@end
