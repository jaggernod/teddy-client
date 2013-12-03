//
//  TTTrip.h
//  TeddyTrip
//
//  Created by continuous integration on 03/12/13.
//
//

#import <Foundation/Foundation.h>

@class TTRecorder;

@interface TTTrip : NSObject

- (id)initFromRecorder:(TTRecorder*)recorder;

- (double)distanceMeters;

@end
