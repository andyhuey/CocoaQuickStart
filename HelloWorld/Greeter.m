//
//  Greeter.m
//  HelloWorld
//
//  Created by Andrew Huey on 2/24/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import "Greeter.h"

@implementation Greeter

@synthesize name;
@synthesize age, buddy, upperCase;

-(NSString *) greeting {
	return [[NSString alloc] initWithFormat:@"Hello, %@!", self.name];
}

-(id) initWithName: (NSString *) newName {
	if (self = [super init]) {
		self.name = newName;
		self.upperCase = YES;
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
