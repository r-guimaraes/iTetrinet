//
//  iTetPreferencesController.h
//  iTetrinet
//
//  Created by Alex Heinz on 6/6/09.
//

#import <Cocoa/Cocoa.h>

@class iTetTheme;
@class iTetServerInfo;

extern NSString* const iTetThemeListPrefKey;
extern NSString* const iTetCurrentThemePrefKey;
extern NSString* const iTetServerListPrefKey;

extern NSString* const iTetCurrentThemeDidChangeNotification;

@interface iTetPreferencesController : NSObject
{
	NSMutableArray* themeList;
	iTetTheme* currentTheme;
	
	NSMutableArray* serverList;
}

+ (iTetPreferencesController*)preferencesController;

- (void)startObservingObject:(id)object;
- (void)stopObservingObject:(id)object;
- (void)startObservingServersInArray:(NSArray*)array;
- (void)stopObservingServersInArray:(NSArray*)array;

@property (readwrite, retain) NSMutableArray* themeList;
@property (readwrite, retain) iTetTheme* currentTheme;

- (NSUInteger)countOfServerList;
- (iTetServerInfo*)objectInServerListAtIndex:(NSUInteger)index;
- (void)insertObject:(iTetServerInfo*)object
 inServerListAtIndex:(NSUInteger)index;
- (void)removeObjectFromServerListAtIndex:(NSUInteger)index;
@property (readwrite, retain) NSMutableArray* serverList;

@end
