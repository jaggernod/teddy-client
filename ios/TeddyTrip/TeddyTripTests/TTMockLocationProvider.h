//
//  TTMockLocationProvider.h
//  TeddyTrip
//
//  Created by continuous integration on 02/12/13.
//
//

#import <CoreLocation/CoreLocation.h>
#import "TTLocationProvider.h"

@interface TTMockLocationProvider : TTLocationProvider

-(void)addLocation:(CLLocation*)location;

@end
