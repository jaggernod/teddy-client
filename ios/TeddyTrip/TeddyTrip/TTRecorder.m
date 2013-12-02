//
//  TTRecorder.m
//  TeddyTrip
//
//  Created by continuous integration on 01/12/13.
//
//

#import "TTRecorder.h"

@implementation TTRecorder
{
    BOOL _isRecording;
    NSMutableArray *_trace;
}

- (NSArray *)trace
{
    return _trace;
}

- (id)initWithLocationProvider:(TTLocationProvider *)locationProvider
{
    self = [super init];
    
    if (self)
    {
        _trace = [[NSMutableArray alloc] init];
        [locationProvider setDelegate:self];
    }
    return self;
}

- (BOOL)isRecording
{
    return _isRecording;
}

- (void)start
{
    if (!_isRecording) {
        _isRecording = YES;
        [_trace removeAllObjects];
        if ([self delegate]) {
            [[self delegate] didStartRecording];
        }
    }
}

- (void)stop
{
    if (_isRecording) {
        _isRecording = NO;
        if ([self delegate]) {
            [[self delegate] didStopRecording];
        }
    }
}

- (void)didReceiveLocation:(CLLocation*)location
{
    if (_isRecording)
    {
        [_trace addObject:location];
    }
}

@end
