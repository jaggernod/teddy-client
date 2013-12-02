//
//  TTMockLocationProvider.m
//  TeddyTrip
//
//  Created by continuous integration on 02/12/13.
//
//

#import "TTMockLocationProvider.h"

@implementation TTMockLocationProvider

- (void)addLocation:(CLLocation*)location
{
    if ([self delegate])
    {
        [[self delegate] didReceiveLocation:location];
    }
}

@end
