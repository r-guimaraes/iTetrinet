//
//  iTetQueryResponseChannelListEntryMessage.h
//  iTetrinet
//
//  Created by Alex Heinz on 3/19/11.
//  Copyright (c) 2011 Alex Heinz (xale@acm.jhu.edu)
//  This is free software, presented under the MIT License
//  See the included license.txt for more information
//

#import "iTetMessage.h"

@class iTetChannelListEntry;

#define iTetQueryResponseChannelListEntryMessageTokenCount	6

@interface iTetQueryResponseChannelListEntryMessage : iTetMessage
{
	iTetChannelListEntry* channelListEntry;
}

- (id)initWithChannelListEntry:(iTetChannelListEntry*)entry;

@property (readonly) iTetChannelListEntry* channelListEntry;

@end
