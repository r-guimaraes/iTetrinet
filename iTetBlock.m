//
//  iTetBlock.m
//  iTetrinet
//
//  Created by Alex Heinz on 6/5/09.
//

#import "iTetBlock.h"

typedef char BLOCK[ITET_BLOCK_HEIGHT][ITET_BLOCK_WIDTH];

static BLOCK bI[2] = {
	{
		{0,0,0,0},
		{1,1,1,1},
		{0,0,0,0},
		{0,0,0,0}
	}, {
		{0,0,1,0},
		{0,0,1,0},
		{0,0,1,0},
		{0,0,1,0}
	}
};

static BLOCK bO[1] = {
	{
		{0,0,0,0},
		{0,2,2,0},
		{0,2,2,0},
		{0,0,0,0}
	}
};

static BLOCK bL[4] = {
	{
		{0,4,0,0},
		{0,4,0,0},
		{0,4,4,0},
		{0,0,0,0}
	}, {
		{0,0,0,0},
		{0,4,4,4},
		{0,4,0,0},
		{0,0,0,0}
	}, {
		{0,0,0,0},
		{0,4,4,0},
		{0,0,4,0},
		{0,0,4,0}
	}, {
		{0,0,0,0},
		{0,0,4,0},
		{4,4,4,0},
		{0,0,0,0}
	}
};

static BLOCK bJ[4] = {
	{
		{0,0,3,0},
		{0,0,3,0},
		{0,3,3,0},
		{0,0,0,0}
	}, {
		{0,0,0,0},
		{0,3,0,0},
		{0,3,3,3},
		{0,0,0,0}
	}, {
		{0,0,0,0},
		{0,3,3,0},
		{0,3,0,0},
		{0,3,0,0}
	}, {
		{0,0,0,0},
		{3,3,3,0},
		{0,0,3,0},
		{0,0,0,0}
	}
};

static BLOCK bS[2] = {
	{
		{0,1,0,0},
		{0,1,1,0},
		{0,0,1,0},
		{0,0,0,0}
	}, {
		{0,0,0,0},
		{0,0,1,1},
		{0,1,1,0},
		{0,0,0,0}
	}
};

static BLOCK bZ[2] = {
	{
		{0,0,5,0},
		{0,5,5,0},
		{0,5,0,0},
		{0,0,0,0}
	}, {
		{0,0,0,0},
		{5,5,0,0},
		{0,5,5,0},
		{0,0,0,0}
	}
};

static BLOCK bT[4] = {
	{
		{0,0,2,0},
		{0,2,2,0},
		{0,0,2,0},
		{0,0,0,0}
	}, {
		{0,0,0,0},
		{0,0,2,0},
		{0,2,2,2},
		{0,0,0,0}
	}, {
		{0,0,0,0},
		{0,2,0,0},
		{0,2,2,0},
		{0,2,0,0}
	}, {
		{0,0,0,0},
		{2,2,2,0},
		{0,2,0,0},
		{0,0,0,0}
	}
};

static BLOCK *blocks[ITET_NUM_BLOCK_TYPES] = {bI, bO, bL, bJ, bS, bZ, bT};
static int orientationCount[ITET_NUM_BLOCK_TYPES] = {2, 1, 4, 4, 2, 2, 4};

@implementation iTetBlock

+ (id)blockWithType:(iTetBlockType)t
	  orientation:(int)o
{
	return [[[iTetBlock alloc] initWithType:t
					    orientation:o] autorelease];
}

- (id)initWithType:(iTetBlockType)t
	 orientation:(int)o
{
	type = t;
	orientation = o;
	
	return self;
}

#pragma mark -
#pragma mark Accessors

- (char)cellAtRow:(int)row
	     column:(int)col
{
	return blocks[type][orientation][row][col];
}

@synthesize rowPos, colPos;

- (int)numOrientations
{
	return orientationCount[type];
}

@end
