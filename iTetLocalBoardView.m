//
//  iTetLocalBoardView.m
//  iTetrinet
//
//  Created by Alex Heinz on 8/28/09.
//

#import "iTetLocalBoardView.h"
#import "iTetBlock.h"
#import "iTetLocalPlayer.h"

@implementation iTetLocalBoardView

- (id)initWithFrame:(NSRect)frame
{
	return [super initWithFrame:frame];
}

#pragma mark -
#pragma mark Drawing

- (void)drawRect:(NSRect)rect
{
	// Call the default iTetBoardView drawRect:
	[super drawRect:rect];
	
	// Get the view's owner as a local player
	iTetLocalPlayer* player = [self ownerAsLocalPlayer];
	
	// If we have no owner, we have nothing else to draw
	if (player == nil)
		return;
	
	// Get the player's active (falling) block
	iTetBlock* currentBlock = [player currentBlock];
	
	// If we have no block to draw, we're done
	if (currentBlock == nil)
		return;
	
	// FIXME: WRITEME: transform graphics context and draw falling block
}

#pragma mark -
#pragma mark Accessors

- (iTetLocalPlayer*)ownerAsLocalPlayer
{
	if (owner == nil)
		return nil;
	
	if ([owner isKindOfClass:[iTetLocalPlayer class]])
	    return (iTetLocalPlayer*)owner;
	
	NSLog(@"Warning: LocalBoardView owned by non-local player");
	return nil;
}

- (BOOL)acceptsFirstResponder
{
	return YES;
}

@end
