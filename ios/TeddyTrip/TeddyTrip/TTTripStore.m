//
//  TTTripStore.m
//  TeddyTrip
//
//  Created by continuous integration on 03/12/13.
//
//

#import "TTTripStore.h"
#import "TTRecorder.h"

@interface TTTripStore () <TTRecorderDelegate>
{
    __weak TTRecorder *_recorder;
    int _count;
}

@end

@implementation TTTripStore

- (id)initWithRecorder:(TTRecorder *)recorder
{
    self = [super init];
    if (self) {
        _recorder = recorder;
        [_recorder setDelegate:self];
    }
    return self;
}

- (int)count
{
    return _count;
}

- (void)didStopRecording
{
    _count += 1;
}

@end
