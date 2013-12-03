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

@interface TTTripStore () <TTRecorderDelegate>
{
    __weak TTRecorder *_recorder;
    NSMutableArray *_trips;
}

@end

@implementation TTTripStore

- (id)initWithRecorder:(TTRecorder *)recorder
{
    self = [super init];
    if (self) {
        _recorder = recorder;
        [_recorder setDelegate:self];
        _trips = [[NSMutableArray alloc] init];
    }
    return self;
}

- (int)count
{
    return [_trips count];
}

- (TTTrip *)tripAtIndex:(int)index
{
    return [_trips objectAtIndex:index];
}

- (void)didStopRecording
{
    NSString *name = [NSString stringWithFormat:@"Trip %d", [_trips count] + 1];
    [_trips addObject:[[TTTrip alloc] initWithName:name fromRecorder:_recorder]];
}

@end
