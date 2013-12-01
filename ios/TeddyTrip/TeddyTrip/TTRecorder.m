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
}

- (BOOL)isRecording
{
    return _isRecording;
}

- (void)start
{
    _isRecording = YES;
}

@end
