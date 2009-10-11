//
//  iTetSpecialsView.h
//  iTetrinet
//
//  Created by Alex Heinz on 6/5/09.
//
// A ThemedView subclass that draws the local player's list of specials.

#import <Cocoa/Cocoa.h>
#import "iTetThemedView.h"
#import "iTetLocalPlayerView.h"

@interface iTetSpecialsView : iTetThemedView <iTetLocalPlayerView>
{
	
}

- (iTetLocalPlayer*)ownerAsLocalPlayer;

@end
