//
//  TTLocationProvider.m
//  TeddyTrip
//
//  Created by continuous integration on 02/12/13.
//
//

#import <CoreLocation/CoreLocation.h>
#import "TTLocationProvider.h"

@interface TTLocationProvider () <CLLocationManagerDelegate>
{
    CLLocationManager *_locationManager;
}

@end

@implementation TTLocationProvider

- (id)init
{
    return [super init];
}

- (id)initWithLocationManager:(CLLocationManager *)locationManager
{
    self = [super init];
    if (self)
    {
        _locationManager = locationManager;
        [_locationManager setDelegate:self];
        [_locationManager startUpdatingLocation];
    }
    return self;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    if ([self delegate]) {
        [[self delegate] didReceiveLocation:[locations lastObject]];
    }
}

@end
