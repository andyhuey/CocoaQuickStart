//
//  Greeter.m
//  HelloWorld
//
//  Created by Andrew Huey on 2/24/11.
//  Copyright 2011 EVI. All rights reserved.
//

#import "Greeter.h"

@implementation Greeter

@synthesize name, age, today, upperCase;

-(NSString *) greeting {
	//return [[NSString alloc] initWithFormat:@"Hello, %@!", self.name];
	return [NSString stringWithFormat:@"Hello, %@!", self.name];
}

-(id) initWithName: (NSString *) newName {
	if (self = [super init]) {
		self.name = newName;
		self.upperCase = YES;
		self.today = [NSDate date];
	}
	return self;
}	

+(id) greeterWithName:(NSString *)newName {
	return [[[Greeter alloc] initWithName:newName] autorelease];
}

-(id) init {
	return [self initWithName: @"World"];
}

-(NSString *) description {
	return [NSString stringWithFormat:@"name: %@ \n created: %@",
			self.name, self.today];
}

-(void) dealloc {
	NSLog(@"in greeter dealloc.");
	self.name = nil;
	self.today = nil;
	[super dealloc];
}

@end
