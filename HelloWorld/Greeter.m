//
//  Greeter.m
//  HelloWorld
//
//  Created by Andrew Huey on 2/24/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import "Greeter.h"

@implementation Greeter

// getter and setter.
-(NSString *) name {
	return name;
}
-(void) setName:(NSString *) newName {
	name = newName;
}

-(NSString *) greeting {
	return [[NSString alloc] initWithFormat:@"Hello, %@!", [self name]];
	//return @"Hello, World!";
}

-(id) initWithName: (NSString *) newName {
	if (self = [super init]) {
		//name = newName;
		[self setName: newName];
	}
	return self;
}	

-(id) init {
	return [self initWithName: @"World"];
}

-(NSString *) description {
	return [[NSString alloc] initWithFormat:@"name: %@ \n created: %@",
			name, [NSDate date]];
}

@end
