//
//  TTTrip.m
//  TeddyTrip
//
//  Created by continuous integration on 03/12/13.
//
//

#import "TTTrip.h"
#import "TTRecorder.h"

@interface TTTrip ()
{
    double _distanceMeters;
}

@end

@implementation TTTrip

- (id)initFromRecorder:(TTRecorder *)recorder
{
    self = [super init];
    if (self) {
        _distanceMeters = [recorder distanceMeters];
    }
    return self;
}

- (NSString *)name
{
    return @"Trip";
}

- (double)distanceMeters
{
    return _distanceMeters;
}

@end
