//
//  TTTripStore.m
//  TeddyTrip
//
//  Created by continuous integration on 03/12/13.
//
//

#import "TTTripStore.h"
#import "TTTrip.h"
#import "TTRecorder.h"

@interface TTTripStore ()
{
    NSMutableArray *_trips;
}

@end

@implementation TTTripStore

- (id)init
{
    self = [super init];
    if (self) {
        _trips = [[NSMutableArray alloc] init];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didStopRecording:) name:kDidStopRecordingNotification object:nil];
    }
    return self;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (int)count
{
    return [_trips count];
}

- (TTTrip *)tripAtIndex:(int)index
{
    return [_trips objectAtIndex:index];
}

- (void)didStopRecording:(NSNotification*)note
{
    NSString *name = [NSString stringWithFormat:@"Trip %d", [_trips count] + 1];
    [_trips insertObject:[[TTTrip alloc] initWithName:name fromRecorder:[note object]] atIndex:0];
    [[NSNotificationCenter defaultCenter] postNotificationName:kDidAddNewTripNotification object:self];
}

@end
