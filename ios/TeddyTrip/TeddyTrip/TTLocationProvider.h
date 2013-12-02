//
//  TTLocationProvider.h
//  TeddyTrip
//
//  Created by continuous integration on 02/12/13.
//
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@protocol TTLocationProviderDelegate <NSObject>

- (void)didReceiveLocation:(CLLocation*)location;

@end

@interface TTLocationProvider : NSObject

@property (weak) id<TTLocationProviderDelegate> delegate;

- (id)initWithLocationManager:(CLLocationManager *)locationManager;

@end
